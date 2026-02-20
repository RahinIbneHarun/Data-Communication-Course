%% 1. Parameters & Time Vector
f = 5417;                % CDEF frequency
fs = 150000;             % High sampling rate for smooth curves
t = 0 : 1/fs : 0.0006;   % Time for approx 3 cycles

% Define Signal 1: A=5, phi=0
A1 = 5; phi1 = 0;
x1 = A1 * cos(2*pi*f*t + phi1);

% Define Signal 2: A=10, phi=pi/4
A2 = 10; phi2 = pi/4;
x2 = A2 * cos(2*pi*f*t + phi2);

% Define Signal 3: The Sum
x3 = x1 + x2;

%% 2. Generate the Three-Panel Figure
figure('Name', 'Sinusoid Summation');

% --- Panel 1: Signal x1 ---
subplot(3,1,1);
plot(t*1000, x1, 'b', 'LineWidth', 1.2);
ylabel('Amplitude');
title('x_1(t) = 5 cos(2\pi f t)');
grid on;

% --- Panel 2: Signal x2 ---
subplot(3,1,2);
plot(t*1000, x2, 'r', 'LineWidth', 1.2);
ylabel('Amplitude');
title('x_2(t) = 10 cos(2\pi f t + \pi/4)');
grid on;

% --- Panel 3: Summation Signal x3 ---
subplot(3,1,3);
plot(t*1000, x3, 'k', 'LineWidth', 1.5); % Black line for the sum
xlabel('Time (ms)');
ylabel('Amplitude');
title('x_3(t) = x_1(t) + x_2(t)');
grid on;

% Optional: Set same Y-axis limits for all to see relative sizes
linkaxes(findall(gcf,'type','axes'), 'xy');