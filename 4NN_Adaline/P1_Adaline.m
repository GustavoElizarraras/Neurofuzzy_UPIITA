%% Neural Networks Practice 4-Adaline
%% Elizarraras Llanos Angel Gustavo
Epochs = 10;%I did not ask to the user because if i do, i can't publish with matlab.
alpha = 0.1;
%% Practice 1 
%Generating the variables for the neuron
P1 = [1;2];
P2 = [-1;2];
P3 = [0;-1];
Target = [1 -1 -1];%Targets 
P = [P1, P2, P3];%Points 
N=1;%Number of neurons
W = rand(N,2);%random weigth
b = rand(N,1);%random bias
Original_random_bias = b
W_Random = W
g = zeros(1,3);%This will serve to store every error value in the algortitm 
error = [];
%% Training 
    for i = 1:Epochs
        for j = 1:3
        
        a = W*P(:,j) + b;
        e = Target(j) - a;
        x = alpha*e*P(:,j)
        W = W + x';
        b = b + alpha*e;
        g(j) = e;
        end
        error = [error,g];
    end
%% Checking training 
b_after_training = b
W_after_training = W
X = -3:0.1:3;
figure(1)

    for i = 1:length(X)
        for j = 1:length(X)
      
            allP = [X(i);X(j)];
      
            C = W*allP + b;      
      
            if C >= 0
            plot(X(i),X(j),'*r')
            hold on
            else
            plot(X(i),X(j),'*b')    
            hold on
            end
      
        end
    end
    axis([-3 3 -3 3]);
    plot(X,Y,'Linewidth',2)
    
%% Getting the limit line
xpoint = -b / W(1);
ypoint = -b / W(2);
slope = -ypoint/xpoint;
Y = slope*X + ypoint;

mw = -1 / slope;
Yw = mw*X;

%Plotting the limit line and the weight
figure(2)
%Axis
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
hold on
grid on
axis([-3 3 -3 3]);
plot(X,Y,X,Yw, 'Linewidth',2)
legend({'Limit line','Weight'},'Location','northeast')
hold on
scatter(1,2)
hold on
scatter(-1,2)
hold on
scatter(0,-1)
hold on
figure(3)
error_axis = 1:length(error);
plot(error_axis,error, 'Linewidth',2)
title('Error en each iteration')
legend({'Error'},'Location','northeast')