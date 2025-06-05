%% OCP plot
%Needed for scatter plot, comment out for surf plot
%

droplet_size=450      ;
scatter3(x/1e-6,y/1e-6,ocp/1e-6,droplet_size,ocp,'filled'); hold on

box on
% axis tight
axis([-10 110 -10 110]) %select axis limits
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
ylabel(h, '\it{\bf{E}}\rm_{corr (ocp)} vs QRCE (V)', 'FontSize', 28, 'Interpreter', 'tex')
xlabel('X (\mum)','FontSize',28)
ylabel('Y (\mum)','FontSize',28)
%

% Set aspect ratio
daspect([1,1,1]);

%% Ecorr Plot
%Needed for scatter plot, comment out for surf plot
%

droplet_size=450;
scatter3(x/1e-6,y/1e-6,Ecorr, droplet_size,Ecorr,'filled'); hold on

box on
% axis tight
axis([-10 110 -10 110]) %select axis limits
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
ylabel(h, '\it{\bf{E}}\rm_{corr (PDP)} vs Ag/AgCl (V)', 'FontSize', 28, 'Interpreter', 'tex')
%ylabel(h, '\it{\bf{i}}\rm_{cathodic (-0.4V)} (nA)', 'FontSize', 28, 'Interpreter', 'tex')
xlabel('X (\mum)','FontSize',28)
ylabel('Y (\mum)','FontSize',28)
%

% Set aspect ratio
daspect([1,1,1]);

%% icorr Plot

%Needed for scatter plot, comment out for surf plot
%

droplet_size=450;
scatter3(x/1e-6,y/1e-6,icorr/1e-6,droplet_size,icorr/1e-12,'filled'); hold on

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
ylabel(h, '\it{\bf{i}}\rm_{corr} (pA)', 'FontSize', 28, 'Interpreter', 'tex')
%ylabel(h, '\it{\bf{i}}\rm_{cathodic (-0.4V)} (nA)', 'FontSize', 28, 'Interpreter', 'tex')
xlabel('X (\mum)','FontSize',28)
ylabel('Y (\mum)','FontSize',28)
%

% Set aspect ratio
daspect([1,1,1]);

%% PullUp plot

% Set the size of circles, you can scale the size according to your preference
% In this case, I'm scaling the size by multiplying z by a factor of 50
scatter(x/1e-6, y/1e-6, z/1e-8, z/1e-6, 'filled'); hold on

box on
axis([-10 110 -10 110]) % Select axis limits

view(2)
set(gca,'layer','top')
% Get current axes 
ax = gca;
% Reverse the direction of the y-axis 
ax.YDir = 'reverse';

% Improve contrast and visibility of the plot
shading flat; grid off;
h = colorbar('eastoutside');
h.LineWidth = 1.5;
set(gca,'FontSize',25,'LineWidth',1.5)

% Label the colorbar and axes appropriately
ylabel(h, 'Z_{retraction} (\mum)', 'FontSize', 28, 'Interpreter', 'tex');
xlabel('X (\mum)','FontSize',28)
ylabel('Y (\mum)','FontSize',28)

% Set aspect ratio
daspect([1,1,1]);




