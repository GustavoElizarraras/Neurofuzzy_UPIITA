%% Neural Networks Practice 5 - Adaline vs Perceptron
%% Elizarraras Llanos Angel Gustavo
% epochs to try
epochs12500 = 12500;
epochs3000 = 3000;

%Rabbits
P1 = [2.5 1.5];
P2 = [3.5 3];
P3 = [2 2];
P4 = [2.5 0];
%Bears
P5 = [3 1];
P6 = [3 2];
P7 = [4 1];
P8 = [4 2]; 
t = [-1 -1 -1 -1 1 1 1 1];%Adaline targets 
P = [P1; P2; P3; P4; P5; P6; P7; P8];%Points 
num_patterns = 8;
N=2;%Number of neurons
W1 = rand(N,2);%random weigth layer 1
b1 = rand(N,1);%random bias layer 1
W2 = rand(1,2);%random weigth layer 2
b2 = rand(1,1);%random bias layer 2
R = zeros(2,2);
F = zeros(2,2);
alpha1 = 0.05;
alpha2 = 0.2;
%% Training
[W11, W12, b11, b12] = training_lines(alpha1, epochs12500, num_patterns, P, W1, W2, b1, b2, t, F);
[W21, W22, b21, b22] = training_lines(alpha2, epochs3000, num_patterns, P, W1, W2, b1, b2, t, F);
%% Checkingmultiple trainings
figure(1)
plotting(W11, W12, b11, b12)

figure(2)
plotting(W21, W22, b21, b22)
