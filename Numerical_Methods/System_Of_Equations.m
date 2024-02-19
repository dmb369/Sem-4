%We assume X=[x:y], that means x=X(1) and y=Y(1)

F = @(X) [X(2)*cos(X(1)*X(2))+1;
          sin(X(1)*X(2))+X(1)-X(2)];

J = @(X) [-X(2)^2*sin(X(1)*X(2)), cos(X(1)*X(2))-X(1)*X(2)*sin(X(1)*X(2));
           X(2)*cos(X(1)*X(2))+1, X(1)*cos(X(1)*X(2))-1];

%other inputs
tol = 1e-8;
N = 1000;
X0 = [1;2];

for i=1:N
    %the method
    h = -J(X0)\F(X0);
    X1 = X0 + h;
    %stopping criterion
    if norm(X1 - X0, Inf)<tol
        disp("The root is")
        disp(X1)
        break;
    end
    %prepare for next iteration
    X0 = X1;
end

if i==N
    disp("method fails")
end


