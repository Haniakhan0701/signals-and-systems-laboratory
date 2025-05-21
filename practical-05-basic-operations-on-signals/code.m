% Practical 05 – Signal Operations

clc;
clear all;
close all;

% Define discrete-time signals
n = -5:5;
x1 = sin(0.3*pi*n);   % First signal
x2 = cos(0.3*pi*n);   % Second signal

%% Q1 - Addition of two discrete-time signals
x_add = x1 + x2;
figure;
stem(n, x_add, 'filled');
title('Q1: Addition of x1[n] + x2[n]');
xlabel('n'); ylabel('Amplitude');
grid on;

%% Q2 - Multiplication of two discrete-time signals
x_mult = x1 .* x2;
figure;
stem(n, x_mult, 'filled');
title('Q2: Multiplication of x1[n] * x2[n]');
xlabel('n'); ylabel('Amplitude');
grid on;

%% Q3 - Signal Shifting (Right: delay by 2 units, Left: advance by 2 units)
n_shift_right = n + 2;  % Delay
n_shift_left = n - 2;   % Advance

figure;
subplot(2,1,1);
stem(n_shift_right, x1, 'filled');
title('Q3: Right Shifted Signal (x[n-2])');
xlabel('n'); ylabel('Amplitude');
grid on;

subplot(2,1,2);
stem(n_shift_left, x1, 'filled');
title('Q3: Left Shifted Signal (x[n+2])');
xlabel('n'); ylabel('Amplitude');
grid on;