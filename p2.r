A<-matrix(1:9,nrow = 3)
B<-matrix(10:18,nrow = 3)

cat("Matrix A:\n")
print(A)

cat("Matrix B:\n")
print(B)

#a) transpose of the matrices
cat("\nTranspose of matrixA:\n")
A_transpose<-t(A)
print(A_transpose)

cat("\nTranspose of matrix B:\n")
B_transpose<-t(B)
print(B_transpose)

#b)addition
cat("\nAddition of matrices:\n")
addition_result<-A+B
print(addition_result)

cat("\n Subtraction of matriices:\n")
subtraction_result<-A-B
print(subtraction_result)

cat("\nMultiplication of matrices:\n")
multiplication_result<-A%*%B
print(multiplication_result)