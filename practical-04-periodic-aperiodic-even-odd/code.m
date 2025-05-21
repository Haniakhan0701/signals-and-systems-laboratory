% Practical 04 – Periodic, Aperiodic, Even & Odd Signals

clc;
clear all;
close all;

%% Q1 - Demonstrate periodic and non-periodic signals
n = -2:12;
x1 = sin(4*n);
x2 = sin((4*pi*n)/5);

figure;
subplot(2,1,1);
stem(n, x1, 'filled');
title('Q1: Discrete-Time Non-Periodic Signal: x1[n] = sin(4n)');
xlabel('n'); ylabel('x1[n]');
grid on;

subplot(2,1,2);
stem(n, x2, 'filled');
title('Q1: Discrete-Time Periodic Signal: x2[n] = sin((4πn)/5)');
xlabel('n'); ylabel('x2[n]');
grid on;

% Even-Odd Check (Simple Comment)
% x1[n] = sin(4n) → Odd function (sin(–x) = –sin(x))
% x2[n] = sin(4πn/5) → Periodic and also Odd (same logic)

%% Q2 - Sawtooth waveform (continuous)
t = 0:0.01:2;
saw = sawtooth(2*pi*5*t);

figure;
plot(t, saw);
title('Q2: Periodic Sawtooth Waveform');
xlabel('Time'); ylabel('Amplitude');
grid on;

%% Q3 - Square waveform (continuous)
square_wave = square(2*pi*5*t);

figure;
plot(t, square_wave);
title('Q3: Periodic Square Waveform');
xlabel('Time'); ylabel('Amplitude');
grid on;

%% Q4 - Sine wave with f = 50 Hz, fs = 10 kHz for 6 cycles
f = 50;             % signal frequency
fs = 10000;         % sampling frequency
T = 1/f;            % period = 1/50 = 0.02s
t4 = 0:1/fs:6*T;    % time vector for 6 cycles

y_cont = sin(2*pi*f*t4); % Continuous
y_disc = sin(2*pi*f*t4); % Discrete (same here)

figure;
subplot(2,1,1);
plot(t4, y_cont);
title('Q4: Continuous Sine Wave (6 cycles)');
xlabel('Time'); ylabel('Amplitude');
grid on;

subplot(2,1,2);
stem(t4, y_disc);
title('Q4: Discrete Sine Wave (6 cycles)');
xlabel('Time'); ylabel('Amplitude');
grid on;
