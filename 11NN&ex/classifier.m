function classifier(a,P) 
if isequal(a, P(:,1)) == true
    fprintf('This is a mushroom\n')
elseif isequal(a, P(:,2)) == true
    fprintf('These are stairs\n')
elseif isequal(a, P(:,3)) == true
    fprintf('This is a tree\n')    
elseif isequal(a, P(:,4)) == true
    fprintf('This is an eye\n')
elseif isequal(a, P(:,5)) == true
    fprintf('This is a factory\n') 
elseif isequal(a, P(:,6)) == true
    fprintf('This is an alien\n') 
else
    fprintf('Other\n')
end
end