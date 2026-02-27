clc;
clear;

A1 = 23;
A2 = 73;

phi1 = 47*pi/180;
phi2 = 30*pi/180;

% Convert to phasor
X1 = A1*(cos(phi1) + 1i*sin(phi1));
X2 = A2*(cos(phi2) + 1i*sin(phi2));

X3 = X1 + X2;

magnitude = abs(X3);
phase_rad = angle(X3);
phase_deg = phase_rad*180/pi;

disp('Magnitude of x3 = ')
disp(magnitude)

disp('Phase of x3 (degree) = ')
disp(phase_deg)