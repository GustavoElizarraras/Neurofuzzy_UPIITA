X=0:0.1:10;
A=zeros(1,length(X));
B=zeros(1,length(X));
C=zeros(1,length(X));

%Generando funciones
    for i = 1:length(X)
    A(i)=(X(i)/(X(i)+2));
    B(i)=2^(-X(i));
    C(i)=( 1 / ((1+10*(X(i)-2)^2)) );
    end
    
%Complementos
Acom=1-A;
Bcom=1-B;
Ccom=1-C;

%Graficando los complementos en la figura 1

subplot(4,3,1)
plot(X,A,X,Acom,'Linewidth',1.5)
title('A Complement')
legend({'A','A complement'},'Location','northeast')
subplot(4,3,2)
plot(X,B,X,Bcom,'Linewidth',1.5)
title('B Complement')
legend({'B','B complement'},'Location','northeast')
subplot(4,3,3)
plot(X,C,X,Ccom,'Linewidth',1.5)
title('C Complement')
legend({'C','C complement'},'Location','northeast')

%Graficando la Union

subplot(4,3,4)
plot(X,A,'g','Linewidth', 1.5)
hold on
plot(X,B,'b','Linewidth', 1.5)
plot(X,max(A,B),'r','LineStyle','--','Linewidth', 1.5)
title('Union A and B')
legend({'A','B','A and B Union'},'Location','northeast')

subplot(4,3,5)

plot(X,A,'g','Linewidth', 1.5)
hold on
plot(X,C,'b','Linewidth', 1.5)
plot(X,max(A,C),'r','LineStyle','--','Linewidth', 1.5)
title('Union A and B')
legend({'A','C','A and C Union'},'Location','northeast')

subplot(4,3,6)
plot(X,C,'g','Linewidth', 1.5)
hold on
plot(X,B,'b','Linewidth', 1.5)
plot(X,max(C,B), 'r','LineStyle','--','Linewidth', 1.5)
title('Union A and B')
legend({'C','B','C and B Union'},'Location','northeast')


%Graficando la Intersección

subplot(4,3,7)
plot(X,A,'m','Linewidth', 1.5)
hold on
plot(X,B,'g','Linewidth', 1.5)
plot(X,min(A,B),'b','LineStyle','--','Linewidth', 1.5)
title('A and B Intersection')
legend({'A','B','A and B Intersection'},'Location','northeast')

subplot(4,3,8)

plot(X,A,'m','Linewidth', 1.5)
hold on
plot(X,C,'g','Linewidth', 1.5)
plot(X,min(A,C),'b','LineStyle','--','Linewidth', 1.5)
title('A and B Intersection')
legend({'A','C','A and C Intersection'},'Location','northeast')

subplot(4,3,9)
plot(X,C,'m','Linewidth', 1.5)
hold on
plot(X,B,'g','Linewidth', 1.5)
plot(X,min(C,B), 'b','LineStyle','--','Linewidth', 1.5)
title('A and B Intersection')
legend({'C','B','C and B Intersection'},'Location','northeast')

%Generando los valores de las Leyes de Morgan
Morg1 = 1 - (min(A,Ccom));
Morg2 = 1 - (min(Acom,Ccom));
Morg3 = 1 - (max(A,C));

%Graficando las leyes de Morgan
subplot(4,3,10)
plot(X,A,'c','Linewidth', 1.5)
hold on
plot(X,Ccom,'r','Linewidth', 1.5)
plot(X,Morg1,'k','LineStyle','--','Linewidth', 1.5)
title('Morgan Law exercice 1')
legend({'A','Ccom','Morg A,Ccom'},'Location','northeast')

subplot(4,3,11)

plot(X,B,'c','Linewidth', 1.5)
hold on
plot(X,C,'r','Linewidth', 1.5)
plot(X,Morg2,'k','LineStyle','--','Linewidth', 1.5)
title('Morgan Law exercice 2')
legend({'B','C','Morgan B,C'},'Location','northeast')

subplot(4,3,12)
plot(X,A,'c','Linewidth', 1.5)
hold on
plot(X,C,'r','Linewidth', 1.5)
plot(X,Morg3, 'k','LineStyle','--','Linewidth', 1.5)
title('Morgan Law exercice 3')
legend({'A','C','Morgan C,B'},'Location','northeast')
