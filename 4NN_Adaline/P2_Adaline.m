%% Neural Networks Practice 4- Adaline 2
%% Elizarraras Llanos Angel Gustavo
%% Generating the variables for the neuron
Epochs = 10;%I did not ask to the user because if i do, i can't publish with matlab.
alpha = 0.1;
P11 = [-3,1];
P12 = [-1 2];
P21 = [2 -2];
P22 = [4 -3];
P31 = [-2 -1];
P32 = [-1 -3];
P41 = [3 0];
P42 = [4 2];
Targets = [1 1; -1 -1; -1 1; 1 -1];%Targets 
p = [P11; P21; P31; P41; P12; P22; P32; P42];%Points 
Number_classes = 4;
N=2;%Number of neurons
W = rand(2,N);%random weigth
b = rand(N,1);%random bias
Original_random_bias = b
W_Random = W
e=zeros(2,1);
x=zeros(2,1);
g1 = zeros(1,4); 
error1 = [];
g2 = zeros(1,4); 
error2 = [];
%% Training
    for i = 1:Epochs
        for j = 1:4
        
        a(1) = dot(W(1,:),P(:,j)) + b(1);
        a(2) = dot(W(2,:),P(:,j+4)) + b(2);
        e = Targets(j,:) - hardlim(a);
        x1 = alpha*e(1)*P(:,j);
        x2 = alpha*e(2)*P(:,j+4);
        W(1,:) = W(1,:) + x1';
        W(2,:) = W(2,:) + x2';
        b(1) = b(1) + alpha*e(1);
        b(2) = b(2) + alpha*e(2);   
        g1(j) = e(1);
        g2(j) = e(2);
        end
        error1 = [error1,g1];
        error2 = [error2,g2];
    end
%% Checking training
b_after_training = b
W_after_training = W
X = -5:0.1:5;
figure(1)

    for i = 1:length(X)
        for j = 1:length(X)
      
            allP = [X(i);X(j)];
      
            C = W*allP + b; 
            
            if( C(1) >= 0 && C(2) >= 0 )
            plot(X(i) , X(j), '*b')
         
            elseif ( C(1) >= 0 && C(2) < 0 )
            plot(X(i) , X(j), '*g')
            
            elseif ( C(1) < 0 && C(2) < 0  )
            plot(X(i) , X(j), '*k')
            
            elseif ( C(1) < 0 && C(2) >= 0 )
            plot(X(i) , X(j), '*r')
            end
                 hold on 
        end
    end
     axis([-5 5 -5 5]);
%% Getting the limit line
xpoint1 = -b(1) / W(1);
ypoint1 = -b(1) / W(3);
slope1 = -ypoint1/xpoint1;
Y1 = slope1*X + ypoint1;

mw1 = -1 / slope1;
Yw1 = mw1*X;

xpoint2 = -b(2) / W(2);
ypoint2 = -b(2) / W(4);
slope2 = -ypoint2/xpoint2;
Y2 = slope2*X + ypoint2;

mw2 = -1 / slope2;
Yw2 = mw2*X;

plot(X,Y1,'m','Linewidth',2)
hold on
plot(X,Y2,'m','Linewidth',2)
%Plotting the limit line and the weight
figure(2)
%Axis
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
hold on
grid on
axis([-5 5 -5 5]);
plot(X,Y1,'b',X,Yw1, 'c','Linewidth',2)
hold on
plot(X,Y2,'r',X,Yw2,'m', 'Linewidth',2)
legend({'Limit line 1','Weight 1','Limit line 2','Weight 2'},'Location','northwest')
hold on
scatter(-3,1)
hold on
scatter(-1,2)
hold on
scatter(2, -2)
hold on
scatter(4,-3)
hold on
scatter(-2,-1)
hold on
scatter(-1, -3)
hold on
scatter(3,0)
hold on
scatter(4,2)
hold on

figure(3)
subplot(1,2,1)
error_axis = 1:length(error1);
plot(error_axis,error1, 'Linewidth',2)
title('Error1 en each iteration')
legend({'Error'},'Location','northeast')
subplot(1,2,2)
plot(error_axis,error2, 'Linewidth',2)
title('Error2 en each iteration')
legend({'Error'},'Location','northeast')