f = @(x) cos(x)-x*exp(x);
g = @(x) cos(x)*exp(-x);
tol = 1e-3;

%initial guess 
x0 = 0.5;

while true
    x1 = g(x0);
    if abs(x1-x0)<tol
        root = x1;
        break;
    end
    x0=x1;    
end