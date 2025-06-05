%% Initialize z variable (pullup) by double-clicking on the Pullup.mat file

%% Initializing x, y, ocp

% Read the data from the text file
data = readmatrix('OCP.txt');

% Separate the columns into individual variables
ocp = data(:, 1);
x = data(:, 2);
y = data(:, 3);

%% Initializing Ecorr and icorr

% Read the data from the text file
data = readmatrix('PDP.txt');

% Separate the columns into individual variables
Ecorr = data(:,1);
icorr = data(:,2);


