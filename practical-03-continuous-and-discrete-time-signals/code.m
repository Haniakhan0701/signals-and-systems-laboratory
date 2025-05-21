% Practical 03 – Continuous and Discrete Time Signals

clc;
clear all;
close all;

% Q1: y = sin(2πf*t), f = 10Hz, fs = 100Hz
f1 = 10;
fs = 100;
t1 = 0:1/fs:1;

y_cont1 = sin(2*pi*f1*t1);
y_disc1 = sin(2*pi*f1*t1);

figure;
subplot(2,1,1);
plot(t1, y_cont1);
title('Q1: Continuous Signal - sin(2π10t)');
xlabel('Time'); ylabel('Amplitude');
grid on;

subplot(2,1,2);
stem(t1, y_disc1);
title('Q1: Discrete Signal - sin(2π10t)');
xlabel('Time'); ylabel('Amplitude');
grid on;

% Q2: y = 3sin(2πf*t) + 2cos((2πf/2)*t), f = 20Hz, fs = 100Hz
f2 = 20;
t2 = 0:1/fs:2;

y_cont2 = 3*sin(2*pi*f2*t2) + 2*cos(pi*f2*t2); % (f/2 = 10Hz)
y_disc2 = y_cont2;

figure;
subplot(2,1,1);
plot(t2, y_cont2);
title('Q2: Continuous Signal - Composite');
xlabel('Time'); ylabel('Amplitude');
grid on;

subplot(2,1,2);
stem(t2, y_disc2);
title('Q2: Discrete Signal - Composite');
xlabel('Time'); ylabel('Amplitude');
grid on;

% Q3: Unit Ramp
t3 = 0:1/fs:2;
ramp = t3;

figure;
subplot(2,1,1);
plot(t3, ramp);
title('Q3: Continuous Unit Ramp');
xlabel('Time'); ylabel('Amplitude');
grid on;

subplot(2,1,2);
stem(t3, ramp);
title('Q3: Discrete Unit Ramp');
xlabel('Time'); ylabel('Amplitude');
grid on;

% Q4: Exponential Signal
exp_sig = exp(0.5*t3);  % exponential growth

figure;
subplot(2,1,1);
plot(t3, exp_sig);
title('Q4: Continuous Exponential Signal');
xlabel('Time'); ylabel('Amplitude');
grid on;

subplot(2,1,2);
stem(t3, exp_sig);
title('Q4: Discrete Exponential Signal');
xlabel('Time'); ylabel('Amplitude');
grid on;
