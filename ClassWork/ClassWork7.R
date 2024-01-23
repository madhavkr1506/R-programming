vector1<-c(1,2,3,4,5)
vector2<-c(6,7,8,9,0)
print(vector1 & vector2)

# note : '&&' operation use for scalar logical and operation, meaning it will work on individual logical values, not on vectors or arrays.
print(vector1[5] && vector2[5])

# note : '||' operation use for scalar logical or operation, meaning it will work on individual logical values, not on vectors or arrays.
print(vector1[5] || vector2[5])

# to get working directory : 
getwd()

# sequence function : seq()
vector3<-seq(from = 1,to = 5,by = 1)
print(vector3)

# using colon ( : )
vector4<-1:5
print(vector4)


# %in% operator : 
4 %in% vector4

# %*% operator : 

matrix1<-matrix(c(1,2,3,4,5,6),nrow = 2,ncol = 3)
matrix1

# It will store transpose of matrix1
matrix2<-(t(matrix1))
print(matrix2)

# product of matrix1 and matrix2
print(matrix1 %*% matrix2)

# print(matrix1 * matrix2) --> It is non conformable arrays, it will throw an error.

num1<-12
num2<-12
num1 %*% num2

# list in r programming : 
Lists<-list(c(1,2,3,4,5),c("a","b","c","d","e"),c(1,2,3,"a","b"))
print(Lists)

# List modification : 
Lists[1]<-list(c(6,7,8,9,0))

print(Lists)

# way to access the list : 
Lists[1]

# Array in R programming : 
array1<-array(c(1,2,3,4,5,6,7,8),dim = c(2,2,2))
print(array1)


# error in opening file : 

csv_data<-read.table(file = "Book1.csv",header = T,sep = ",")
View(csv_data)
