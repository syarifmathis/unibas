function [ p_1 ] = approx_cos_2(z)
    z = mod(z,2*pi);
    x = [0 pi/3 (2*pi)/3 pi (4*pi)/3 (5*pi)/3 2*pi];
    y = [1 0.5 -0.5 -1 -0.5 0.5 1];
    
    a = monomial_coeff(x,y);
    p_1 = monomial_interpol(a,x,z);
    
end