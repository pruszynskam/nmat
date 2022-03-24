
function [lmbd_min_chol] = wlasna_min_chol(A)
[n,~] = size(A)
x = ones(n,1);
U = chol(A);
L = transpose(U);
for i=1:1000
    x = x/norm(x);
    Y=L\x
    z=U\Y
    r(i) = min(abs(z./x));
    x = z;
end
lmbd_min_chol = 1/max(abs(r))
end
