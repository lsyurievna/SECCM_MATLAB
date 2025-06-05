stats = ["ocp (mV)";"Ecorr (mV)";"jcorr (mA/cm^2)"; "d (um)"];

mean = nanmean(ocp, 'all');
stats(1,2) = round(mean*1000,2);
stand = std(ocp, "omitmissing");
stats(1,3) = round(stand*1000,2);
stats(1,4) = strcat(string(round(mean*1000,2)), " ± ", string(round(stand*1000,2)));

 mean = nanmean(Ecorr, 'all');
 stats(2,2) = round(mean*1000,2);
 stand = std(Ecorr, "omitmissing");
 stats(2,3) = round(stand*1000,2);
 stats(2,4) = strcat(string(round(mean*1000,2)), " ± ", string(round(stand*1000,2)));

 mean = nanmean(icorr_norm, 'all');
 stats(3,2) = mean;
 stand = std(icorr_norm, "omitmissing");
 stats(3,3) = stand;
 stats(3,4) = strcat(string(mean), " ± ", string(stand));

 mean = nanmean(z, 'all');
 stats(4,2) = mean*10^6;
 stand = std(z, "omitmissing");
 stats(4,3) = stand*10^6;
 stats(4,4) = strcat(string(mean*10^6), " ± ", string(stand*10^6));


 writematrix(stats,'Stats.csv')

 