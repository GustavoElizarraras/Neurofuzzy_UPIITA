%% Neural Networks Practice 12 - Kohonen
%% Elizarraras Llanos Angel Gustavo
%% Patterns

% Random X values for the sets
x1 = -2 + (1+2)*rand(1,10); %set 1 goes from -2 to 1
x2 = -5 + (-2+5)*rand(1,10); %set 1 goes from -5 to -2
x3 = 1.5 + (4-1.5)*rand(1,10); %set 1 goes from 1 to 3
% Random Y values
y1 = 0.1 + (4-0.1)*rand(1,10); %set 1 goes from 0.1 to 4
y2 = -0.1 + (-4+0.1)*rand(1,10); %set 1 goes from -0.1 to -4
y3 = -2 + (-2+2)*rand(1,10); %set 1 goes from -2 to 2
% Getting the sets
S1 = [x1; y1];
S2 = [x1; y2];
S3 = [x2; y1];
S4 = [x2; y2];
S5 = [x3; y3];
P = [S1 S2 S3 S4 S5];
%% Random weighs with the same intervals

% Random X values for the sets
xx1 = -2 + (1+2)*rand(1); %set 1 goes from -2 to 1
xx2 = -5 + (-2+5)*rand(1); %set 1 goes from -5 to -2
xx3 = 1.5 + (4-1.5)*rand(1); %set 1 goes from 1 to 3
% Random Y values
yy1 = 0.1 + (4-0.1)*rand(1); %set 1 goes from 0.1 to 4
yy2 = -0.1 + (-4+0.1)*rand(1); %set 1 goes from -0.1 to -4
yy3 = -2 + (-2+2)*rand(1); %set 1 goes from -2 to 2
W1 = [xx1; yy1];
W2 = [xx1; yy2];
W3 = [xx2; yy1];
W4 = [xx2; yy2];
W5 = [xx3; yy3];
W = [W1';W2';W3';W4';W5'];
%alpha
alpha = 0.1;
%epochs
epochs = 60; %If I ask, i can't publish with MATLAB
%number of patterns
num_p = 50;
%% Training
figure(1)
for i = 1:epochs
   for j = 1:num_p 
       a = compet(W * P(:,j));
       %The if determines what Weight is going to be updated depending of
       %the compet activation function
       if a(1) == 1
       W(1,:) = W(1,:) + alpha * (P(:,j)' - W(1,:));
       b = W(1,:);
       plot(b(1),b(2), '*r')
       elseif a(2) == 1
       W(2,:) = W(2,:) + alpha * (P(:,j)' - W(2,:)); 
       b = W(2,:);
       plot(b(1),b(2), '*g')
       elseif a(3) == 1
       W(3,:) = W(3,:) + alpha * (P(:,j)' - W(3,:));
       b = W(3,:);
       plot(b(1),b(2), '*b')
       elseif a(4) == 1
       W(4,:) = W(4,:) + alpha * (P(:,j)' - W(4,:));
       b = W(4,:);
       plot(b(1),b(2), '*k')
       else
       W(5,:) = W(5,:) + alpha * (P(:,j)' - W(5,:)); 
       b = W(5,:);
       plot(b(1),b(2), '*m')
       end
   end
   hold on
end

%% Testing
X = -6:0.2:6;
Y = -6:0.2:6;
figure(2)
for i = 1:length(X)
   for j = 1:length(Y)
       Pa = [X(i);Y(j)];
       a = compet(W * Pa);
       if a(1) == 1
       plot(X(i),Y(j), '*r')
       elseif a(2) == 1
       plot(X(i),Y(j), '*g')
       elseif a(3) == 1
       plot(X(i),Y(j), '*b')
       elseif a(4) == 1
       plot(X(i),Y(j), '*k')
       else
       plot(X(i),Y(j), '*m')
       end
   end
   hold on
end