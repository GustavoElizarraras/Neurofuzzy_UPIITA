X=0:0.1:10;
A1=zeros(1,length(X));
A2=zeros(1,length(X));
B1=zeros(1,length(X));
B2=zeros(1,length(X));
C1=zeros(1,length(X));
C2=zeros(1,length(X));

%Generando funciones
    for i = 1:length(X)
        
    A1(i) = ( 1 / ( 1 + exp( 3*( (X(i) - 5) )  )));
    A2(i) = ( 1 / ( 1 + exp( -3*( (X(i) - 5) )  )));
    
    B1(i) = exp( -0.125*(X(i) - 2.5 )^2  );
    B2(i) = exp( -0.125*(X(i) - 7.5 )^2  );
    
    C1(i) = ( 1 / ( 1 + exp( 3*( (X(i) - 5) )  )));
    C2(i) = exp( -0.125*(X(i) - 7.5 )^2  );
    end
    
    figure(1)
    subplot(3,1,1)
    plot(X,A1,X,A2)
    subplot(3,1,2)
    plot(X,B1,X,B2)
    subplot(3,1,3)
    plot(X,C1,X,C2)
    
    figure(2)
    subplot(4,3,1)
    plot(X,A1, 4.5, A1(46), '+')
    subplot(4,3,4)
    plot(X,A1)
    subplot(4,3,7)
    plot(X,A2)
    subplot(4,3,10)
    plot(X,A2)
    
    subplot(4,3,2)
    plot(X,B1)
    subplot(4,3,5)
    plot(X,B1)
    subplot(4,3,8)
    plot(X,B2)
    subplot(4,3,11)
    plot(X,B2)
    
    subplot(4,3,3)
    plot(X,C1)
    subplot(4,3,6)
    plot(X,C1)
    subplot(4,3,9)
    plot(X,C2)
    subplot(4,3,12)
    plot(X,C2)