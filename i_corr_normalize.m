%Normalize currents and spit them out as mA/cm^2
%Same units are used for macro experiments
for i = 1 : length(z)
    current_in_mA = icorr*10^3;
    d_in_cm = z*100;
    area_in_sqcm = d_in_cm.^2.*pi()./4;
    icorr_norm = current_in_mA./area_in_sqcm
    %norm = icorr(i)*10^(3)/((z(i)*100)^2*1/4*pi());
    %norm_icorr(i) = norm; 
end


%% icorr_normalized Plot

%Needed for scatter plot, comment out for surf plot
%

droplet_size=450;
scatter3(x/1e-6,y/1e-6,icorr,droplet_size,norm_icorr,'filled'); hold on

box on
% axis tight
axis([-10 100 -10 110]) %select axis limits
%
view(2)

set(gca,'layer','top')
% caxis([0 4])

% Get current axes 
ax = gca;
% Reverse the direction of the y-axis 
ax.YDir = 'reverse';
shading flat; grid off;
h=colorbar('eastoutside');
h.LineWidth = 1.5;
set(gca,'FontSize',25,'LineWidth',1.5)
%ylabel(h,'Z_{landing} (\mum)','FontSize',20);
%ylabel(h,'Z_{pullup} (\mum)','FontSize',20);
ylabel(h, '\it{\bf{j}}\rm_{corr} (mA/cm^2)', 'FontSize', 28, 'Interpreter', 'tex')
%ylabel(h, '\it{\bf{i}}\rm_{cathodic (-0.4V)} (nA)', 'FontSize', 28, 'Interpreter', 'tex')
xlabel('X (\mum)','FontSize',28)
ylabel('Y (\mum)','FontSize',28)
%

% Set aspect ratio
daspect([1,1,1]);

