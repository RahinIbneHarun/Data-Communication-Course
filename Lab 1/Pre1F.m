%% MATLAB Lab: Sinusoid Summation and Measurement
% Frequency derived from CDEF: 5417 Hz

clear; clc; close all;

%% 1. Parameters
f = 5417;                % Frequency (CDEF)
A1 = 5;                  % Amplitude of x1
phi1 = 0;                % Phase of x1
A2 = 10;                 % Amplitude of x2
phi2 = pi/4;             % Phase of x2 (45 degrees)

% Sampling settings
fs = 200000;             % High sampling rate for smooth visualization
t = 0 : 1/fs : 0.0006;   % Time vector (approx 3 cycles)

%% 2. Signal Generation
x1 = A1 * cos(2*pi*f*t + phi1);
x2 = A2 * cos(2*pi*f*t + phi2);
x3 = x1 + x2;            % Summation signal

%% 3. Plotting
figure('Units', 'normalized', 'Position', [0.1, 0.1, 0.5, 0.8]);

% --- Subplot 1: Signal x1 ---
subplot(3,1,1);
plot(t*1000, x1, 'b', 'LineWidth', 1.5);
grid on;
title(['x_1(t) = ', num2str(A1), ' cos(2\pi \cdot ', num2str(f), 't)']);
ylabel('Amplitude');
ylim([-16 16]); % Keep scales consistent

% --- Subplot 2: Signal x2 ---
subplot(3,1,2);
plot(t*1000, x2, 'r', 'LineWidth', 1.5);
grid on;
title(['x_2(t) = ', num2str(A2), ' cos(2\pi \cdot ', num2str(f), 't + \pi/4)']);
ylabel('Amplitude');
ylim([-16 16]);

% --- Subplot 3: Summation Signal x3 with Annotations ---
subplot(3,1,3);
plot(t*1000, x3, 'k', 'LineWidth', 2); hold on;
grid on;
title('x_3(t) = x_1(t) + x_2(t) (Measured Result)');
xlabel('Time (ms)');
ylabel('Amplitude');
ylim([-16 16]);

% --- Measurement & Annotations for Lab Report ---
% 1. Measure Maximum Amplitude (A3)
[A3_measured, idx] = max(x3);
t_peak = t(idx) * 1000; % Time of peak in ms

% Draw horizontal line to show Amplitude measurement
line([0 t_peak], [A3_measured A3_measured], 'Color', 'm', 'LineStyle', '--');
text(t_peak + 0.02, A3_measured, ['\leftarrow A_3 \approx ', num2str(A3_measured, 4)], ...
    'FontSize', 10, 'FontWeight', 'bold');

% 2. Measure Time Delay (td) for Phase
% Note: Because phi2 is positive, the peak shifts LEFT. 
% For measurement, let's look at the first peak.
line([t_peak t_peak], [0 A3_measured], 'Color', 'm', 'LineStyle', '--');
text(t_peak, -2, ['t_p = ', num2str(t_peak, 4), ' ms'], ...
    'HorizontalAlignment', 'center', 'Color', 'm');

% Add a note about Phase Calculation
annotation('textbox', [0.15, 0.02, 0.3, 0.05], 'String', ...
    ['Phase Calculation: \phi = -2\pi \cdot f \cdot t_p'], 'FitBoxToText', 'on');

fprintf('Measured Amplitude A3: %.4f\n', A3_measured);
fprintf('Measured Peak Time (ms): %.4f\n', t_peak);