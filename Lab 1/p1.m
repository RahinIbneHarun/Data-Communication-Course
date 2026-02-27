clc;
clear;

A1 = 23;     
A2 = 73;     
f = 5417;    
phi1_deg = 47;  
phi2_deg = 30;

phi1 = phi1_deg * pi/180;
phi2 = phi2_deg * pi/180;
w = 2*pi*f;

t = 0:0.0000001:0.001;

x1 = A1*cos(w*t + phi1);
x2 = A2*cos(w*t + phi2);