% Practical 09 – Frequency Response of Discrete-Time Signal
clc;
clear all;
close all;

% Define transfer function: H(z) = (1 + z^-1) / (1 - 0.5*z^-1)
num = [1 1];       % Numerator coefficients
den = [1 -0.5];    % Denominator coefficients

% Frequency response using freqz
[H, w] = freqz(num, den, 512);  % 512-point frequency vector

% Magnitude and Phase Response
figure;
subplot(2,1,1);
plot(w/pi, abs(H));
title('Magnitude Response');
xlabel('Normalized Frequency (×π rad/sample)');
ylabel('|H(e^{jω})|');
grid on;

subplot(2,1,2);
plot(w/pi, angle(H));
title('Phase Response');
xlabel('Normalized Frequency (×π rad/sample)');
ylabel('∠H(e^{jω})');
grid on;

% Save output
saveas(gcf, 'output_frequency_response.png');
