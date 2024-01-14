#  Matrices in R programming language :
 
# Matrix is a two dimensional data set with columns and rows.
# matrix can be created with the matrix() function. specify the nrow and ncol parameters to get the amount of rows and columns.

# create the matrix : 

matrix1<-matrix(c(1,2,3,4,5,6),nrow = 3, ncol=2)
print(matrix1)

matrix2<-matrix(c("Krishna","Mahadev","Ram","Hanuman"),nrow = 2,ncol = 2)
print(matrix2)

# access the matrix 
matrix2[1,2]
matrix2[1,]
matrix2[,1]

matrix3<-matrix(c("a","b","c","d","e","f","g","h","i"),nrow = 3,ncol = 3)
print(matrix3)

# to access more than one row
matrix3[c(1,2),]
# to access more than one column
matrix3[,c(1,2)]

# add additional column
matrix3<-cbind(matrix3,c("j","k","l"))
print(matrix3)

# add additional row
matrix3<-rbind(matrix3,c("m","n","o","p"))
print(matrix3)


# note : it will remove first row and column
matrix3[-c(1),-c(1)]

# find in the matrix
"z" %in% matrix3

# find dimension of the matrix
dim(matrix3)

# use length function to find dimension of the matrix
length(matrix3)

# for loop in matrix

for(rows in 1:nrow(matrix3)){
  for(columns in 1:ncol(matrix3)){
    print(matrix3[rows,columns])
  }
}


# combine two matrices

matrix4<-matrix(c("a","b","c","d"),nrow=2,ncol=2)
matrix5<-matrix(c("e","f","g","h"),nrow=2,ncol=2)
matrix6<-rbind(matrix4,matrix5)
matrix6<-cbind(matrix4,matrix5)
print(matrix6)










