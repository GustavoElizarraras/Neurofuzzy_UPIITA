%% Practice 6 Neural Networks - Multilayer Perceptron
%% Elizarraras Llanos Angel Gustavo

%Limit lines
X1 = 2.58:0.05:4.15;
LL_1 = 0.1*X1 + 2;
X2 = 2.58:0.05:3.34;
LL_2 = -3*X2 + 10;
X3 = 3.34:0.05:4.15;
LL_3 = 3*X3 - 10;

%Weights
Xw1 = 0:0.01:0.05;
w1 = -10*Xw1;
Xw2 = 0:0.1:0.5;
w2 = 0.3334*Xw2;
Xw3 = 0:-0.1:-0.5;
w3 = -0.3334*Xw3;

%Plotting
figure(1)
grid on
ax = gca;
ax.XAxisLocation = 'origin'; 
ax.YAxisLocation = 'origin'; 
box off
hold on
plot(X1,LL_1,X2,LL_2,X3,LL_3, 'Linewidth', 2.5)
hold on
plot(Xw1,w1,Xw2,w2,Xw3,w3, 'Linewidth', 2.5)
legend({'Limit line 1','Limit line 2','Limit line 3','W1','W2','W3'},'Location','southeast')

% Graphical Solution to the NN
figure(2)
WL2 = [1 1 1];
bL2 = -2.5;

W1 = [0.05 -0.5];
p1 = [2.58; 2.26];
b1 = -dot(W1,p1);
a1 = hardlim(W1*p1 + b1);

W2 = [0.5 0.1667];
p2 = [3.33; 0];
b2 = -dot(W2,p2);
a2 = hardlim(W2*p2 + b2);

W3 = [-0.5 0.1667];
p3 = [4.14; 2.52];
b3 = -dot(W3,p3);
a3 = hardlim(W3*p3 + b3);
x = -1:0.2:5;
y = -1:0.2:5;
plot(X1,LL_1,X2,LL_2,X3,LL_3, 'Linewidth', 2.5)
hold on
for i = 1:length(x)
    for j = 1:length(y)
   P = [x(i);y(j)];    
   %first neuron
   a12 = hardlim(W1*P+b1);
   %second neuron
   a22 = hardlim(W2*P+b2);
   %third neuron
   a32 = hardlim(W3*P+b3);
   %P for the output neuron
   A = [a12;a22;a32];
   %decision neuron
   aL2 = hardlim(WL2*A + bL2);
     if aL2 == 1
        plot(x(i) , y(j), '*b')
     else 
        plot(x(i) , y(j), '*r')   
     end
    end
    hold on
end
