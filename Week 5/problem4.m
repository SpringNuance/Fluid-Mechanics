clc; 

% The high pressure between 500 bar (500 x 10^6Pa) and 2000 (2000 x 10^6 Pa) bar
P1 = 500*10^5:100*10^5:2000*10^5;
disp(P1);
% Bernoulli equation
% P1 + 1/2*rho*V1^2 + rho*g*z1 = P2 + 1/2*rho*V2^2 + rho*g*z2
% V1 is very small, so V1 = 0
% I assume that z1 = z2, because the exercise doesnt clearly state about
% this, so the final Bernoulli equation is
% P1 = P2 + 1/2*rho*V2^2
% Diesel density I choose 830kg/m3 at room temperature
% First case: P1 = 10 bar = 10 * 10^5 Pa
V2 = sqrt(2*(P1 - 10*10^5)/830); 
plot(P1, V2, 'b', 'DisplayName', 'Backpressure P1')
hold on; 
% Second case: P2 = 100 bar = 100 * 10^5 Pa
V2 = sqrt(2*(P1 - 100*10^5)/830); 
plot(P1, V2, 'k', 'DisplayName',"Backpressure P2" )
% Third case: P3 = 200 bar = 200 * 10^5 Pa
V2 = sqrt(2*(P1 - 200*10^5)/830); 
plot(P1, V2, 'r','DisplayName',"Backpressure P3")
% adding axes labels and legend
xlabel("High pressure before nozzle hole (Pa)");
ylabel("Velocity of fluid after nozzle exit (m/s)");
legend("Backpressure P1 = 10 bar", "Backpressure P2 = 100 bar", "Backpressure P3 = 200 bar")
