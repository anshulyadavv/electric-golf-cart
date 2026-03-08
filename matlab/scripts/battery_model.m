%% BATTERY MODEL

clear;
clc;

%% Battery parameters

V_nominal = 300;
Capacity_Ah = 40;
R_internal = 0.05;

SOC = 1;   % state of charge

dt = 1;

for t = 1:100

    I = 20;   % current draw

    V = V_nominal - I*R_internal;

    SOC = SOC - I/(Capacity_Ah*3600);

end

disp("Battery simulation done")