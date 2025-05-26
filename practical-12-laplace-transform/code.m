% Practical 12 – Laplace Transform with Plots

clc;
clear;

% Define symbolic and numeric variables
syms t s
time = linspace(0, 5, 500); % Time vector for plotting

% ----------- Function 1: f1(t) = exp(-2t) -----------
f1 = exp(-2*t);
F1 = laplace(f1, t, s);
disp('Laplace Transform of f1 = exp(-2t):');
pretty(F1)

% Plot f1(t)
f1_numeric = double(subs(f1, t, time));
figure;
plot(time, f1_numeric, 'LineWidth', 2);
title('f1(t) = exp(-2t)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% ----------- Function 2: f2(t) = sin(3t) -----------
f2 = sin(3*t);
F2 = laplace(f2, t, s);
disp('Laplace Transform of f2 = sin(3t):');
pretty(F2)

% Plot f2(t)
f2_numeric = double(subs(f2, t, time));
figure;
plot(time, f2_numeric, 'r', 'LineWidth', 2);
title('f2(t) = sin(3t)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% ----------- Function 3: Inverse Laplace -----------
F3 = 1 / (s^2 + 4*s + 5);
f3 = ilaplace(F3, s, t);
disp('Inverse Laplace of F3 = 1 / (s^2 + 4s + 5):');
pretty(f3)

% Plot inverse Laplace result
f3_numeric = double(subs(f3, t, time));
figure;
plot(time, f3_numeric, 'g', 'LineWidth', 2);
title('Inverse Laplace of F3');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
