close all;
clc;
x=[0 1 0 0 0 1 0 1 0 1 0 0 0 1 1 0 0 1 0 0 0 1 1 1]; % 24-bit

symbols = reshape(x,3,[])';
nx=size(symbols,1);

colors = lines(nx);
labels = cell(nx,1); 

i=1;
while i<=nx
    
    t = i:0.001:i+1;
    val = symbols(i,1)*4 + symbols(i,2)*2 + symbols(i,3);
    
    f = val + 1;
    fsk = sin(2*pi*f*t);
    
    plot(t,fsk,'Color',colors(i,:),'LineWidth',1.5);
    hold on;
    grid on;
    
    labels{i} = sprintf('Symbol %d: %03d ? %d Hz', i, val, f);
    
    i=i+1;
end

axis([1 nx+1 -1 1]);
title('8-FSK with Colored Symbols')
legend(labels,'Location','northeastoutside');