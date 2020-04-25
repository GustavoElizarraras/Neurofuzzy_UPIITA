%% Neural Networks Practice 1-One layer Perceptron
%% Elizarraras Llanos Angel Gustavo
%% Generating the variables for the neuron

P1 = [1;2];
P2 = [-1;2];
P3 = [0;-1];
Target = [1 0 0];%Targets 
P = [P1, P2, P3];%Points 
N=1;%Number of neurons
w = rand(2,N);%random weigth
W = w';
b = rand(N,1);%random bias
Original_random_bias = b
W_Random = W
Epochs = 10;%I did not ask to the user because if i do, i can't publish with matlab.

%% Training
    for i = 1:Epochs
        for j = 1:3
        
        a = hardlim(dot(W,P(:,j)) + b);
        e = Target(j) - a;
        x = e*P(:,j);
        W = W + x';
        b = b + e;
            
        end
    end
%% Checking training
b_after_training = b
W_after_training = W
X = -3:0.1:3;
figure(1)

    for i = 1:length(X)
        for j = 1:length(X)
      
            allP = [X(i);X(j)];
      
            C = hardlim(W*allP + b);      
      
            if C==1
            plot(X(i),X(j),'*r')
            hold on
            else
            plot(X(i),X(j),'*b')    
            hold on
            end
      
        end
    end
    
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

