%% Removes all outliers. The outlier indices are stored in a vector called outliers. 
%input vect - vector than needs to be transformed
%input outliers - vector that is goind to be filled with the indexes of
%found ouliers

function[vect] = rm_all_outliers(vect, outliers)
for i = 1:length(vect)
    for j = 1:length(outliers)
        if outliers(j) == i
            vect(i) = NaN;
        end
    end
end