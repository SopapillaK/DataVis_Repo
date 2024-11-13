clearvars; close all; clc;

% Import data from Excel
filename = 'HW03_Data.csv';  % Replace with your Excel file name
data = readtable(filename);  % Read the entire sheet into a table

% Extract time and data from the table
time = data{:, 1};  % The first column is the time
values = data{:, 2};  % The second column is the data

% Plot the time series data
% figure;
% plot(time, values);
% xlabel('Day Index of Observation', 'FontName', 'Times New Roman', 'FontSize', 20);
% ylabel('Population Ratio to Maximum Environment Capacity', 'FontName', 'Times New Roman', 'FontSize', 20);
% title('Population Ratio to Maximum Environment Capacity per Day', 'FontName', 'Times New Roman', 'FontSize', 20);
% grid on;

L = discretize(values, 1000);

L1 = L(1:end-1);
L2 = L(2:end);

Ln = [L1, L2];

T = accumarray(Ln, 1);

spy(T);

title('Proof of Deterministic Behavior', 'FontName', 'Times New Roman', 'FontSize', 15); %Title need to ask prof
xlabel('xn', 'FontName', 'Times New Roman', 'FontSize', 20);
ylabel('xn + 1', 'FontName', 'Times New Roman', 'FontSize', 20);