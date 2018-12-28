%Adile Gündoðdu - 090150351
clear all;
clc;
syms h;
r=2;
L=5;
V=8;
volume=(r*r*acos((r-h)/r)-(r-h)*sqrt(2*r*h-h*h))*L==V;
h_solution=solve(volume,h)
