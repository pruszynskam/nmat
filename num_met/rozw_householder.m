function [Q,R] = rozw_householder(A)
%A = diag(2*ones(1,n),0) + diag(-ones(1,n-1),-1) + diag(-ones(1,n-1),+1);
[n,~] = size(A)
W = eye(n)
for i=1:n-1
    Q = eye(n)
    I = eye(n+1-i)
    a=A([i:n],[i]);
    nm = norm(a);
    nm_kwadrat = (norm(a))^2;
    if nm~=0
        gamma = nm_kwadrat + abs(a(1))*nm   
    else gamma = 1
    end
    if a(1)>=0
        u = a
        u(1) = a(1) + nm           
    else
        u = a
        u(1) = a(1) - nm
    end
    H = I - (gamma)^(-1)*(u*(u')) %wg mimu mozna szybciej
    Q([i:n],[i:n]) = H
    A = Q*A
    W = Q*W
end
Q = W'
R = A
end

