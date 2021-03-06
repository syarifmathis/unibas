function [f] = Cucker_Smale_ode(t, y)
N=length(y)/4;

A=zeros(N);
d=zeros(1,N);
Xi = y(1:N);
Yi = y(N+1:2*N);
x = [Xi,Yi];

K = 1/N;
sigma = 1;
%beta = 0.1;
%beta=0.45;
beta = 0.75;

Nu= @(x) K/(((sigma.^2)+x).^ beta);

% Matrix A aufstellen und d(i) ermittlen
for i = 1:N
    d(i)=0;
    for j = 1:N
        A(i,j) =Nu( norm(x(i,:)-x(j,:)).^2 );
        d(i) = d(i)+A(i,j);
    end
end

% Matrix D aufstellen
D = diag(d);

%System der Differentialgleichung aufstellen. 
vi= y(2*N+1:3*N);
vy= y (3*N+1:end);
v = [vi,vy];

Result_dvdt = -(D-A)*v;

dxdt = [vi;vy];
dvdt = [Result_dvdt(:,1);Result_dvdt(:,2)];

f = [dxdt; dvdt];
end