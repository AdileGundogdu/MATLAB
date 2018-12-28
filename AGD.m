%Adile Gündoðdu - 090150351

%Task 2

alpha=0.0899;
x0=[0;0];
y0=[0;0];
t0=1;
epsilon=10^-4;
x1=y0-alpha*gradfunc(y0)
t1=1/2*(1+sqrt(1+4*t0^2));
y1=x1+(t0-1)/t1*(x1-x0);
iteration=0;
while abs(func(x1)-func(x0))>epsilon
    x0=x1;
    y0=y1;
    t0=t1;
    x1=y0-alpha*gradfunc(y0);
    t1=1/2*(1+sqrt(1+4*t0^2));
    y1=x1+(t0-1)/t1*(x1-x0);
    d=func(x1);
    iteration=iteration+1;
    error=abs(func(x1)-func(x0));
    X=sprintf('K= %d X1= %d X2= %d f(x)= %d error =%d',iteration, x1 , d, error);
    disp(X)
end