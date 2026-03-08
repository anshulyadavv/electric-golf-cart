%% VEHICLE PARAMETERS
% This file contains all vehicle constants used in Simulink model

clear;
clc;

%% Vehicle mass
m = 1200;        % kg

%% Wheel parameters
R_wheel = 0.3;   % meter

%% Aerodynamic parameters
rho = 1.225;     % air density
Cd = 0.29;       % drag coefficient
A = 2.2;         % frontal area

%% Rolling resistance
Cr = 0.015;

%% Gravity
g = 9.81;

%% Battery
V_battery = 300;     % Volt
Capacity = 40;       % Ah

%% Motor limits
T_max = 200;     % Nm
W_max = 4000;    % rpm

disp("Vehicle parameters loaded")