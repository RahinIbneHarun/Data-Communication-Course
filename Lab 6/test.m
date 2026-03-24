close all;
clc;

chas = ['3','5','4'];

%% (E=3, F=5, G=4)
x = [
0 0 1 1 0 0 1 1 
0 0 1 1 0 1 0 1 
0 0 1 1 0 1 0 0 ];

%% Group into 3-bit symbols
symbols = reshape(x,3,[])';
nx = size(symbols,1);

f = 5;

i = 1;

labels = {}; % store legend names

while i < nx+1
    
    t = i:0.001:i+1;
    
    b = symbols(i,:);
    val = b(1)*4 + b(2)*2 + b(3);
    
    %% -------- FSK --------
    if val == 0
        freq = 1;
    elseif val == 1
        freq = 2;
    elseif val == 2
        freq = 3;
    elseif val == 3
        freq = 4;
    elseif val == 4
        freq = 5;
    elseif val == 5
        freq = 6;
    elseif val == 6
        freq = 7;
    else
        freq = 8;
    end
    
    fsk = sin(2*pi*freq*t);
    
    %% -------- Plotting --------  
    subplot(3,1,2);
    plot(t, fsk);
    hold on;
    grid on;
    axis([1 nx+1 -1.5 1.5]);
    title('8-FSK');
    
    % Store legend label
    labels{i} = ['Symbol ', num2str(i), ' (', num2str(freq), ' Hz)'];
    
    i = i + 1;
end

legend(labels);