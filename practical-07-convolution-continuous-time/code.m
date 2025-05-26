% Practical 07 – Convolution of Continuous-Time Signals
clc;
clear all;
close all;

% Time resolution
T = 0.1;
t = -1:T:5;

% Define two square pulses
% Signal 1: width 2, height 1, from t=0 to t=2
x = zeros(size(t));
x(t >= 0 & t <= 2) = 1;

% Signal 2: width 1, height 1, from t=0 to t=1
h = zeros(size(t));
h(t >= 0 & t <= 1) = 1;

% Plot signal 1
subplot(3,1,1);
plot(t, x, 'LineWidth', 2);
title('Signal 1: Rectangular Pulse (width=2)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Plot signal 2
subplot(3,1,2);
plot(t, h, 'LineWidth', 2);
title('Signal 2: Rectangular Pulse (width=1)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Perform convolution
y = conv(x, h) * T;

% New time vector for convolution result
t_conv = (min(t) + min(t)) : T : (max(t) + max(t));

% Plot convolution result
subplot(3,1,3);
plot(t_conv, y, 'LineWidth', 2);
title('Convolution Result of Signal 1 and Signal 2');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Save plot
saveas(gcf, 'output_convolution_cts.png');
