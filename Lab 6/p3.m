close all;
clc;
f=5;
x=[0 1 0 0 0 1 0 1 0 1 0 0 0 1 1 0 0 1 0 0 0 1 1 1]; % 24-bit

symbols = reshape(x,3,[])';
nx=size(symbols,1);

colors = lines(nx);
labels = cell(nx,1); % cell array

i=1;
while i<=nx
    
    t = i:0.001:i+1;
    val = symbols(i,1)*4 + symbols(i,2)*2 + symbols(i,3);
    
    if val==0
        phase=0;
    elseif val==1
        phase=pi/4;
    elseif val==2
        phase=3*pi/4;
    elseif val==3
        phase=pi/2;
    elseif val==4
        phase=-pi/4;
    elseif val==5
        phase=-pi/2;
    elseif val==6
        phase=pi;
    else
        phase=-3*pi/4;
    end
    
    psk = sin(2*pi*f*t + phase);
    
    plot(t,psk,'Color',colors(i,:),'LineWidth',1.5);
    hold on;
    grid on;
    
    labels{i} = sprintf('Symbol %d: %03d ? Phase %.2f rad', i, val, phase);
    
    i=i+1;
end

axis([1 nx+1 -1 1]);
title('8-PSK with Colored Symbols')
legend(labels,'Location','northeastoutside');