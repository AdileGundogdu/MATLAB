
clc
clear all 

A=randn(200,1000);
b=randn(200,1); 
n=1000;

lambda = [0.3 0.7 1.0];
p=2;
for i = 1:3
    cvx_begin
    variable x(n)
    minimize( norm( A * x - b, p ) + lambda(i)*norm( x , p) )
    cvx_end
end

[A*x,b]    

