%% Configure Workspace
clear;
clf;
clc;

%% Load Data and Split Variables
MyData = importdata('Autocorrelator_9_5_V2.dat');
Position = MyData(:,1);
Intensity = MyData(:,2);

%% Normalize Data and Remove Reverse Data
Intensity = Intensity - min(Intensity);
Intensity = Intensity - max(Intensity)./15;
Intensity = Intensity./max(Intensity);
FirstPos = find(min(Position) == Position);
NewPosition = Position(FirstPos:end);
NewIntensity = Intensity(FirstPos:end);

%% Graph Data
figure(1);
plot(NewPosition, NewIntensity, 'r-');
xlabel('Position (mm)')
ylabel('Intensity (nW)')
title('Compressed Autocorrelation')