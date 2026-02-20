%% 1. Parameters & Time Vector
f = 5417;                % CDEF frequency
fs = 150000;             % Higher sampling for smooth plotting
t = 0 : 1/fs : 0.0006;   % Plotting for ~3 cycles

% Define Signal 1
A1 = 5; phi1 = 0;
x1 = A1 * cos(2*pi*f*t + phi1);

% Define Signal 2
A2 = 10; phi2 = pi/4;
x2 = A2 * cos(2*pi*f*t + phi2);

%% 2. Generate the Three-Panel Figure
figure('Name', 'Sinusoid Comparison');

% --- Panel 1: Signal x1 ---
subplot(3,1,1);
plot(t*1000, x1, 'b', 'LineWidth', 1.2);
ylabel('Amplitude');
title(['x_1(t) = ', num2str(A1), ' cos(2\pi f t + 0)']);
grid on;

% --- Panel 2: Signal x2 ---
subplot(3,1,2);
plot(t*1000, x2, 'r', 'LineWidth', 1.2);
ylabel('Amplitude');
title(['x_2(t) = ', num2str(A2), ' cos(2\pi f t + \pi/4)']);
grid on;

% --- Panel 3: Overlaid Comparison ---
subplot(3,1,3);
plot(t*1000, x1, 'b', t*1000, x2, 'r--', 'LineWidth', 1.2);
xlabel('Time (ms)');
ylabel('Amplitude');
title('Comparison (Overlaid)');
legend('x1', 'x2');
grid on;