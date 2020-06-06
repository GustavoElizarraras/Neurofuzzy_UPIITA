%% Exercise - 1,2 and 3 in matrix image
%Number 0
F1 = [1 1 1 1 1];
F2 = [1 -1 -1 -1 1];
F3 = [1 -1 -1 -1 1];
F4 = [1 -1 -1 -1 1];
F5 = [1 -1 -1 -1 1];
F6 = [1 1 1 1 1];
P1 = [F1 F2 F3 F4 F5 F6];
%Number 1
F7 = [-1 -1 1 -1 -1];
F8 = [-1 1 1 -1 -1];
F9 = [-1 -1 1 -1 -1];
F10 = [-1 -1 1 -1 -1];
F11 = [-1 -1 1 -1 -1];
F12 = [-1 -1 1 -1 -1];

P2 = [F7 F8 F9 F10 F11 F12];
%Number 2
F14 = [-1 1 1 1 -1];
F15 = [-1 -1 -1 1 -1];
F16 = [-1 -1 -1 1 -1];
F17 = [-1 1 1 1 -1];
F18 = [-1 1 -1 -1 -1];
F19 = [-1 1 1 1 -1];
P3 = [F14 F15 F16 F17 F18 F19];
P = [P1; P2; P3]';
t = P;
% Show image
I = [F1 F7 F14; F2 F8 F15; F3 F9 F16; ...
     F4 F10 F17; F5 F11 F18; F6 F12 F19];
subplot(2,2,1)
imshow(I,'InitialMagnification','fit')
colorbar

W = t * pinv(P); %Training

%Number 0 with 5 errores
E1 = [1 1 1 -1 1];
E2 = [1 -1 1 -1 1];
E3 = [1 -1 -1 1 1];
E4 = [1 -1 -1 -1 1];
E5 = [1 1 -1 -1 1];
E6 = [1 1 1 -1 1];
T1 = [E1 E2 E3 E4 E5 E6]';

%Number 1 with 10 errores
E7 = [1 -1 1 -1 1];
E8 = [-1 1 1 -1 -1];
E9 = [-1 -1 -1 -1 1];
E10 = [-1 -1 1 -1 -1];
E11 = [1 -1 1 -1 1];
E12 = [1 -1 1 1 1];
T2 = [E7 E8 E9 E10 E11 E12]';
%Number 2 with 15 errores
E14 = [1 -1 1 1 1];
E15 = [-1 1 -1 1 1];
E16 = [1 1 -1 1 -1];
E17 = [1 -1 1 1 1];
E18 = [-1 1 -1 1 1];
E19 = [1 1 1 -1 1];
T3 = [E14 E15 E16 E17 E18 E19]';

%% Testing

a1 = hardlims(W*T1);
a2 = hardlims(W*T2);
a3 = hardlims(W*T3);
%It will disp "This is a 0" (5 errors)
if isequal(a1, P1') == true
    fprintf('This is a  0\n')
elseif isequal(a1, P2') == true
    fprintf('This is a  1\n')
elseif isequal(a1, P3') == true
    fprintf('This is a 2\n')    
else
    fprintf('Other\n')
end

%It will disp "This is a 1" (10 errors)
if isequal(a2, P1') == true
    fprintf('This is a  0\n')
elseif isequal(a2, P2') == true
    fprintf('This is a  1\n')
elseif isequal(a2, P3') == true
    fprintf('This is a 2\n')    
else
    fprintf('Other\n')
end

%It is supposed to disp "This is a 2"
if isequal(a3, P1') == true
    fprintf('This is a  0\n')
elseif isequal(a3, P2') == true
    fprintf('This is a  1\n')
elseif isequal(a3, P3') == true
    fprintf('This is a 2\n')    
else
    fprintf('Other\n')
end

%% Plotting the testing inputs
it1 = [E1;E2;E3;E4;E5;E6];
subplot(2,2,2)
imshow(it1,'InitialMagnification','fit')
it2 = [E7;E8;E9;E10;E11;E12];
subplot(2,2,3)
imshow(it2,'InitialMagnification','fit')
it3 = [E14;E15;E16;E17;E18;E19];
subplot(2,2,4)
imshow(it3,'InitialMagnification','fit')