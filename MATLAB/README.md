clc;
clear;
close all;
% Specifications
Fs = 1000;          % Sampling Frequency
Fc = 100;           % Cutoff Frequency
N = 7;              % Filter Order (8 taps)
% Design FIR Low Pass Filter
h = fir1(N, Fc/(Fs/2));
disp('Filter Coefficients:')
disp(h)
% Frequency Response
fvtool(h)
% Save coefficients
writematrix(h,'coefficients.txt');
