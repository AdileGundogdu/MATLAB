function [y] = gradfunc(x)
    A=[3 -2; -2 4];
    b=[-9;-2];
    y=2*A*x+b;
end

