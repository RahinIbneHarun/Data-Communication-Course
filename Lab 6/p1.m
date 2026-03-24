close all;
clc;
f=5;
x=[0 1 0 0 0 1 0 1 0 1 0 0 0 1 1 0 0 1 0 0 0 1 1 1]; % 24-bit

symbols = reshape(x,3,[])';
nx=size(symbols,1);

colors = lines(nx); 
labels = cell(nx,1); 

i=1;
while i<=nx
    
    t = i:0.001:i+1;
    val = symbols(i,1)*4 + symbols(i,2)*2 + symbols(i,3);
    
    ask = val * sin(2*pi*f*t);
    
    plot(t,ask,'Color',colors(i,:),'LineWidth',1.5);
    hold on;
    grid on;
    
    labels{i} = sprintf('Symbol %d: %03d ? %dV', i, val, val); % use {}
    
    i=i+1;
end

axis([1 nx+1 -7 7]);
title('8-ASK with Colored Symbols')
legend(labels,'Location','northeastoutside');