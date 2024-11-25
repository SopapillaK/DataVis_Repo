clearvars; close all; clc;

data = readmatrix('Problem02');

t = data(:,1);
x = data(:,2);
y = data(:,3);
z = data(:,4);

L = discretize(x,20);

L1 = L(1:end-1);
L2 = L(2:end);

Ln = [L1,L2];

T = accumarray(Ln,1);

%spy(T);

% title('Transistion Matrix of Variable x');
% xlabel('x');
% ylabel('x - 1');

G = digraph(T)

p = plot(G)

title('Directed Visualization of Transistion Matrix for Variable x');
