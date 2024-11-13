clearvars; close all; clc;

%This is a time portait

f = @(t, x) [10*(x(2)-x(1));
            x(1)*(28-x(3))-x(2);
            x(1)*x(2)-(8/3)*x(3)];
[t,X] = ode45(f,[0 100],rand(3,1));

x = X(:,1);

for i=1:size(X,1)
    plot3(X(:,1), X(:,2), X(:,3))
    hold on
    plot3(X(i,1), X(i,2), X(i,3), 'or', "MarkerFaceColor", 'red') %doesnt work as indented. red msrker suppose to move long line
    hold off
end