function root = fixed_point_func(f,g,x0,tol)

while true
    x1 = g(x0);

    if abs(x1-x0) <= tol
        root = x1;
        break;
    end
    x0 = x1;
end
end