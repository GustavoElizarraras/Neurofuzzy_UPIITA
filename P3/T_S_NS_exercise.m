X=0:1:5;
A=[1,0.9,0.7,0.4,0.1,0];
B=[0,0,0.3,0.6,0.9,1];
Tdp=zeros(1,length(X));
Sds=zeros(1,length(X));
 
% First 3 T-norm operations
Tmin = min(A,B);
Tap = A.*B;
Tbp = max(0,(A+B-1));

% First 3 T-norm operations
Smax = max(A,B);
Sas = (A+B)-(A.*B);
Sbs = min(1,(A+B));

% Drastic product 
 for i = 1:length(X)
        if B(i) == 1
        Tdp(i) = A(i);
        elseif A(i) == 1
        Tdp(i) = B(i);
        elseif A(i) == 1 && B(i) == 1
        Tdp(i) = 1;
        elseif A(i) < 1 && B(i) < 1
        Tdp(i)=0;    
        end
 end

% Drastic Sum
 for i = 1:length(X)
        if B(i) == 0
        Sds(i)=A(i);
        elseif A(i) == 0
        Sds(i)=B(i);
        elseif A(i) == 0 && B(i) == 0
        Sds(i)=0;
        elseif A(i) > 0 && B(i) > 0
        Sds(i)=1;    
        end
end

%Graficando T-norm
subplot(4,2,1)
plot(X,A,'c',X,B,'g','Linewidth',3)
hold on
plot(X,Tmin,'k','Linewidth',1.5)
title('Minimum')
legend({'A','B','Minimum'},'Location','northeast')

subplot(4,2,3)
plot(X,A,'c',X,B,'g','Linewidth',3)
hold on
plot(X,Tap,'k','Linewidth',2)
title('Algebraic Product')
legend({'A','B','Tap'},'Location','northeast')

subplot(4,2,5)
plot(X,A,'c',X,B,'g','Linewidth',3)
hold on
plot(X,Tbp,'k','Linewidth',1.5)
title('Bound Product')
legend({'A','B','Tbp'},'Location','northeast')

subplot(4,2,7)
plot(X,A,'c',X,B,'g','Linewidth',3)
hold on
plot(X,Tdp,'k','Linewidth',1.5)
title('Drastic Product')
legend({'A','B','Tdp'},'Location','northeast')

%Graficando S-norm
subplot(4,2,2)
plot(X,A,'r',X,B,'b','Linewidth',3)
hold on
plot(X,Smax,'k','Linewidth',1.5)
title('Maximum')
legend({'A','B','Smax'},'Location','northeast')

subplot(4,2,4)
plot(X,A,'r',X,B,'b','Linewidth',3)
hold on
plot(X,Sas,'k','Linewidth',2)
title('Algebraic Sum')
legend({'A','B','Sas'},'Location','northeast')

subplot(4,2,6)
plot(X,A,'r',X,B,'b','Linewidth',3)
hold on
plot(X,Sbs,'k','Linewidth',1.5)
title('Bound Sum')
legend({'A','B','Sbs'},'Location','northeast')

subplot(4,2,8)
plot(X,A,'r',X,B,'b','Linewidth',3)
hold on
plot(X,Sds,'k','Linewidth',1.5)
title('Drastic Sum')
legend({'A','B','Sds'},'Location','northeast')