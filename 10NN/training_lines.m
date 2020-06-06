function [W1,W2,b1,b2] = training_lines(alpha, epochs, num_patterns, P, W1,W2, b1,b2, target,F)
% Training with backpropagation
    for i = 1:epochs
        for j = 1:num_patterns
        % a1 and a2
        a1 = logsig(W1*P(:,j) + b1);
        a2 = W2*a1 + b2;
        e = target(j) - a2;
        % df1 = (1 - a1).*a1;
        df2 = 1;
        s2 = -2*df2*e;
        %Values for the diagonal of the matrix
        F(1) = (1 - a1(1))*a1(1);
        F(2) = (1 - a1(2))*a1(2);
        F(3) = (1 - a1(3))*a1(3);
        F(4) = (1 - a1(4))*a1(4);
        F(5) = (1 - a1(5))*a1(5);
        F(6) = (1 - a1(6))*a1(6);
        F(7) = (1 - a1(7))*a1(7);
        F(8) = (1 - a1(8))*a1(8);
        F(9) = (1 - a1(9))*a1(9);
        F(10) = (1 - a1(10))*a1(10);
        F(11) = (1 - a1(11))*a1(11);
        F(12) = (1 - a1(12))*a1(12);
        D = diag(F); %Diag matrix
        s1 = D*W2'*s2; 
        %New weights and bias
        W2 = W2 - alpha*s2*a1';
        b2 = b2 - alpha*s2;
        W1 = W1 - alpha*s1*P(:,j)';
        b1 = b1 - alpha*s1;      
        end    
    end
end