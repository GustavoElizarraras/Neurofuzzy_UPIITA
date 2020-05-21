%% Practice 8 Neural Networks - Function aproximation
%% Elizarraras Llanos Angel Gustavo
Epochs = 10;
W1 = rand(2,1);
b1 = rand(2,1);
W2 = rand(1,2);
b2 = rand(1,1);
alpha = 0.1;
p = -2:0.1:2;
F1 = zeros(2,2);
a = zeros(1,length(p));
%% Backpropagation 10 Epochs
for k = 1:Epochs
for i = 1:length(p)
a0 = p(i);
a1 = logsig(W(1,:)*a0 + b(1));
a2 = W(2,:)*a1 + b(2);
e = 1 + sin(pi*a0*0.25) - a2;
% df1 = (1 - a1).*a1;
df2 = 1;
s2 = -2*df2*e;
F1(1) = (1 - a1(1))*a1(1);
F1(4) = (1 - a1(2))*a1(2);
s1 = F1*W2'*s2;
W2 = W2 - alpha*s2*a1';
b2 = b2 - alpha*s2;
W1 = W1 - alpha*s1*a0;
b1 = b1 - alpha*s1;
a(i) = a2;
end
end
%% Plotting 10 Epochs
g = 1 + sin(0.25*pi*p);
grid on
ax = gca;
ax.XAxisLocation = 'origin'; 
ax.YAxisLocation = 'origin'; 
box off
hold on
plot(p,a,'b', 'Linewidth',3)
hold on
plot(p,g,'r', 'Linewidth',2)
legend({'Aproximation','Real values'},'Location','southeast')

Epochs = 100;
W1 = rand(2,1);
b1 = rand(2,1);
W2 = rand(1,2);
b2 = rand(1,1);
alpha = 0.1;
p = -2:0.1:2;
F1 = zeros(2,2);
a = zeros(1,length(p));
%% Backpropagation 100 Epochs
for k = 1:Epochs
for i = 1:length(p)
a0 = p(i);
a1 = logsig(W1*a0 + b1);
a2 = W2*a1 + b2;
e = 1 + sin(pi*a0*0.25) - a2;
% df1 = (1 - a1).*a1;
df2 = 1;
s2 = -2*df2*e;
F1(1) = (1 - a1(1))*a1(1);
F1(4) = (1 - a1(2))*a1(2);
s1 = F1*W2'*s2;
W2 = W2 - alpha*s2*a1';
b2 = b2 - alpha*s2;
W1 = W1 - alpha*s1*a0;
b1 = b1 - alpha*s1;
a(i) = a2;
end
end
%% Plotting 100 Epochs
figure(2)
g = 1 + sin(0.25*pi*p);
grid on
ax = gca;
ax.XAxisLocation = 'origin'; 
ax.YAxisLocation = 'origin'; 
box off
hold on
plot(p,a,'b', 'Linewidth',3)
hold on
plot(p,g,'r', 'Linewidth',2)
legend({'Aproximation','Real values'},'Location','southeast')