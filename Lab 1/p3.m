clc;
clear;

A1 = 23;
A2 = 73;
f = 5417;

phi1 = 47*pi/180;
phi2 = 30*pi/180;

w = 2*pi*f;

% Value at t = 0
x1_0 = A1*cos(phi1);
x2_0 = A2*cos(phi2);

disp('x1(0) = ')
disp(x1_0)

disp('x2(0) = ')
disp(x2_0)

% Maximum amplitude
disp('Maximum of x1 = ')
disp(A1)

disp('Maximum of x2 = ')
disp(A2)