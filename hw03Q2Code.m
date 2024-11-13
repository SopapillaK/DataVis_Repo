clearvars; close all; clc;

% Data: Common names of species and their average relative change in abundance
species = {'Eurasian beaver (1960-2016)', 'European bison (1960-2016)', 'Grey seal (1978-2016)', 'Geoffroy''s bat (1974-2016)', ...
    'Iberian wild goat (1966-2012)', 'Grey wolf (1965-2016)', 'Southern chamois (1970-2016)', 'Chamois (1960-2016)', ...
    'Golden jackal (2001-2015)', 'Eurasian lynx (1963-2016)', 'Alpine ibex (1975-2016)', 'Wild boar (1967-2016)', ...
    'Red deer (1960-2016)', 'Eurasian otter (1977-2016)', 'Western roe deer (1966-2016)', 'Iberian lynx (1987-2016)', ...
    'Wolverine (1989-2016)', 'Ringed seal (1971-2016)', 'Eurasian badger (1960-2016)', 'Harbour seal (1960-2016)', ...
    'Loggerhead turtle (1984-2016)', 'Brown bear (1960-2016)', 'Humpback whale (1997-2009)', 'Pine marten (1986- 2016)', ...
    'Eurasian elk (1970-2016)'};

abundance = [167, 166, 63, 54, 35, 19, 15, 10, 9, 5, 4, 4, 3, 3, 3, 3, 2, 1, 1, 1, ...
    1, 0, 0, 0, 0];  % Average relative change in abundance

populations = [98, 20, 18, 12, 9, 86, 31, 31, 4, 75, 6, 73, 63, 31, 59, 7, 19, 12, 69, 32, 14, 67, 2, 25, 55];

% Create the bar chart
figure; % Open a new figure
bar(abundance);  % Create a bar chart with the abundance values

% Customize the plot
title('Average Relative Change in Abundance of Species in Europe', 'FontName', 'Times New Roman', 'FontSize', 20);  % Title of the plot
xlabel('Species', 'FontName', 'Times New Roman', 'FontSize', 20);  % Label for the x-axis
ylabel('Average Relative Change in Abundance (%)', 'FontName', 'Times New Roman', 'FontSize', 20);  % Label for the y-axis

% Set the x-axis tick labels to species names
set(gca, 'XTick', 1:length(species), 'XTickLabel', species, 'FontName', 'Times New Roman', 'FontSize', 20);

% Rotate the x-axis labels for better readability
xtickangle(45);  

% Optionally, increase the font size for clarity
set(gca, 'FontSize', 10, 'FontName', 'Times New Roman');

% Enable grid for better visualization
grid on;