A = [1,1,0.8,0.6,0.4,0.2,0];
B = [0,0.5,1,0.5,0,0,0];
X=0:6;


subplot(2,2,1)
plot(X,A,'b','Linewidth', 1.5)
hold on
plot(X,B,'r','Linewidth', 1.5)
plot(X,min(A,B),'k','Linewidth', 2)
legend({'A','B','A and B Intersection'},'Location','northeast')
title('Intersection')

subplot(2,2,2)
plot(X,A,'b','Linewidth', 1.5)
hold on
plot(X,B,'r','Linewidth', 1.5)
plot(X,max(A,B),'k','Linewidth', 2)
title('Union')
legend({'A','B','A and B Union'},'Location','northeast')


subplot(2,2,3)
plot(X,A,'b','Linewidth', 1.5)
hold on
plot(X,1-A,'k','Linewidth', 2)
title('Complement A')
legend({'A','A complement'},'Location','northeast')


subplot(2,2,4)
plot(X,B,'r','Linewidth', 1.5)
hold on
plot(X,1-B,'k','Linewidth', 2)
title('Complement B')
legend({'B','B complement'},'Location','northeast')

