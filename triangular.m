function[X,Y] = triangular(start, a, b, c, endlich, step)
X=start:step:endlich;
Y=zeros(1,endlich);
    for pos = 1:length(X)
        
        if (0<=a && X(pos)<=a)
        Y(pos)=0;
       
        elseif ((a < X(pos)) && (X(pos) <= b))
        Y(pos) = (X(pos)-a)/(b-a);
        
              
        disp('segundo if')
        disp(pos)
        disp(X(pos))
        
        elseif ((b < X(pos))  && (X(pos)<=c) )
        Y(pos)=(c-X(pos))/(c-b);
        disp('TERCER if')
        disp(X(pos))
        
        elseif ( c<X(pos) )
        Y(pos)=0; 
        disp('CUARTO if')  
        disp(X(pos))
        
        end
              
    end   
    
plot(X,Y)
end
