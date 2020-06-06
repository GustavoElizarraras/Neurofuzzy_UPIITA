function a2 = testing(W1,W2,b1,b2,Test)
    for i = 1:15
    a1 = logsig(W1*Test(:,i) + b1);
    end
    a2 = W2*a1 + b2;
    
end