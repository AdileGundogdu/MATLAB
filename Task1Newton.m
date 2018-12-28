
clc;
syms x;
f(x)=x^3-6*x^2+11*x-6.1;
tol=10^-5;
i=1;
X(1)=10;
while abs(f(X(i)))>tol
    X(i+1)=X(i)-f(X(i))/subs(diff(f,x),X(i));
    i=i+1;
end
q = disp(min([X']))

