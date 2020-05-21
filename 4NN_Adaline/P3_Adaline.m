%% Neural Networks Practice 3-3D Adaline
%% Elizarraras Llanos Angel Gustavo
%% Generating the variables for the neuron
alpha = 0.1;
Epochs = 50;%I did not ask to the user because if i do, i can't publish with matlab.
P1 = [1;-1;-1];%Orange
P2 = [1;1;-1];%Apple
Target = [-1 1];%Targets 
P = [P1, P2];%Points 
N=1;%Number of neurons
W = rand(N,3);%random weigth
b = rand(N,1);%random bias
Original_random_bias = b
Random_W = W
g = zeros(1,2);
error= [];
%% Training
    for i = 1:Epochs
        for j = 1:2
        
        a = dot(W,P(:,j)) + b;
        e = Target(j) - a;
        x = alpha*e*P(:,j);
        W = W + x';
        b = b + alpha*e;
        g(j) = e;
        end
        error = [error,g];
       
    end
%% Checking training
b_after_training = b
W_after_training = W
axis=1:length(error);
figure(1)
plot(axis,error,'Linewidth',2)
title('Error')
% scatter3(1,-1,-1,'filled','r')
% hold on
% scatter3(1,1,-1,'filled','g')
% hold on
%   
% %% Getting the plane
% % To get a plane, you must have a normal vector to the plane and a point in
% % the plane, and we know the weight is perpendicular and to the point we
% % have any intersection with an axis. I will use de y intersection.
% 
% % x = -b / W(1);
% y = -b / W(2);
% % z = -b / W(3);
% % The equation for a this plane is: Ax+B(y-y0)+Cz=
% [X, Y] = meshgrid(-3:1:3);
% % Isolating z
% Z = (1/W(3))*(-W(1)*X - W(2)*Y + W(2)*y);
% z = (1/W(3))*(W(1)*X + W(2)*Y + W(2)*y);
% surf(X,Y,Z)
% grid on
% surf(X,Y,z,'FaceAlpha',0.5)
% hold on
% % Image example
% userx = input('Introduce the x point')
% usery = input('Introduce the y point')
% userz = input('Introduce the z point')
% scatter3(userx,usery,userz)
% legend({'Orange','Apple','Dividing plane','Weight plane','User input'},'Location','northeast')
% U = [userx; usery; userz];
% C = W*U + b;      
% figure(2)
%     if C >= 0 
%        imshow('apple.png')
%     else
%        imshow('orange.jpg') 
%     end