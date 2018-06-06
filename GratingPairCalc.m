%% Initialize Workspace
clear;

%% Write Equations
% Temporal Redistribution of Spectral Components
GDD = @(TauOut, TauIn) sqrt(((TauIn./TauOut).^2-1)).*TauOut.^2/(4*log(2));
% Distance Between Grating Pair Given GDD
GratDis = @(CapLam, LowLam, GDD, m, ThetaI) -(2.*pi.*(2.998e8.^2).*...
    (CapLam.^2).*GDD)/(-(m.^2).*(LowLam.^3).*(1-(-m.*LowLam./CapLam-sind(ThetaI))^2).^(-3/2));

%% Calculate Distance
MyGDD = GDD(200e-15, 20e-12);
MyGratDis = GratDis(1e-6, 1032e-9,MyGDD,-1,31.3)/2

