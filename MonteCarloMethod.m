
clc
clear all 

x=1.5*rand(1,1000);
y=10*rand(1,1000);
n=1000;

func = @(x) 1 ./ (1 + sinh(2*x) .* log(x));
I = integral(func,0,1.5);
ratioReal = I/15;

k=1./(sinh(2*x).*log(x)+1);

plot(x,k,'.b')
hold on
plot(x,y,'.g')

m=0;

for i=1:1000
if y(i)<=k(i)
    plot(x(i),y(i),'.r')
    m=m+1;
end
end

ratioWait = m/n;
x1=logspace(0,1.5,1000);


xlim([0 1.5]);
ylim([0 10]);






