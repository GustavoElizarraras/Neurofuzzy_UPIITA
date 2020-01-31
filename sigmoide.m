function[X,Y] = sigmoide(a,c)
X=0:(2*c);
Y=zeros(1,2*c);
    for pos = 1:length(X)
    Y(pos)=( 1 / (1+exp(-a*(X(pos)-c))));
        if X(pos) == c
        Y(pos)=0.5;
        end
    end    
    plot(X,Y)
end