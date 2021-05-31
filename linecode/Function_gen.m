clear
clc
close all; 
%% function generation
A_m           = 1;
f_m           = 1000;
w_m           = 2*pi*f_m; 
tmin          = 0;
tmax          = 2;
t             = ([tmin:0.001:tmax]*10^-3)';
signal        = A_m*sawtooth(- w_m * (t-.0005));
sigToSimModel = [t signal];     % to be sent to simulink model



