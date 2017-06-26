function [f] = leaders_ode(t,y)
N = length(y)/4; 
% N = 100

A=zeros(N);
d=zeros(1,N);
Xi = y(1:N);
Yi = y(N+1:2*N);
x = [Xi,Yi];

%Nu= @(x) K/(((sigma.^2)+x).^ beta);
for i = 1:N
    d(i)=0;
    Ni = [];
    for j = 1:N
        A(i,j) = Nu( (norm([Xi(i);Yi(i)]-[Xi(j);Yi(j)])).^2 );
        d(i) = d(i)+A(i,j);
        
        
        
        Ni = [Ni];  
    end
end
D = diag(d);

vi= y(2*N+1:3*N);
vy= y (3*N+1:end);
v = [vi,vy]; 

K = 1/N;
sigma = 1;
beta = 0.5;
gama = 0.95;

f = 


end