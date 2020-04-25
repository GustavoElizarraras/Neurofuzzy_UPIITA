%% Elizarraras Llanos Angel Gustavo_______27/02/20 Class
%% Figure 1
newcolors = [0.40 0.30 0.90; 1 0.65 0.15];
colororder(newcolors)
%Generating f(x) -limit line-
XLL = -4:0.1:4;
YLL = (-2/3)*XLL+2;
%Generating weight
XW = 0:0.01:0.93;
YW = 1.5*XW;
figure(1)
plot(XLL,YLL,XW,YW, 'Linewidth',2)
legend({'Limit Line','Wight',},'Location','northeast')
grid on
%Axis
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
box off
hold on
%Data points
scatter(2,2,'k')
hold on
scatter(0.5,0.5,'k')
hold on
scatter(3,1,'k')
%% Figure 2

figure(2)
plot(XLL,YLL, 'Linewidth',2)
grid on
hold on
%Axis
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';

    for i = 1:150
    %Generating data points
    randX = -4 + 8.*rand(1,1);
    randY = -4 + 8.*rand(1,1);
    
      W = [0.2 0.3];
      P = [randX;randY];
      C = W*P - 0.6;
      
      if hardlim(C)==1
      scatter(randX,randY,'r')
      hold on
      else
      scatter(randX,randY,'b')    
      hold on
      end
    end


