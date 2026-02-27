clc;
clear;

A1 = 23;
A2 = 73;
f = 5417;

phi1 = 47*pi/180;
phi2 = 30*pi/180;

w = 2*pi*f;
T = 1/f;

t = -1.5*T : T/40 : 1.5*T;

x1 = A1*cos(w*t + phi1);
x2 = A2*cos(w*t + phi2);

figure;

subplot(3,1,1)
plot(t,x1)
title('x1(t)')
grid on

subplot(3,1,2)
plot(t,x2)
title('x2(t)')
grid on