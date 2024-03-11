A = [1, 2, -1; 2, 1, -2; -3, 1, 1];
b = [3; 3; -6];

% Find out the order of the matrix A
n = length(A);

% Initialize x
x = zeros(n,1);

% Forward Elimination:
% Remember we need n-1 steps for the elimination. Therefore k=1 to n-1
for k = 1:n-1

    % Pivoting
    [~, I] = max(abs(A(k:n, k))); % I is the index of the maximum value
    i = min(I) + k - 1; % I may have multiple values, we need the lowest
    % interchange E(i) and E(k)
    A([k, i], :) = A([i, k], :);
    b([k, i]) = b([i, k]);

    % Remember we need to eliminate x_k from E(k+1) to E(n). Therefore j=k+1 to n
    for j = k+1:n
        % we need to calculate the multipliers.
        m = A(j, k) / A(k, k);

        % Update the entries in the jth row of A and b
        A(j, k:n) = A(j, k:n) - m * A(k, k:n);
        b(j) = b(j) - m * b(k);
    end
end

% Back Substitution
x(n) = b(n) / A(n, n);

for i = n-1:-1:1
    x(i) = (b(i) - A(i, i+1:n) * x(i+1:n)) / A(i, i);
end

disp(x);
