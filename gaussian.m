function [X,Y] = gaussian(c, sigma)
X=0:2*c;
Y=zeros(1,2*c);
a = c-(sigma/2);
b = c+(sigma/2);

    for pos = 1:length(X)
    Y(pos) = exp( -0.5 * ( (X(pos)-c)/sigma )^2 );
        if X(pos) == a || X(pos) == b
           Y(pos)=0.7071;
        elseif X(pos) == c
           Y(pos) = 1;
        end
    end
plot(X,Y)
end