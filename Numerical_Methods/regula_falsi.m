f = @(x) cos(x) - x*exp(x);
x0 = 0;
x1 = 1;
tol = 1e-3;

while true
    f0 = f(x0);
    f1 = f(x1);
    x2 = x1-(((x1-x0)*f1)/(f1-f0));
    f2 = f(x2);

    if (abs(f2)) <= tol
        root = x2;
        break;
    end

    if f0*f2<0
        x1=x2;
    else
        x0=x2;
    end
end

