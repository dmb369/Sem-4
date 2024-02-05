f = @(x) cos(x)-x*exp(x);
a=0;
b=1;
tol=1e-8;
 
while abs(b-a)>tol
    fa=f(a);
    fb=f(b);
    c=(a+b)/2;
    fc=f(c);
    if fa*fc<0
        b=c;
    else
        a=c;
        fa=fc;
    end
end
d = (a+b)/2;
