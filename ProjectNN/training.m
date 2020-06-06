function [W1,W2,b1,b2] = training(alpha, epochs, num_patterns, p, W1,W2, b1,b2, target,F)
% Training with backpropagation
    for i = 1:epochs
        for j = 1:num_patterns
    P = [p{j}];   
            for k = 1:15
            a1 = logsig(W1*P(:,k) + b1);
            a2 = W2*a1 + b2;
            e = target(j) - a2;
            % df1 = (1 - a1).*a1;
            df2 = 1;
            s2 = -2*df2*e;
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
            F(13) = (1 - a1(13))*a1(13);
            F(14) = (1 - a1(14))*a1(14);
            F(15) = (1 - a1(15))*a1(15);
            D = diag(F); %Diag matrix
            s1 = D*W2'*s2;
            W2 = W2 - alpha*s2*a1';
            b2 = b2 - alpha*s2;
            W1 = W1 - alpha*s1*P(:,k)';
            b1 = b1 - alpha*s1;
            end
        end    
    end
end