%% Elizarraras Llanos Angel Gustavo_______30/02/20 Class
%% Figure 1
newcolors = [0.40 0.30 0.90; 1 0.65 0.15];
colororder(newcolors)
%Generating limit lines
X = -5:0.2:5;
Y1 = 0.25*X+1;
Y2 = -X+2;
%Generating weight
Xw1=0:-0.01:-0.24;
Xw2=0:0.1:1;
W1 = -4*Xw1;
W2 = Xw2;
figure(1)
plot(X,Y1,X,Y2,Xw1,W1,Xw2,W2, 'Linewidth',2)
legend({'Limit Line 1','Limit Line 2','Weight 1','Weight 2'},'Location','northeast')
grid on
%Axis
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
box off
hold on
%Given data points
scatter(3,4,'k')
hold on
scatter(4,3,'k')
hold on
scatter(-4,3,'r')
hold on
scatter(-3,1,'r')
hold on
scatter(-3,-3,'b')
hold on
scatter(-4,-4,'b')
hold on
scatter(5,-1,'g')
hold on
scatter(4,-1,'g')


% Figure 2

figure(2)
plot(X,Y1,X,Y2,'Linewidth',2)
grid on
hold on
%Axis
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';

    for i = 1:length(X)
        for j = 1:length(X)
      W = [-0.5 2;0.5 0.5];
      P = [X(i);X(j)];
      b = [-2;-1];
      C = hardlim(W*P + b);      
      
        if( C(1) == 0 && C(2) == 0 )
            scatter(X(i) , X(j), 'b')
         
        elseif ( C(1) == 0 && C(2) == 1 )
            scatter(X(i) , X(j), 'g')
            
        elseif ( C(1) == 1 && C(2) == 1 )
            scatter(X(i) , X(j), 'k')
            
        elseif ( C(1) == 1 && C(2) == 0 )
            scatter(X(i) , X(j), 'r')
        end
        hold on
        end
    end