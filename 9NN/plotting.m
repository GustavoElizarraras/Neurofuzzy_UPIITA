function plotting(W1,W2,b1,b2)
X = 0:0.1:5;

    for i = 1:length(X)
        for j = 1:length(X)
      
        P = [X(i);X(j)];
      
        a1 = logsig(W1*P + b1);
        a2 = W2*a1 + b2;
      
            if( a2 >= 0 )
            plot(X(i) , X(j), '*b')
            else
            plot(X(i) , X(j), '*g')
            
            end
                 hold on 
        end
    end
scatter(2.5,1.5,'m','filled') 
hold on
scatter(3.5,3,'m','filled')
hold on
scatter(2,2,'m','filled')
hold on
scatter(2.5,0,'m','filled')
hold on
scatter(3,1,'k','filled')
hold on
scatter(3,2,'k','filled')
hold on
scatter(4,1,'k','filled')
hold on
scatter(4,2,'k','filled')
hold on