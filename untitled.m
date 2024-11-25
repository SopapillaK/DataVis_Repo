clearvars; close all; clc;

x = linspace(-2*pi, 2*pi, 500);
y = linspace(-2*pi, 2*pi, 500);

f = @(x,y) sin(x.^2 + y.^2);

[X,Y] = meshgrid(x,y);

Z = f(X,Y);

surf(X,Y,Z);
shading interp
colormap jet

for i=1:360
    view(i,45)
    drawnow
end