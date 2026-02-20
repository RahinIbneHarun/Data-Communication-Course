% Clear workspace
clc;
close all;
clear all;

f = 5417;              
A1 = 23;                    
A2 = 73;                      
phi1_deg = 47;                
phi2_deg = 30;                

% Convert phases to radians
phi1 = phi1_deg * pi/180;
phi2 = phi2_deg * pi/180;

% Time parameters
T_period = 1/f;             
T_total = 3 * T_period;     
fs = 20 * f;                 
dt = 1/fs;                    

% Create time vector starting from negative time
t_start = -0.5 * T_period;
t_end = t_start + T_total;
t = t_start:dt:t_end;

% Generate the sinusoids
x1 = A1 * cos(2*pi*f*t + phi1);
x2 = A2 * cos(2*pi*f*t + phi2);

% Plot both signals
plot(t*1000, x1, 'b-', t*1000, x2, 'r-', 'LineWidth', 1.5);
xlabel('Time (ms)');
ylabel('Amplitude');
grid on;