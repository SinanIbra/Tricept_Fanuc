function lamda = lambda_p(flag1,flag2) 

if flag1 =='x' 
    if flag2 =='r'
        lamda = [0,0,0,1,0,0];
        
    elseif flag2 =='t'
        lamda = [1,0,0,0,0,0];
        
        
    end
end
if flag1 == 'y'
    if flag2 =='r'
        lamda = [0,0,0,0,1,0];
        
        
    elseif flag2 =='t'
        lamda = [0,1,0,0,0,0];
        
    end
    
end

if flag1 =='z'
    if flag2 =='r'
        lamda = [0,0,0,0,0,1];
        
    elseif flag2 =='t'
        lamda = [0,0,1,0,0,0];
    end
end


end
