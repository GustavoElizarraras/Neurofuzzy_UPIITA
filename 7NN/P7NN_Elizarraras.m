%% Practice 6 Neural Networks - Multilayer Perceptron
%% Elizarraras Llanos Angel Gustavo

% %Limit lines
% X1 = 2.58:0.05:4.15;
% LL_1 = 0.1*X1 + 2;
% X2 = 2.58:0.05:3.34;
% LL_2 = -3*X2 + 10;
% X3 = 3.34:0.05:4.15;
% LL_3 = 3*X3 - 10;
% 
% %Weights
% Xw1 = 0:0.01:0.05;
% w1 = -10*Xw1;
% Xw2 = 0:0.1:0.5;
% w2 = 0.3334*Xw2;
% Xw3 = 0:-0.1:-0.5;
% w3 = -0.3334*Xw3;
% 
% %Plotting
% figure(1)
% grid on
% ax = gca;
% ax.XAxisLocation = 'origin'; 
% ax.YAxisLocation = 'origin'; 
% box off
% hold on
% plot(X1,LL_1,X2,LL_2,X3,LL_3, 'Linewidth', 2.5)
% hold on
% plot(Xw1,w1,Xw2,w2,Xw3,w3, 'Linewidth', 2.5)
% legend({'Limit line 1','Limit line 2','Limit line 3','W1','W2','W3'},'Location','southeast')

% Graphical Solution to the NN
% Calculation of b's in the first layer
W1 = [1 -1.16];
p1 = [7.5; 18];
b1 = -dot(W1,p1);

W2 = [-1 -1.16];
p2 = [11; 15];
b2 = -dot(W2,p2);

W3 = [-1 .333];
p3 = [10; 12];
b3 = -dot(W3,p3);

W5 = [1 .333];
p5 = [4; 15];
b5 = -dot(W5,p5);

W4 = [0 12];
p4 = [5; 12];
b4 = -dot(W4,p4);

W6 = [1 -1.16];
p6 = [17.5; 18];
b6 = -dot(W6,p6);

W7 = [-1 -1.16];
p7 = [21; 15];
b7 = -dot(W7,p7);

W8 = [-1 .333];
p8 = [20; 12];
b8 = -dot(W8,p8);

W10 = [1 .333];
p10 = [14; 15];
b10 = -dot(W10,p10);

W9 = [0 12];
p9 = [14; 12];
b9 = -dot(W9,p9);

W11 = [-1 -0.60];
p11 = [12; 12];
b11 = -dot(W11,p11);

W12 = [12 0];
p12 = [12; 7];
b12 = -dot(W12,p12);

W13 = [0 7];
p13 = [15; 7];
b13 = -dot(W13,p13);

W14 = [1 0.5];
p14 = [6; 6];
b14 = -dot(W14,p14);

W15 = [0 4];
p15 = [7; 4];
b15 = -dot(W15,p15);

W16 = [0 -6];
p16 = [19; 6];
b16 = -dot(W16,p16);

W17 = [-1 0.5];
p17 = [18; 4];
b17 = -dot(W17,p17);

W18 = [1 0.5];
p18 = [12; 3];
b18 = -dot(W18,p18);

W19 = [0 -3];
p19 = [14; 3];
b19 = -dot(W19,p19);

W20 = [-1 0.5];
p20 = [13; 1];
b20 = -dot(W20,p20);

x = 0:0.2:25;
y = 0:0.2:25;
figure(1)
for i = 1:length(x)
    for j = 1:length(y)
 P = [x(i);y(j)];    
a1 = hardlim(W1*P + b1);
a2 = hardlim(W2*P + b2);
a3 = hardlim(W3*P + b3);
a4 = hardlim(W4*P + b4);
a5 = hardlim(W5*P + b5);
a6 = hardlim(W6*P + b6);
a7 = hardlim(W7*P + b7);
a8 = hardlim(W8*P + b8);
a9 = hardlim(W9*P + b9);
a10 = hardlim(W10*P + b10);
a11 = hardlim(W11*P + b11);
a12 = hardlim(W12*P + b12);
a13 = hardlim(W13*P + b13);
a14 = hardlim(W14*P + b14);
a15 = hardlim(W15*P + b15);
a16 = hardlim(W16*P + b16);
a17 = hardlim(W17*P + b17);
a18 = hardlim(W18*P + b18);
a19 = hardlim(W19*P + b19);
a20 = hardlim(W20*P + b20);

%Second layer

psecondlayer = [a1; a2; a3; a4; a5; a6; a7; a8; a9; a10; a11; a12; a13; a14; a15; a16; a17; a18; a19; a20];
W21 = [1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
W22 = [0 0 0 0 0 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0];
W23 = [0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0];
W24 = [0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0];
W25 = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1];

Wsecondlayer = [W21; W22; W23; W24; W25];

bsecondlayer = [-4.5; -4.5; -2.5; -3.5; -2.5];


a21 = hardlim(Wsecondlayer(1,:)*psecondlayer + bsecondlayer(1));
a22 = hardlim(Wsecondlayer(2,:)*psecondlayer + bsecondlayer(2));
a23 = hardlim(Wsecondlayer(3,:)*psecondlayer + bsecondlayer(3));
a24 = hardlim(Wsecondlayer(4,:)*psecondlayer + bsecondlayer(4));
a25 = hardlim(Wsecondlayer(5,:)*psecondlayer + bsecondlayer(5));

%Third Layer
pthirdlayer = [a21; a22; a23; a24; a25];
Wthirdlayer = [1 1 1 1 1];
bthirdlayer = -0.5;
athirdlayer = hardlim(Wthirdlayer*pthirdlayer + bthirdlayer);
    if athirdlayer == 1
     plot(x(i) , y(j), '*b')
    else
     plot(x(i) , y(j), '*k')
    end
    
    end
    hold on
end


