A = [1, 1, 1; 4, 3, -1; 3, 5, 3];
n = length(A);
L = zeros(n);
U = zeros(n);

for k = 1:n
    L(k,k) = 1; % diagonal of L should be 1.
    for j = k:n
        U(k,j) = A(k,j) - L(k, 1:k-1)*U(1:k-1,j);
    end
    for j = k+1:n
        L(j,k) = (A(j,k) - L(j,1:k-1)*U(1:k-1,k))/U(k,k);
    end
end