clc;
clear all;
close all;

bit_stream = [0 0 1 0 0 1 1 0 0 0 1 1];
no_bits = length(bit_stream);

bit_rate = 2000;          % 2 kbps
pulse_per_bit = 2;
pulse_duration = 1/(pulse_per_bit*bit_rate);
samples_per_pulse = 500;

fs = samples_per_pulse/pulse_duration;
t = 0:1/fs:(no_bits*pulse_per_bit)*pulse_duration;
dig_sig = zeros(1,length(t));

high = 5;
low = -5;

for i = 1:no_bits
    j = (i-1)*2;
    if bit_stream(i) == 1
        dig_sig(j*samples_per_pulse+1:(j+1)*samples_per_pulse) = high;
        dig_sig((j+1)*samples_per_pulse+1:(j+2)*samples_per_pulse) = low;
    else
        dig_sig(j*samples_per_pulse+1:(j+1)*samples_per_pulse) = low;
        dig_sig((j+1)*samples_per_pulse+1:(j+2)*samples_per_pulse) = high;
    end
end

plot(t,dig_sig,'LineWidth',1.5);
grid on;
xlabel('Time (s)');
ylabel('Voltage');
title('Manchester Encoding');
ylim([-6 6]);