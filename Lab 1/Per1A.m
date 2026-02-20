clear; clc; close all;

% Constants
f = 5417;           % Frequency in Hz
A1 = 23;            % Amplitude 1
A2 = 73;            % Amplitude 2
p1 = 47;            % Phase 1 in degrees
p2 = 30;            % Phase 2 in degrees
% Time vector
t = 0:1/(20*f):3/f; % Time for 3 cycles
% Generate the sinusoids
x1 = A1 * cos(2*pi*f*t + p1*pi/180);
x2 = A2 * cos(2*pi*f*t + p2*pi/180);
% Plot
plot(t*1000, x1, 'b-', t*1000, x2, 'r-', 'LineWidth', 1.5);
xlabel('Time (ms)');
ylabel('Amplitude');
title(['Sinusoids at f = ' num2str(f) ' Hz']);
legend('x1 (23, 47°)', 'x2 (73, 30°)');
grid on;
% Display info
disp('=== Signal Parameters ===');
disp(['f = ' num2str(f) ' Hz']);