clearvars; close all; clc;

I = dir("01\");

X = [];

for i = 1:length(I)
    if ~I(i).isdir
        A = imread(['01\' I(i).name]);

        X = [X, A(:)]; %will make a matrix just one column
    end
end

X = double(X);

[u,s,v] = svd(X); %s is the sigma numers

diagS = diag(s)

PC = X*v;

for i=1:4
    subplot(1,4,i)
    imagesc(reshape(PC(:,i), [28 28]))
    axis off %axis means nothing when showing images
    box on

    title(['PC ' num2str(i)], 'FontName', 'Times New Roman', 'FontSize', 30); % Specify Times New Roman for title % Add titles for each principal component
end


for i=1:length(diagS)
    E(i) = sum(diagS(1:i).^2)/sum(diagS.^2); %x axis is the singular values index, y is the energy
end
figure
plot(E)

hold on

% Define the specific point you want to show (replace x_val and y_val with your values)
y_val = 0.98; % Corresponding y-value
x_val = find(E >= y_val, 1); % Find the index where E first reaches or exceeds y_val

% Check if x_val is valid
if ~isempty(x_val)
    % Plot the specific point
    plot(x_val, y_val, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r'); % 'ro' for red circle
    text(x_val, y_val, sprintf('(%d, %.2f)', x_val, y_val), 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
else
    disp('The specified y_val is not within the range of E.');
end

% Add labels and title
xlabel('Index of Singular Values', 'FontName', 'Times New Roman', 'FontSize', 20); % x-axis label
ylabel('Energy', 'FontName', 'Times New Roman', 'FontSize', 20);                   % y-axis label
title('Energy vs. Index of Singular Values for File Group 01', 'FontName', 'Times New Roman', 'FontSize', 25);
hold off