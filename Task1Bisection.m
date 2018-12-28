%Adile Gündoðdu -090150351
clear all;
clc;
syms x;
f(x)=x^3-6*x^2+11*x-6.1;
a=3;
b=3.1;
epsilon = 10^-6;
if f(a)*f(b)>0 
    disp('Kök yok be gardaþ.. :(')
else
    p = (a + b)/2;
    err = abs(f(p));
    while err > epsilon
      if f(a)*f(p)<0 
       b = p;
      else
       a = p;          
      end
      p = (a + b)/2; 
      err = abs(f(p));
    end
end
disp(p) %root