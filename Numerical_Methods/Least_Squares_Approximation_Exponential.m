% Refresh
clc;
clear all;

% Given Data
x = [1, 2, 3, 4];
fx = [1.65, 2.70, 4.5, 7.35];
y = log10(fx);

% Calculate coefficients using Least Squares Regression
LHS_Mat = [length(x), sum(x); sum(x), sum(x.^2)];
RHS_Vec = [sum(y); sum(y.*x)];
C = LHS_Mat \ RHS_Vec;

% Extract Coefficients a and b
a = 10^C(1);
b = C(2) / log10(exp(1));
 
% Predicted values P(x) using obtained coefficients
Px = a * exp(b * x);

% Calculate Root Mean Square (RMS) error
error = abs(fx - 10.^Px);
