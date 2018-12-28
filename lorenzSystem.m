clc
clear all

t1=[0 999];

prandtl = 10;
rayleigh = 28;
cer_phys_dimen = 8/3;

f = @(t,a)[ prandtl*(a(2)-a(1)) ; a(1)*(rayleigh-a(3))-a(2) ; a(1)*a(2)-cer_phys_dimen*a(3) ];
[t,a] = ode45(f , t1 ,randn(3,1));

comet3(a(:,1),a(:,2),a(:,3))


