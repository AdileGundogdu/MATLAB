

%Task 1

alpha=0.0899;
x0=[0;0]
epsilon=10^-4;
x1=x0-alpha*gradfunc(x0);
iteration=0;
while abs(func(x1)-func(x0))>epsilon
    x0=x1;
    x1=x0-alpha*gradfunc(x0);
    iteration=iteration+1;
    d=func(x1);
    error=abs(func(x1)-func(x0));
    X=sprintf('K= %d X1= %d X2= %d f(x)= %d error =%d',iteration, x1 , d, error);
    disp(X)
end
