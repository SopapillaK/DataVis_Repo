clearvars; close all; clc;

data = readmatrix('Problem02');

t = data(:,1);
x = data(:,2);
y = data(:,3);
z = data(:,4);

figure 
plot3(x,y,z);

title('Phase Portrait Plot of x, y, z Variables');
xlabel('x Variables');
ylabel('y Variables');
zlabel('z Variables');
grid on;