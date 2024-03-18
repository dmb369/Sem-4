% Define the vectors a, b, c, and d.
n = 3;
a = zeros(n,1);
b = zeros(n,1);
c = zeros(n,1);
d = zeros(n,1);
b(1) = 4; c(1) = 1; d(1) = -20;
a(2:n-1) = 1; b(2:n-1) = -4; c(2:n-1) = 1; d(2:n-1) = 40;

%% Method starts here
% Initialize x
x = zeros(n,1);

% Forward Elemination
c(1) = c(1)/b(1); d(1) = d(1)/b(1); 
for i = 2:n-1
    c(i) = c(i)/(b(i)-a(i)*c(i-1));
end
for i = 2:n
    d(i) = (d(i)-a(i)*d(i-1))/(b(i)-a(i)*c(i-1));
end

% Back Substitution
x(n) = d(n);
for i = n-1:-1:1
    x(i) = d(i)-c(i)*x(i+1);
end