% Define the matrix A and the vector b.
A = [1, 1, 1; 4, 3, -1; 3, 5, 3];
b = [1; 6; 4];
% Find out the order of the matrix A
n = length(A);
% Initialize x
x = zeros(n,1);
% Forward Elemination:
% Remember we nedd n-1 step for the elimination?? Therefore, k=1 to n-1.
for k = 1 : n-1
% Remember we need to eliminate x_k from E(k-1) to E(n). 
% Therefore j=k+1 to n.
    for j = k+1 : n
        % we need to calculate the multipliers.
        m = A(j,k)/A(k,k);
        % Performing E(j) = E(j)-m_(jk)*E(k)
        A(j,:) = A(j,:) - m*A(k,:);
        b(j) = b(j) - m*b(k);
    end
end
% back substitution
x(n) = b(n)/A(n,n);

for i = n-1 : -1 : 1
    x(i,:) = (b(i) - A(i,i+1:n)*x(i+1:n))/A(i,i);
end