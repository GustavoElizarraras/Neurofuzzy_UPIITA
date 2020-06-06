%% Neural Networks Practice 10 - Heart Shape
%% Elizarraras Llanos Angel Gustavo
%% Generating the variables for the neuron
epochs = 10000;%I did not ask to the user because if i do, i can't publish with matlab.
% alpha = 0.1;
% Proposed points
P1 = [2; 3];
P2 = [5; 2];
P3 = [6; 0];
P4 = [5; -2];
P5 = [4; -4];
P6 = [2; -6];
P7 = [0; -7];
P8 = [-2; -6];
P9 = [-4; -4];
P10 = [-5; -2];
P11 = [-6; 0];
P12 = [-5; 2];
P13 = [-2; 3];
P14 = [0; 1];
P15 = [-4; 1];
P16 = [-2; 1];
P17 = [-3; 0];
P18 = [-2; -1];
P19 = [0; 1];
P20 = [4; -1];
P21 = [4; 1];
P22 = [2; 1];
P23 = [3; 0];
P24 = [2; -1];
P25 = [0; -2];
P26 = [-3; -2];
P27 = [3; -2];
P28 = [-3; -3];
P29 = [0; 1];
P30 = [3; -3];
P31 = [-1; -4];
P32 = [1; -4];
P33 = [0; -5];
P34= [0; -6];
P35 = [0; 3];
P36 = [-2; 6];
P37 = [2; 6];
P38 = [-4; 5];
P39 = [4; 5];
P40 = [-6; 6];
P41 = [6; 6];
P42 = [-8; 0];
P43 = [8; 0];
P44 = [-8; -3];
P45 = [8; -3];
P46 = [-7; -6];
P47 = [7; -6];
P48 = [-6; -8];
P49 = [-3; -8];
P50 = [3; -8];
P51 = [0; -9];
P52 = [0; 6];
P53 = [10; 0];
P54 = [-9; -4];
P55 = [-10; 0];
P56 = [9; 4];
P57 = [3; 7];
P58 = [-3; 7];
P59 = [-4; -8];
P60 = [4; -8];
P61 = [0; 6];
P62 = [0; -11];
P63 = [-1; 5];
P64 = [1; 5];
P65 = [0; 2];
P66 = [0; 2.5];

t = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ...
     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ...
     -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 ...
     -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1];%targets 
P = [P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 P11 P12 P13 P14 P15 P16 P17 ...
     P18 P19 P20 P21 P22 P23 P24 P25 P26 P27 P28 P29 P30 P31 P32 P33 P34 ...
     P35 P36 P37 P38 P39 P40 P41 P42 P43 P44 P45 P46 P47 P48 P49 P50 P51 P52 ...
     P53 P54 P55 P56 P57 P58 P59 P60  P61 P62 P63 P64 P65 P66];%Points 
num_patterns = 66;
N=12;%Number of neurons
W1 = rand(N,2);%random weigth layer 1
b1 = rand(N,1);%random bias layer 1
W2 = rand(1,N);%random weigth layer 2
b2 = rand(1,1);%random bias layer 2
F = zeros(1,N);
%% Calling the Training Function 
[W11, W12, b11, b12] = training_lines(0.005, 4800, num_patterns, P, W1, W2, b1, b2, t, F);
[W21, W22, b21, b22] = training_lines(0.005, 4900, num_patterns, P, W1, W2, b1, b2, t, F);
[W31, W32, b31, b32] = training_lines(0.005, 4400, num_patterns, P, W1, W2, b1, b2, t, F);
[W41, W42, b41, b42] = training_lines(0.005, 4100, num_patterns, P, W1, W2, b1, b2, t, F);
[W51, W52, b51, b52] = training_lines(0.005, 5200, num_patterns, P, W1, W2, b1, b2, t, F);
[W61, W62, b61, b62] = training_lines(0.005, 5550, num_patterns, P, W1, W2, b1, b2, t, F);
[W71, W72, b71, b72] = training_lines(0.005, 5800, num_patterns, P, W1, W2, b1, b2, t, F);
[W81, W82, b81, b82] = training_lines(0.005, 5150, num_patterns, P, W1, W2, b1, b2, t, F);
%% Plotting
figure(1)
plotting(W11, W12, b11, b12)
figure(2)
plotting(W21, W22, b21, b22)
figure(3)
plotting(W31, W32, b31, b32)
figure(4)
plotting(W41, W42, b41, b42)
figure(5)
plotting(W51, W52, b51, b52)
figure(6)
plotting(W61, W62, b61, b62)
figure(7)
plotting(W71, W72, b71, b72)
figure(8)
plotting(W81, W82, b81, b82)
