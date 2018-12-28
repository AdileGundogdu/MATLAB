

clc
clear all

A=randn(200,1000);
b=randn(200,1); 
n=1000;
p=2;
cvx_begin
    variable x(n)
    minimize( norm( x , p ) )
    subject to
        A * x == b
cvx_end

[A*x,b]