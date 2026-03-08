%% MOTOR CALCULATION

clear;
clc;

run("vehicle_parameters.m")

%% Speed range
rpm = 0:100:4000;

%% Convert to rad/s
w = rpm * 2*pi/60;

%% Torque curve
T_max = 200;

for i = 1:length(w)

    if rpm(i) < 2000
        T(i) = T_max;
    else
        T(i) = T_max * (2000 / rpm(i));
    end

end

%% Power
P = T .* w;

%% Plot
figure
plot(rpm, T)
xlabel("RPM")
ylabel("Torque")
title("Motor Torque Curve")

figure
plot(rpm, P)
xlabel("RPM")
ylabel("Power")
title("Motor Power Curve")