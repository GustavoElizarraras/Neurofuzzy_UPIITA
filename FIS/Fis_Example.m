X=0:0.1:10;

A1=zeros(1,length(X));
A2=zeros(1,length(X));
B1=zeros(1,length(X));
B2=zeros(1,length(X));
C1=zeros(1,length(X));
C2=zeros(1,length(X));
A1value=0;
A2value=0;
B1value=0;
B2value=0;


%Generando funciones
    for i = 1:length(X)
        
    A1(i) = ( 1 / ( 1 + exp( 3*( (X(i) - 5) )  )));
    A2(i) = ( 1 / ( 1 + exp( -3*( (X(i) - 5) )  )));
    
    B1(i) = exp( -0.125*(X(i) - 2.5 )^2  );
    B2(i) = exp( -0.125*(X(i) - 7.5 )^2  );
    
    C1(i) = ( 1 / ( 1 + exp( 3*( (X(i) - 5) )  )));
    C2(i) = exp( -0.125*(X(i) - 7.5 )^2  );
    
    if X(i) == 4.5
      A1value = A1(i);
      A2value = A2(i);
    end    
    
    if X(i) == 7
      B1value = B1(i);
      B2value = B2(i);
    end   
    
    end
    


%Min A1B1 and A1B2
first_C1 = min(A1value,B1value);
second_C1 = min(A1value,B2value);

%Min A2B1 and A2B2
first_C2 = min(A2value,B1value);
second_C2 = min(A2value,B2value);

%lines of the minimum
minlineA1B1 = ones(size(X)) * first_C1;
minlineA1B2 = ones(size(X)) * second_C1;
minlineA2B1 = ones(size(X)) * first_C2;
minlineA2B2 = ones(size(X)) * second_C2;

%Maximums of the AB minimums
C1max = max(first_C1,second_C1);
C2max = max(first_C2,second_C2);

cutlineC1 = min(C1max,C1);
cutlineC2 = min(C2max,C2);

finalcutC = max(cutlineC1, cutlineC2);

output = defuzz( X,finalcutC, 'centroid');

     figure(1)
     h1 = line([output output],[0 1],'Color','k');
     t1 = text(output,0.1,' centroid','FontWeight','bold');
     hold on
%     subplot(3,1,1)
%     plot(X,A1,X,A2)
%     subplot(3,1,2)
%     plot(X,B1,X,B2)
%     subplot(3,1,3)
     plot(X,finalcutC,'*',X,C1,X,C2,'Linewidth',1.5)
     legend({'Defuzzy centroid','FinalcutC','C1','C2'},'Location','northeast')
     title('Result')
     
    figure(2)
    %Ploting A's
    subplot(4,3,1)
    plot(X,minlineA1B1,X,A1, 4.5, A1value, '+','Linewidth',1.5)
    title('A1')
    subplot(4,3,4)
    plot(X,minlineA1B2,X,A1, 4.5, A1value, '+','Linewidth',1.5)
    title('A1')
    subplot(4,3,7)
    plot(X,minlineA2B1,X,A2, 4.5, A2value, '+','Linewidth',1.5)
    title('A2')
    subplot(4,3,10)
    plot(X,minlineA2B2,X,A2, 4.5, A2value, '+','Linewidth',1.5)
    title('A2')
    
    %Ploting B's
    subplot(4,3,2)
    plot(X,minlineA1B1,X, B1, 7, B1value, '+','Linewidth',1.5)
    title('B1')
    subplot(4,3,5)
    plot(X,minlineA1B2,X,B2, 7, B2value, '+','Linewidth',1.5)
    title('B2')
    subplot(4,3,8)
    plot(X,minlineA2B1,X,B1, 7, B1value, '+','Linewidth',1.5)
    title('B1')
    subplot(4,3,11)
    plot(X,minlineA2B2,X,B2, 7, B2value, '+','Linewidth',1.5)
    title('B2')
    
    %Ploting C's
    subplot(4,3,3)
    plot(X,minlineA1B1,X,C1,'Linewidth',1.5)
    title('C1')
    subplot(4,3,6)
    plot(X,minlineA1B2,X,C1,'Linewidth',1.5)
    title('C1')
    subplot(4,3,9)
    plot(X,minlineA2B1,X,C2,'Linewidth',1.5)
    title('C2')
    subplot(4,3,12)
    plot(X,minlineA2B2,X,C2,'Linewidth',1.5)
    title('C2')
    
    figure(3)
    subplot(1,2,1)
    plot(X,C1,X,C1max,'*')
    title('C2')
    subplot(1,2,2)
    plot(X,C2,X,C2max,'*')
    title('C2')