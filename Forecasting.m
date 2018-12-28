%Adile Gündoðdu 090150351
%Labwork6
clear all
close all
clc

load('C:\Users\gundogdua15\Downloads\currencyUSD.mat');
t=1:length(USD);
plot(USD)
hold on
plin=fit(t',USD','poly1')
plot(plin,'r')
hold on

pquad=fit(t',USD','poly2')
plot(pquad,'g')
hold on

pthird=fit(t',USD','poly3')
plot(pthird,'k')
hold on

legend('USD/TRY','first','second','third');
textrap=1:(length(USD)+30);

USDextraplin=plin.p1*t+plin.p2;
guess1=USDextraplin(length(USDextraplin)) %30 gün sonraki dolarýn deðeri

USDextrapquad=pquad.p1*(t.^2)+pquad.p2*t+pquad.p3;
guess2=USDextrapquad(length(USDextrapquad))

USDextrapthird=pthird.p1*(t.^3)+pthird.p2*(t.^2)+pthird.p3*t+pthird.p4;
guess3=USDextrapthird(length(USDextrapthird))



