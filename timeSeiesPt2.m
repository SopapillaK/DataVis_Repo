clearvars; close all; clc;


x = rand;
for i =1:100000
    x = [x; 4*x(end)*(1-x(end))];
end

%x = rand(size(x));
L = discretize(x,20);

L1 = L(1:end-1);
L2 = L(2:end);

Ln = [L1,L2];

T = accumarray(Ln,1);

G = digraph(T)

p = plot(G)

layout(p,"circle")

%p.EdgeCData = randi([1 10],sum(~~T(:)),1);
p.EdgeCData = T(~~T(:));
colorbar

p.LineWidth = rescale(T(~~T(:)),1,5)

%spy(T)
%colorbar

%imagesc(T)
%colorbar

%plot(x)

%v1 = x(1:end-2); % x label "xn"
%v2 = x(2:end-1); % y label "xn + 1"
%v3 = x(3:end);
%plot3(v1,v2,v3, '.b')
%box on
%grid on