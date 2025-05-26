% Practical 11 – Fourier Series Approximation of a Periodic Signal

clc;
clear;

% Fundamental period
T = 2 * pi;
w0 = 2 * pi / T;

% Time vector
t = linspace(-2*T, 2*T, 1000);

% Original square wave signal (odd periodic function)
x = square(t);

% Number of harmonics
N = 10;

% Fourier series approximation
x_fs = zeros(size(t));

for n = 1:2:(2*N-1)  % only odd harmonics for square wave
    x_fs = x_fs + (4/pi) * (1/n) * sin(n*w0*t);
end

% Plot original signal and its Fourier approximation
figure;
plot(t, x, 'k--', 'LineWidth', 1.5); hold on;
plot(t, x_fs, 'r', 'LineWidth', 2);
legend('Original Signal (Square)', 'Fourier Approximation');
xlabel('Time');
ylabel('Amplitude');
title(['Fourier Series Approximation with N = ', num2str(N)]);
grid on;
