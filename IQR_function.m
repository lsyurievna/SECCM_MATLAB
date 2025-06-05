%Deletes outliers from an input vector using IQR method
%input vect - vector than needs to be transformed
%input outliers - vector that is going to be filled with the indexes of
%output outliers - vector filled with the indexes of found outliers
%found ouliers
%r interquartile range 
%Q1 25 percentile - below this value lie 25% of data
%Q3 75 percentile - above this value lie 75% of data

function [vect, outliers] = IQR_function(vect,outliers)
    r = iqr(vect);
    Q1 = quantile(vect, 0.25);
    Q3 = quantile(vect, 0.75);

    lower_bound = Q1 - 1.5*r;
    upper_bound = Q3 + 1.5*r;
    
    %If a value is below the lower bound or above the upper bound
    %it will be assigned NaN value, and its index will be added to the
    %outliers vector.
    i = 1;
    for i = i:length(vect)
        if (vect(i) < lower_bound) | (vect(i) > upper_bound) 
            
            %If the index is already in the outliers vector, it won't be
            %added again
            logic = false;
            for j = 1: length(outliers)
                if i == outliers(j)
                    logic = true;
                end
            end
            if logic == false
                outliers(end+1) = i;
            end
            vect(i) = NaN;
        end
    end
end
 
