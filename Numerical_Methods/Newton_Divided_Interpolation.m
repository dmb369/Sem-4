x0 = 3;
x = [0, 1, 2, 4, 5, 6];
y = [1, 14, 15, 5, 6, 19];
n = lenght(x);
D = zeros(n);
D(:,1) = y;

for j = 2:n
    for i = j:n
        D(i,j) = (D(i, j-1) - D(i-1, j-1)) / (x(i) - x(i-j+1));
    end
end