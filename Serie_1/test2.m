A2 =[2 0 0 0 1;9 1 0 0 0;0 3 6 0 0;0 0 5 -4 0;0 0 0 2 1]
b2 =[23;89;66;11;17]
p2 =4;
q2 =1;

[L,R]=lr_band(A2,p2,q2)
L*R
forward_sub_standard(L,b2)
forward_sub(L,b2,1)
