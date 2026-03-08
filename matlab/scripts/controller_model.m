%% CONTROLLER MODEL
% Simple speed controller for EV

clear;
clc;

run("vehicle_parameters.m")

%% Desired speed
v_ref = 20; % m/s

%% Initial speed
v = 0;

%% PID gains
Kp = 5;
Ki = 1;
Kd = 0.1;

e_prev = 0;
integral = 0;

dt = 0.01;

for t = 0:dt:10

    e = v_ref - v;

    integral = integral + e*dt;

    derivative = (e - e_prev)/dt;

    u = Kp*e + Ki*integral + Kd*derivative;

    %% motor torque limit
    if u > 200
        u = 200;
    end

    %% simple vehicle model
    a = u / 1200;

    v = v + a*dt;

    e_prev = e;

end

disp("Controller simulation finished")