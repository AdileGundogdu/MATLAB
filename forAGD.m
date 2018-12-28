function [y] = func(x)
    A=[3 -2; -2 4];
    b=[-9;-2];
    c=51/4;
    y=x'*A*x+b'*x+c;
    
end

