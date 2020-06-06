function plotting(W1,W2,b1,b2)
X = -8:0.2:8;

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
