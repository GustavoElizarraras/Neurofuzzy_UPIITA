function[X,Y] = sigmoide(a,c)
X=0:0.5:200;
Y=zeros(1,length(X));
    for pos = 1:length(X)
    Y(pos)=( 1 / (1+exp(-a*(X(pos)-c) ) ));
%         if X(pos) == c
%         Y(pos) = 0.5;
%         end
    end    
    plot(X,Y,'b','Linewidth', 2)
%     legend({'Sigmoid'},'Location','northeast')
hold on
end