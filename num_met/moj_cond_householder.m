function [cond2_householder] = moj_cond_householder(A)
lambda_minh = wlasna_min_householder(A);
lambda_max = wlasna_max(A);
cond2_householder = lambda_max ./ lambda_minh;
end

