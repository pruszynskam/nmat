function  [cond_chol] = moj_cond_chol(A)
lmbd_min_chol = wlasna_min_cholesky(A)
lmbd_max = wlasna_max(A)
cond_chol = lmbd_max/lmbd_min_chol
end
