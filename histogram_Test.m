clearvars; close all; clc;


% Step 1: Read the data (assuming a CSV file)
data = readtable('Problem01.csv');  % Replace with your file name

% Step 2: Extract the two columns of data
XData = data{:, 1};  % First column data
YData = data{:, 2};  % Second column data

% Step 3: Create a figure
figure;

% Step 4: Plot the histograms
hold on;  % Keep the current plot to overlay the next histogram
histogram(XData, 'FaceAlpha', 0.5, 'EdgeColor', 'b');  % Blue histogram for XData
histogram(YData, 'FaceAlpha', 0.5, 'EdgeColor', 'r');  % Red histogram for YData

% Step 5: Customize the plot
title('x & y Values vs Frequency');
xlabel('x & y Values');
ylabel('Frequency');
legend('x Data', 'y Data');
hold off;  % Release the current plot hold
