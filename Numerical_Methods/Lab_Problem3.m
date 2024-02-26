% Clearing Screen
clc;
clear all;
% Setting x as symbolic variable
syms x;                                     %Important
% Input Section
y = x - tan(x);
a = 4.6; % inital guess
e = 1e-8; % tolerance
N = 1000; % Maximum allowed iteration
% Initializing step counter
step = 1;
% Finding derivative of given function
g = diff(y,x);                              %Important
% Finding Functional Value
fa = eval(subs(y,x,a));                     %Important

while abs(fa) > e
    fa = eval(subs(y,x,a));
    ga = eval(subs(g,x,a));
    if ga == 0
        disp("Division by zero");
        break;
    end
    b = a - fa/ga;
    fprintf('step=%d\ta=%f\tf(a)=%f\n',step,a,fa);
    a = b;
    if step > N
        disp('Not Convergent');
        break;
    end
    step = step + 1;
end

fprintf('Root is %f\n',a);