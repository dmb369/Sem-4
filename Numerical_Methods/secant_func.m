function root = secant_func(f,x0,x1,tol)
while abs(x1-x0)>tol
    f0 = f(x0);
    f1 = f(x1);
    x2 = x1 - (f1*(x1-x0))/(f1-f0);
    x0 = x1;
    x1 = x2;
end
root=x1;
end 
