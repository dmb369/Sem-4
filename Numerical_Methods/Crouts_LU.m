A = [1, 1, 1; 4, 3, -1; 3, 5, 3];
n = length(A);
L = zeros(n);
U = zeros(n);

for k = 1:n
    U(k,k) = 1; % diagonal of U should be 1.
    for j = k:n
        L(k,j) = A(k,j) - U(k, 1:k-1)*L(1:k-1,j);
    end
    for j = k+1:n
        U(j,k) = (A(j,k) - U(j,1:k-1)*L(1:k-1,k))/L(k,k);
    end
end