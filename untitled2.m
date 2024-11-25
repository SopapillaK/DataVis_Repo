clearvars; close all; clc;

% X = [randn(100,3), randi([1 100],100,2)];
% 
% scatter3(X(:,1), X(:,2),X(:,3),X(:,4),X(:,5),"filled") 
% colorbar

x = linspace(-100,100,100);
y = sin(x.^2);

for i=1:length(x)
    plot(x,y)
    hold on
    plot(x(i),y(i), 'o', 'MarkerFaceColor', "red")
    hold off
    drawnow
    pause(0.1)
end