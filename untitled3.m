clearvars; close all; clc;

[X,Y] = meshgrid(linspace(-10,10,100));

Z = sin(sqrt(X.^2+Y.^2)); %+0.25*randn(size(X)));

%I = imread("cameraman.tif")
%subplot(1,2,1)
%imshow(I)

%subplot(1,2,1)
contourf(X,Y,Z,50,"EdgeColor","none")%contourf(flipud(I)) %contourf fills btwn the lines
colorbar
shading interp