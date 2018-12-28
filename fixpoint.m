%Adile Gündoðdu - 090150351
clear all;
clc;
x0=1;
error=10^-9; 
for k=1:20
    xnew =1+0.3*sin(x0);
    if abs(xnew-x0)<error
        break
    end
    x0=xnew;
end
disp(k) 
disp(xnew) 