% Practical 08 – Impulse Response of Discrete-Time Signal
clc;
clear all;
close all;

% Define the transfer function H(z) = (1 + z^-1) / (1 - 0.5*z^-1)
% Coefficients of numerator and denominator
num = [1 1];       % Corresponds to (1 + z^-1)
den = [1 -0.5];    % Corresponds to (1 - 0.5*z^-1)

% Generate the impulse signal (delta function)
n = 0:20;                  % Time index
x = [1 zeros(1,20)];       % Impulse at n = 0

% Compute impulse response using filter
h = filter(num, den, x);

% Compute step response
u = ones(1, 21);           % Step input
s = filter(num, den, u);   % Step response

% Plot impulse response
subplot(2,1,1);
stem(n, h, 'filled');
title('Impulse Response h[n]');
xlabel('n');
ylabel('Amplitude');
grid on;

% Plot step response
subplot(2,1,2);
stem(n, s, 'filled');
title('Step Response s[n]');
xlabel('n');
ylabel('Amplitude');
grid on;

% Save plot
saveas(gcf, 'output_impulse_step.png');
