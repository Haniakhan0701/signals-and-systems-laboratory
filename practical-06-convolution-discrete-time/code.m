% Practical 06 – Convolution of Discrete-Time Signals
clc;
clear all;
close all;

%% Q1
% Given signals
x1 = [0.5 0.5 0.5];
h1 = [3.0 2.0 1.0];

% Convolution using MATLAB
y1 = conv(x1, h1);

% Manual Convolution (for verification)
% You can verify it manually but here we use built-in conv
n1 = 0:length(y1)-1;

% Plotting
figure;
stem(n1, y1, 'filled');
title('Q1: Convolution of x[n] = [0.5 0.5 0.5] and h[n] = [3 2 1]');
xlabel('n'); ylabel('Amplitude');
grid on;

% Save output
saveas(gcf, 'output_q1_convolution.png');

%% Q2
x2 = [1 2 3];
h2 = [1 1];

y2 = conv(x2, h2);
n2 = 0:length(y2)-1;

figure;
stem(n2, y2, 'filled');
title('Q2: Convolution of x[n] = [1 2 3] and h[n] = [1 1]');
xlabel('n'); ylabel('Amplitude');
grid on;

% Save output
saveas(gcf, 'output_q2_convolution.png');
