clearvars; close all; clc;

% Step 1: Read the data (assuming a CSV file)
data = readmatrix('Problem01');  % You can use readtable, csvread, or importdata based on your file type.

% Step 2: Extract the variable to create a boxplot
% Assuming the data is numeric and you want to plot the first column:
boxchart(data)
xlabel('X & Y Values')
ylabel('Frequency')
title('X & Y Values vs Frequency')
