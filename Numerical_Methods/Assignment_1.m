% 1(a)
f = @(x) tan(pi*x) - 6;

%1(b)
x = linspace(-1,1, 150);
y = f(x);
plot(x, y, LineWidth = 3)

xlabel('Input')
ylabel('Output')
title('Plot of the Function f')

%1(c)
x0 = 0;
x1 = 0.48;
tol = 1e-8;

count = 1;

while (count <= 150)
    f0 = f(x0);
    f1 = f(x1);
    x2 = x1 - (f1*(x1-x0))/(f1-f0);
    f2 = f(x2);
    if abs(f2) < tol
        root = x2;
        break;
    end
    x0 = x1;
    x1 = x2;
    count = count+1;
end

%The iterate value are almost constant, however as they near the root their
%value spikes suddenly because of the nature of tan() function
