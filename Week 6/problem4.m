clc; 

set(0,'DefaultAxesFontWeight','default')
set(0,'DefaultAxesFontSize',(12))
set(0,'DefaultTextFontSize',(12))
rhoo_l= 800; % liquid density
% Make a loop over the injection pressure. Make the loop from e.g.
% 1 – 100
v = zeros(100,100);
for i= 1:100
% Make another loop for the backpressure. Make this loop also from
% 1 - 100
for j=1:100
% In the loop, define the injection pressure (320 - 2300bar with
% 20bar steps)
injectPressure = 320*10^5:20*10^5:2300*10^5;
% Define the backpressure (22 - 220 bar with 2 bar intervals)
backPressure = 22*10^5:2*10^5:220*10^5;
v(j,i)= sqrt(2*(injectPressure(i) - backPressure(j))/rhoo_l); % Calculate the injection velocity based on injection
% pressure and backpressure
end
end
[x,y]=meshgrid(320:20:2300,22:2:220); % Lets make a mesh into which we
% plot the result. This is ready as it is above.
contourf(x, y, v) % Plot the figure
colormap jet(20) % you can use e.g. this color map if you like
% Axis texts
title("2D injection velocity contour plot")
xlabel("Injection pressure (Bar)")
ylabel("Back pressure (Bar)")
% Add color map scale to the plot and axis text
c = colorbar;
c.Label.String = 'Injection velocity [m/s]';
c.Label.FontSize = 14;
