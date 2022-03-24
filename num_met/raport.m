function raport(n)

czas_housh = zeros(1,n);
czas_cholesky = zeros(1,n);
wbudowana_cond = zeros(1,n);
wlasna_cholesky = zeros(1,n);
wlasna_housh = zeros(1,n);

for k = 2:n
  A = diag(2*ones(k,1),0) + diag(-ones(k-1,1),1) + diag(-ones(k-1,1),-1);
  tic
  wlasna_housh(1,k) = moj_cond_householder(A);
  czas_housh(1,k)=toc
  tic
  wlasna_cholesky(1,k) = moj_cond_chol(A);
  czas_cholesky(1,k) = toc
  wbudowana_cond(1,k) = cond(A);
end

FigH = figure;
plot(1:n, wlasna_housh, 'g', 1:n, wbudowana_cond, 'b', 1:n, wlasna_cholesky, 'r')
legend('własna Householder', 'wbudowana cond', 'własna Cholesky')
exportgraphics(gcf, 'wykres_cond.jpg');

figure;
plot(1:n, czas_housh, 'g', 1:n, czas_cholesky, 'r')
legend('czas Householdera', 'czas Choleskiego')
exportgraphics(gcf, 'wykres_czas.jpg');

end

