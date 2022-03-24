function [lmbd_max] = wlasna_max(A)
[n,~] = size(A)
x = ones(n,1);
for i=1:1000
    x = x/norm(x);
    y = A*x;
    r(i) = max(abs(y./x));
    x = y;
end
lmbd_max = r(1000)
end
