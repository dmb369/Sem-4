function root = bisection_func(f,a,b,tol)
while abs(b-a)>tol
    fa = f(a);
    fb = f(b);
    c=(a+b)/2;
    fc=f(c);
    if fa*fc<0
        b=c;
    else
        a=c;
        fa=fc;
    end
end
root = (a+b)/2;
end 
