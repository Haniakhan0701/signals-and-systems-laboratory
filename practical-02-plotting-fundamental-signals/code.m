% Practical 02 – Trigonometric Graphs

clc;
clear all;
close all;

x = -10:0.1:10;

% 1. Cosine Graph
subplot(3,1,1);
plot(x, cos(x), 'b');
title('Cosine Graph');
xlabel('x'); ylabel('cos(x)');
grid on;

% 2. Tangent Graph
subplot(3,1,2);
plot(x, tan(x), 'r');
title('Tangent Graph');
xlabel('x'); ylabel('tan(x)');
ylim([-10 10]); % Limiting y for clarity
grid on;

% 3. Arctangent Graph
subplot(3,1,3);
plot(x, atan(x), 'g');
title('Arctangent Graph');
xlabel('x'); ylabel('atan(x)');
grid on;
