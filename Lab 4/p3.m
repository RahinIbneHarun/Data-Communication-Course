clc;
clear all;
close all;

bit_stream = [0 0 1 0 0 1 1 0 0 0 1 1];
no_bits = length(bit_stream);

bit_rate = 5000;          % 5 kbps
pulse_duration = 1/bit_rate;
samples_per_pulse = 500;

fs = samples_per_pulse/pulse_duration;
t = 0:1/fs:no_bits*pulse_duration;
dig_sig = zeros(1,length(t));

voltage = 5;
last_polarity = voltage;

for i = 1:no_bits
    if bit_stream(i) == 1
        dig_sig((i-1)*samples_per_pulse+1:i*samples_per_pulse) = last_polarity;
        last_polarity = -last_polarity;
    else
        dig_sig((i-1)*samples_per_pulse+1:i*samples_per_pulse) = 0;
    end
end

plot(t,dig_sig,'LineWidth',1.5);
grid on;
xlabel('Time (s)');
ylabel('Voltage');
title('AMI Encoding');
ylim([-6 6]);