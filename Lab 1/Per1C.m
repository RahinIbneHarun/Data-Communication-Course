% 1. Define Parameters
f = 5417;                % Frequency (CDEF)
A1 = 5;                  % Amplitude of x1
phi1 = 0;                % Phase of x1
A2 = 10;                 % Amplitude of x2
phi2 = pi/4;             % Phase of x2 (45 degrees)

% 2. Create Time Vector
fs = 100000;             % Sampling frequency (100 kHz for smooth curves)
t = 0 : 1/fs : 0.0005;   % Time from 0 to 0.5 milliseconds

% 3. Generate Signals
x1 = A1 * cos(2*pi*f*t + phi1);
x2 = A2 * cos(2*pi*f*t + phi2);

% 4. Plot the Curves
figure;
plot(t*1000, x1, 'b', 'LineWidth', 1.5); hold on; % blue line
plot(t*1000, x2, 'r--', 'LineWidth', 1.5);       % red dashed line
grid on;

% 5. Labeling
title(['Sinusoids at ', num2str(f), ' Hz']);
xlabel('Time (milliseconds)');
ylabel('Amplitude');
legend('x1(t): A=5, \phi=0', 'x2(t): A=10, \phi=\pi/4');