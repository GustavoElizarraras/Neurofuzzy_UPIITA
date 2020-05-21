function [err, W, b, Y, Yw] = training_lines(alpha, epochs, num_patterns, P, W, b, target)
g = zeros(1,8); 
err = [];
X = 0:0.1:6;
% Y = zeros(1,length(X));
% Yw = zeros(1,length(X));
% Training
if alpha == 1
    for i = 1:epochs
        for j = 1:num_patterns
        
        a = hardlim(W*P(j,:)' + b);
        e = target(j) - a;
        x = alpha*e*P(j,:);
        W = W + x;
        b = b + alpha*e;
        g(j) = e;    
        end
        err = [err,g];
    end
else
      for i = 1:epochs
        for j = 1:num_patterns
        
        a = W*P(j,:)' + b;
        e = target(j) - a;
        x = alpha*e*P(j,:);
        W = W + x;
        b = b + alpha*e;
        g(j) = e;    
        end
        err = [err,g];
      end
end    
    
% Getting the limit line
xpoint = -b / W(1);
ypoint = -b / W(2);
slope = -ypoint/xpoint;
Y = slope*X + ypoint;
mw = -1 / slope;
Yw = mw*X;
end