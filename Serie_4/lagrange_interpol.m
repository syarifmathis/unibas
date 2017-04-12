function p = lagrange_interpol(x,y,z)
n = length(x);

p= 0;
    
    for j = 1:n
  
        
            L =1;
            for k = 1:n
                if k ~= j
                L = L .* (z-x(k))/(x(j)-x(k));  
                
                end
                
            end
       
        p = p + y(j)*L;
    end
end