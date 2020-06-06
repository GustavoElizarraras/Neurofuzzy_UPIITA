%% Exercise Kohonen
%% Elizarraras Llanos Angel Gustavo
% Patterns
p1 = [-0.1961;0.9806];
p2 = [0.1961;0.9806];
p3 = [0.9806;0.1961];
p4 = [0.9806;-0.1961];
p5 = [-0.5812;-0.8137];
p6 = [-0.8137;-0.5812];
P = [p1 p2 p3 p4 p5 p6];
% Weights
w1 = [0.7071;-0.7071];
w2 = [0.7071;0.7071];
w3 = [-1;0];
W =[w1';w2';w3'];
c = [0 0 0];
scatter(w1(1),w1(2), 100, 'filled', 'd');
hold on
scatter(w2(1),w2(2), 100, 'filled', 's')
hold on
scatter(w3(1),w3(2), 100, 'filled', 'h')
hold on
%alpha
alpha = 0.2;
%epochs
epochs = 20;
%number of patterns
num_p = 6;
%Training
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
       else
       W(3,:) = W(3,:) + alpha * (P(:,j)' - W(3,:)); 
       b = W(3,:);
       plot(b(1),b(2), '*b')
       end
   end
   hold on
end


