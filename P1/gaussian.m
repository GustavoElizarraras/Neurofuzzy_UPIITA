function [X,Y] = gaussian(c, sigma)
X=0:0.5:200;
Y=zeros(1,200);
% a = c-(sigma/2);
% b = c+(sigma/2);

    for pos = 1:length(X)
    Y(pos) = exp( -0.5 * ( (X(pos)-c)/sigma )^2 );
%         if X(pos) == a || X(pos) == b
%            Y(pos)=0.7071;
%         elseif X(pos) == c
%            Y(pos) = 1;
%         end
    end
plot(X,Y,'r','Linewidth', 2)
hold on
end