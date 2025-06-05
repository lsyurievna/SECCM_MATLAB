%Removing outliers one by one, and saving the indexes to an array called
%outliers
%At the end, going through all the vectors again to remove the values with
%indexes stored in the outliers array


%The only problem this code does not address so far is if some of the
%values are already NaN in one vector but not in another one. This is not a
%major issue as NaN in one vector will most likely mean an outlier in
%another. However, that does leave z vector with more NaN values than the
%rest. I don't really see a problem with it, and it is probably more
%beneficial to leave it as is now. 

%%
outliers = [];
[ocp, outliers] = IQR_function(ocp,outliers);
%%
[Ecorr, outliers] = IQR_function(Ecorr, outliers);

%%
[icorr, outliers] = IQR_function(icorr,outliers);

%%
[z, outliers] = IQR_function(z,outliers);

%%
ocp = rm_all_outliers(ocp,outliers);
%%
Ecorr = rm_all_outliers(Ecorr,outliers);
%%
icorr = rm_all_outliers(icorr,outliers);
%%
z = rm_all_outliers(z,outliers);

