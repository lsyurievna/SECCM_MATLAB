clear;
close all;
clc;

%% Experiment Details

file = 'Pullup'; % Insert file name
S = load(file);
num_landings_y = 10; % Size of grid in y-axis
num_landings_x = 10; % Size of grid in x-axis
landing_separation_y = 15; % Separation between landing points in y
landing_separation_x = 15; % Separation between landing points in x
data_points = 1001; % Matrix elements
num_traces = 400; % Number of the last trace

A = 4:4:num_traces; % Even values
D = numel(A);

%% Preparation of variables to dump extracted values
currents = zeros(data_points, D);
distances = zeros(data_points, D);
ipullup = NaN(1, D);
dpullup = NaN(1, D);

format_spec = 'Trace_3_%d_1_3'; % Corrected format

%% Extract Data
for k_idx = 1:D
    k = A(k_idx);
    trace_name = sprintf(format_spec, k);
    
    if isfield(S, trace_name)
        current_data = S.(trace_name);
        
        % Invert data order (bottom to top)
        inverted_currents = flipud(current_data(:, 2));
        inverted_distances = flipud(current_data(:, 1));
        
        % Set threshold (current > 7e-12 or current < -7e-12)
        threshold_pos = 5.000e-13;
        threshold_neg = -5.000e-13;
        
        % Find the first index crossing the threshold from bottom
        index = find(inverted_currents > threshold_pos | inverted_currents < threshold_neg, 1, 'first');
        
        if ~isempty(index)
            ipullup(k_idx) = inverted_currents(index);
            dpullup(k_idx) = inverted_distances(index);
        end
    else
        warning('Field %s does not exist in the data file.', trace_name);
    end
end

%% Column of Compiled Data
x = repmat(0:landing_separation_x:landing_separation_x * (num_landings_x - 1), num_landings_y, 1);
y = repmat(0:landing_separation_y:landing_separation_y * (num_landings_y - 1), num_landings_x, 1)';
x = x(:);
y = y(:);

z = dpullup; % Use dpullup or ipullup for plotting as required
z = z(:);
