function [W1,W2,b1,b2] = training_lines(alpha, epochs, num_patterns, P, W1,W2, b1,b2, target,F)
% Training with backpropagation
    for i = 1:epochs
        for j = 1:num_patterns
       
    a1 = logsig(W1*P(j,:)' + b1);
    a2 = W2*a1 + b2;
    e = target(j) - a2;
    % df1 = (1 - a1).*a1;
    df2 = 1;
    s2 = -2*df2*e;
    F(1) = (1 - a1(1))*a1(1);
    F(4) = (1 - a1(2))*a1(2);
    s1 = F*W2'*s2;
    W2 = W2 - alpha*s2*a1';
    b2 = b2 - alpha*s2;
    W1 = W1 - alpha*s1*P(j,:);
    b1 = b1 - alpha*s1;   
        end    
    end
end