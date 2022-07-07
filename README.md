# Numerical methods project

For a given symmetric matrix of size n with elements from the set of real numbers and a spectrum of the form:

Abs(lambda1)>Abs(lambda2)>Abs(lambda3)>…>Abs(lambda(N-2))>Abs(lambda(N-1))>Abs(lambdaN)

I wrote the functions moj_cond_chol() and moj_cond_householder() to determine its conditioning index in norm two by determining the largest (funkcja własna_max()) and smallest (funkcja własna_min_ chol() and funkcja własna_ min_householder()) as to the absolute value of the eigenvalue. I used the power method and the inverse power method to calculate the eigenvalues. 

I solved the systems of equations in the inverse power method by calling the following functions
1. chol() — Banachiewicz-Choleski decomposition, LLT (Octave built-in function)
2. rozw_houscholder() — decomposition of matrix A by the Householder reflection method ( self-written function).

Source code files available (moj_ cond_chol.m, moj_ cond_ householder.m,
wlasna_ min_ chol.m, wlasna_ min_ householder.m, wlasna_ max.m, rozw_ houscholder.m) and file
raport.m with function raport() dependent from n parameter, which, for a sequence of matrices of size
k in {2,3,....,n} and structure determines - using the two ways of solving systems of equations described above - the conditioning indices, then:

1.	draws a line graph comparing the values of the conditioning indices obtained from the built-in Octave cond function and the moj_cond_ chol() i moj_ cond_householder()
2.	saves it to a file wykres_ cond.jpg
3.	draws a line graph comparing the times to solve each system of equations using two methods 
4.	saves it to a file wykres_ czas .jpg.

Function raport consists of one parameter only.  

Matrix:

![image](https://user-images.githubusercontent.com/100381554/172931732-aa9ab3af-5377-4552-ae9c-26a3f089276f.png)
