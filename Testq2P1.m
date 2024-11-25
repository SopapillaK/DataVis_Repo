clearvars; close all; clc;

data = readmatrix('Problem02');

t = data(:,1);
x = data(:,2);
y = data(:,3);
z = data(:,4);

figure;
plot(t, x);
hold on
plot(t, y);
hold on
plot(t,z);% '-o' adds markers at each data point

% Step 2: Customize the plot
title('Time Series Plot for x, y, z Values');
xlabel('Time');
ylabel('x, y, z Values');
grid on;  % Turn on the grid for better visibility