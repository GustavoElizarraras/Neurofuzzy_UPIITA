%% Neural Networks Practice 5 - Adaline vs Perceptron
%% Elizarraras Llanos Angel Gustavo
%% Generating the variables for the neuron
epochs1 = 20;%I did not ask to the user because if i do, i can't publish with matlab.
epochs2 = 50;%I did not ask to the user because if i do, i can't publish with matlab.
epochs3 = 100;%I did not ask to the user because if i do, i can't publish with matlab.
% alpha = 0.1;
%Rabbits
P1 = [1  4];
P2 = [1 5];
P3 = [2 4];
P4 = [2 5];
%Bears
P5 = [3 1];
P6 = [3 2];
P7 = [4 1];
P8 = [4 2];
t_P = [0 0 0 0 1 1 1 1];%Perceptron targets 
t_A = [-1 -1 -1 -1 1 1 1 1];%Adaline targets 
P = [P1; P2; P3; P4; P5; P6; P7; P8];%Points 
num_patterns = 8;
N=1;%Number of neurons
W = rand(N,2)%random weigth
b = rand(N,1)%random bias
X = 0:0.1:6;
R = zeros(2,2);
%% Calculating Alphas
    for i = 1:num_patterns
        R = R + (1/num_patterns).*P(i,:)*P(i,:)';
    end
lamda = eig(R);
Lamdamax = max(lamda);
alpha_perceptron = 1;
alpha1 = 1/(4*Lamdamax);
alpha2 = 1/(8*Lamdamax);
alpha3 = 1/(16*Lamdamax);

%% Calling the function training and plotting them

%% 20 epochs
[e_p1, W_p1, b_p1, Y_p1,Yw_p1] = training_lines(alpha_perceptron, epochs1, num_patterns, P, W, b, t_P);
[e_a1, W_a1, b_a1, Y_a1,Yw_a1] = training_lines(alpha1, epochs1, num_patterns, P, W, b, t_A);
[e_a2, W_a2, b_a2, Y_a2,Yw_a2] = training_lines(alpha2, epochs1, num_patterns, P, W, b, t_A);
[e_a3, W_a3, b_a3, Y_a3,Yw_a3] = training_lines(alpha3, epochs1, num_patterns, P, W, b, t_A);
error_axis = 1:length(e_p1);
figure(1)
%Limit lines
subplot(2,2,1)
plot(X, Y_p1, X, Y_a1, X, Y_a2, X, Y_a3, 'Linewidth', 2)
title("Limit lines")
legend({'Y perceptron','Y adaline 1','Y adaline 2','Y adaline 3'},'Location','northeast')
hold on
scatter(1,4) 
hold on
scatter(1,5)
hold on
scatter(2,4)
hold on
scatter(2,5)
hold on
scatter(3,1)
hold on
scatter(3,2)
hold on
scatter(4,1)
hold on
scatter(4,2)
hold on
%Perceptron error
subplot(2,2,2)
plot(error_axis, e_p1, 'Linewidth', 2)
title("Perceptron Error")
legend({'Error perceptron'},'Location','northeast')
%Adaline errors
subplot(2,2,[3 4])
plot(error_axis, e_a1, error_axis, e_a2, error_axis, e_a3)
title("Adaline Errors")
legend({'Error adaline, alpha (1/4)','Error adaline, alpha (1/8)','Error adaline, alpha(1/16)'},'Location','northeast')

%% 50 epochs
[e2_p1, W2_p1, b2_p1, Y2_p1,Yw2_p1] = training_lines(alpha_perceptron, epochs2, num_patterns, P, W, b, t_P);
[e2_a1, W2_a1, b2_a1, Y2_a1,Yw2_a1] = training_lines(alpha1, epochs2, num_patterns, P, W, b, t_A);
[e2_a2, W2_a2, b2_a2, Y2_a2,Yw2_a2] = training_lines(alpha2, epochs2, num_patterns, P, W, b, t_A);
[e2_a3, W2_a3, b2_a3, Y2_a3,Yw2_a3] = training_lines(alpha3, epochs2, num_patterns, P, W, b, t_A);
error_axis2 = 1:length(e2_p1);
figure(2)
%Limit lines
subplot(2,2,1)
plot(X, Y2_p1, X, Y2_a1, X, Y2_a2, X, Y2_a3, 'Linewidth', 2)
title("Limit lines")
legend({'Y perceptron','Y adaline 1','Y adaline 2','Y adaline 3'},'Location','northeast')
hold on
scatter(1,4) 
hold on
scatter(1,5)
hold on
scatter(2,4)
hold on
scatter(2,5)
hold on
scatter(3,1)
hold on
scatter(3,2)
hold on
scatter(4,1)
hold on
scatter(4,2)
hold on
%Perceptron error
subplot(2,2,2)
plot(error_axis2, e2_p1, 'Linewidth', 2)
title("Perceptron Error")
legend({'Error perceptron'},'Location','northeast')
%Adaline errors
subplot(2,2,[3 4])
plot(error_axis2, e2_a1, error_axis2, e2_a2, error_axis2, e2_a3)
title("Adaline Errors")
legend({'Error adaline, alpha (1/4)','Error adaline, alpha (1/8)','Error adaline, alpha(1/16)'},'Location','northeast')

%% 100 epochs
[e3_p1, W3_p1, b3_p1, Y3_p1,Yw3_p1] = training_lines(alpha_perceptron, epochs3, num_patterns, P, W, b, t_P);
[e3_a1, W3_a1, b3_a1, Y3_a1,Yw3_a1] = training_lines(alpha1, epochs3, num_patterns, P, W, b, t_A);
[e3_a2, W3_a2, b3_a2, Y3_a2,Yw3_a2] = training_lines(alpha2, epochs3, num_patterns, P, W, b, t_A);
[e3_a3, W3_a3, b3_a3, Y3_a3,Yw3_a3] = training_lines(alpha3, epochs3, num_patterns, P, W, b, t_A);
error_axis3 = 1:length(e3_p1);
% Image example
userx = input('Introduce the weight of the toy') %x
usery = input('Introduce the ears length') %y
U = [userx; usery];
C = W3_a2*U + b3_a2;      
figure(3)
    if C >= 0 
       imshow('bear.jpg')
    else
       imshow('rabbit.jpg') 
    end
% figure(3)
% %Limit lines
% subplot(2,2,1)
% plot(X, Y3_p1, X, Y3_a1, X, Y3_a2, X, Y3_a3, 'Linewidth', 2)
% title("Limit lines")
% legend({'Y perceptron','Y adaline 1','Y adaline 2','Y adaline 3'},'Location','northeast')
% hold on
% scatter(userx,usery)
% hold on
% scatter(1,4) 
% hold on
% scatter(1,5)
% hold on
% scatter(2,4)
% hold on
% scatter(2,5)
% hold on
% scatter(3,1)
% hold on
% scatter(3,2)
% hold on
% scatter(4,1)
% hold on
% scatter(4,2)
% hold on
% %Perceptron error
% subplot(2,2,2)
% plot(error_axis3, e3_p1, 'Linewidth', 2)
% title("Perceptron Error")
% legend({'Error perceptron'},'Location','northeast')
% %Adaline errors
% subplot(2,2,[3 4])
% plot(error_axis3, e3_a1, error_axis3, e3_a2, error_axis3, e3_a3)
% title("Adaline Errors")
% legend({'Error adaline, alpha (1/4)','Error adaline, alpha (1/8)','Error adaline, alpha(1/16)'},'Location','northeast')
