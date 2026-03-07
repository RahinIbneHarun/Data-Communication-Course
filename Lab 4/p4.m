clc;
clear all;
close all;

bit_stream = [0 0 1 0 0 1 1 0 0 0 1 1];
no_bits = length(bit_stream);

bit_rate = 10000;         % 10 kbps
pulse_duration = 1/bit_rate;
samples_per_pulse = 500;

fs = samples_per_pulse/pulse_duration;
t = 0:1/fs:no_bits*pulse_duration;
dig_sig = zeros(1,length(t));

levels = [0 5 0 -5];  % MLT-3 levels
state = 1;

for i = 1:no_bits
    if bit_stream(i) == 1
        state = mod(state,4) + 1;
    end
    dig_sig((i-1)*samples_per_pulse+1:i*samples_per_pulse) = levels(state);
end

plot(t,dig_sig,'LineWidth',1.5);
grid on;
xlabel('Time (s)');
ylabel('Voltage');
title('MLT-3 Encoding');
ylim([-6 6]);