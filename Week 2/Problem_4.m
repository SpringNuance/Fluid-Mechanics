clear all;
clc;
% x-range
x = 0:0.25:20;
% Last digit of my sudent number is 9
% k = 0
fig1 = figure(1);
y = (0*9*x).^(1/2);
plot(y,x);

axis equal;
% k = 1
fig2 = figure(2);
y = (1*9*x).^(1/2);
plot(y,x);
axis equal;
% k = 2
fig3 = figure(3);
y = (2*9*x).^(1/2);
plot(y,x);
axis equal;
