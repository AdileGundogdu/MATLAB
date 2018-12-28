clear all
close all
clc
%Adile Gündoðdu 090150351

%TASK-1

x=-pi:0.01:pi;
s=x/pi;
plot(x,s)
m=(2*pi)/length(x);
for N=1:5:11;
    result=zeros(1,length(x));
for n=1:1:N
    result=result+(power(-1,n+1)/n)*sin(n*x);
end
    s_approx=(2/pi)*result;
    hold on
    plot(x,s_approx)

end
    error=(s_approx-s)*(s_approx-s)'

