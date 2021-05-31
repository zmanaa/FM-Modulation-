%%                = MATLAB Script for the FM Modulation =
%        model for Frequency modulation using script line codes and simulink
%              CIE337 - Communications Theory and Systems - SPRG21
%     ====================================================================
%                            == Documentation ==
%     ====================================================================
%    1 - The file "main.m" is the file in which all modules are excuted.
%    2 - it's preferable to run the entire main.m file rather than running
%        separate sections in order to work correctly.
%    3 - the "main.m" file is calling scripts for each part written in
%        different scripts.
%     ====================================================================
%%
clear;
clc;
close all;
%% MATLAB Line Code
cd linecode                            % changing directory
signal_plots;                          % calling script
%% Simulink self-implemented model
cd ..                                  % changing directory
cd simulink_self_implemented_sawtooth  % changing directory
simulink_linecode;                     % calling script
cd ..
cd simulink_self_implemented_sine
simulink_linecode_sine;                % calling script
%% Simulink using communications toolbox implemented modulation module
cd ..
cd simulink__builtin_sawtooth  % changing directory
simulink_builtin_linecode;
cd ..
cd simulink_builtin_sine % changing directory
simulink_builtin_linecode;
%%
cd ..       %back to root location