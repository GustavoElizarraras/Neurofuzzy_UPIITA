function[X,Y] =  bell(a, b, c )
X=0:0.5:200;
Y=zeros(1,length(X));
% m=c+(a/2);
% n=c-(a/2);
    for pos = 1:length(X)
    Y(pos) = ( 1 / ( 1 + ( abs( (X(pos)-c)/a ) )^(2*b) )  );
%         if X(pos) == n || X(pos) == m
%            Y(pos)=0.7071;
%         elseif X(pos) == c
%            Y(pos) = 1;
%         end
    end

plot(X,Y,'m','Linewidth', 2)
% legend({'Bell'},'Location','northeast')
hold on
end