u1 = 0 :0.1: 15;

TR = 0 :0.1:9;
    
LOW = Trapezo(TR,6,8,9,9);
MED = Trapezo(TR, 3,5,6,8);  
HIGH = Trapezo(TR, 0, 2, 3, 5);



[X, Y] = meshgrid(0:0.1:15, 0:0.1:15);
Zs = X;
u2 = 0:0.1:15;
x = 1;
for i = u2
    y = 1;
    for j = u2
        [FCLTR] = Run_traffic_light(u2, i, j);
        Tiempor = defuzz(TR, FCLTR, 'centroid');
        Zs(y, x) = Tiempor;
        y = y + 1;
    end
    x = x + 1;
end
    
figure(1)
surf(X, Y, Zs)
title('Time red light')
xlabel('Cars')
ylabel('Noise')


    val1 = input('Introduce value for cars: ');
    val2 = input('Introduce value for noise: ');
    
    

    [FCLTR] = Run_traffic_light(u1, val1, val2);
    
    figure(2)
    hold on
    plot(TR, FCLTR, 'LineWidth', 2);
    title('Final Cutline and defuzzified value')
    xlabel('Time')
    

    Time_red = defuzz(TR, FCLTR, 'centroid');
    
    h2 = line([Time_red Time_red],[0 1],'Color','k');
    t2 = text(Time_red,0.1,'defuzzified value','FontWeight','bold');
    hold on

    fprintf('Time of the red light: %.2f \n', Time_red);
    
    
