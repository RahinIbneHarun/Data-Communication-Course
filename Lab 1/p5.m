% --- PART (e): Summing the signals and plotting ---

% 1. Setup background variables (so this file runs on its own)
f = 5417; A1 = 23; A2 = 73; 
j1_rad = 47 * (pi/180); j2_rad = 30 * (pi/180);
t = -(1/f) : (1/f)/100 : 2*(1/f);
x1 = A1 * cos(2*pi*f*t + j1_rad);
x2 = A2 * cos(2*pi*f*t + j2_rad);

% 2. MAIN PART (e) CODE: Create the third sinusoid as the sum
x3 = x1 + x2; 

% 3. Plotting in a three-panel subplot
figure;

% Re-draw panel 1 and 2 quickly so the window isn't empty
subplot(3,1,1); plot(t, x1, 'b'); grid on; title('Signal 1: x_1(t)');
subplot(3,1,2); plot(t, x2, 'r'); grid on; title('Signal 2: x_2(t)');

% Plot x3 in the 3rd panel
subplot(3,1,3);
plot(t, x3, 'g', 'LineWidth', 1.5);
grid on;
title('Summed Signal: x_3(t) = x_1(t) + x_2(t)');
xlabel('Time (seconds)');
ylabel('Amplitude');