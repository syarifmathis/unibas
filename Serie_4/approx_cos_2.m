function p_2= approx_cos_2(z)
z = mod(z,2*pi);
 z = mod(z,2*pi);
    x = [0 pi/3 (2*pi)/3 pi (4*pi)/3 (5*pi)/3 2*pi];
    y = [1 0.5 -0.5 -1 -0.5 0.5 1];
    
  
    p_2 = lagrange_interpol(x,y,z);
    
end