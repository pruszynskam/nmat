function [lmbd_min_householder] = wlasna_min_householder(A)
[Q,R] = rozw_householder(A)
[n,~]= size(A)
x = ones(n,1);
for i=1:1000
    x = x/norm(x);
    Y=Q\x
    z=R\Y
    r(i) = min(abs(z./x));
    x = z;
end
lmbd_min_householder = 1/r(1000)
end
