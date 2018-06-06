%% Long Throw Autocorrelater Data
% Initialize Workspace
clear;
clf;

% Load Data
MyData = xlsread('CompressedLTAuto.xlsx');
Position = MyData(:,1);
Position = Position - 12.5;
Position = Position*10^(-3);
LightsOn = MyData(:,2);
LightsOff = MyData(:,3);
MyData(21:25,3) = 590;

% Plot Position vs. Intensity
figure(1);
plot(Position, LightsOn, 'b-');
title('Autocorrelation: Lights On');
ylabel('Intensity (Units Unknown)');
xlabel('Position (mm)');
figure(2);
plot(Position, LightsOff, 'r--');
title('Autocorrelation: Lights Off');
ylabel('Intensity (Units Unknown)');
xlabel('Position (mm)');

% Calculate and Plot Time vs. Intensity
Tau = (Position/3.0e8)*2; % double pass transit
Tau = Tau*10.^(12)
Intensity = LightsOff
Intensity = Intensity - min(Intensity);
Intensity = Intensity/max(Intensity);
figure(3);
plot(Tau, Intensity, 'g-')
title('Autocorrelation: Time vs. Intensity')
xlabel('Time Delay (ps)')
ylabel('Intensity (Units Unknown)')




