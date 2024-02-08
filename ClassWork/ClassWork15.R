# Array = the data objects which allow us to store data int more than two dimension.
# an array is created with the help of array() function.
# it uses vectors values in the dim parameter.

vector1<-c(1:16)
array1<-array(vector1,dim = c(2,4,2),dimnames = list(c("A","B"),c("A","B","C","D"),c("Matrix1","Matrix2")))
print(array1)

# print value of particular row and particular column of particular matrix
print(array1[1,1,1])
print(array1[1,1,2])

# modify value of row 1 and column 1 of matrix 1
array1[1,1,1]<-99
print(array1)

# modify value of row 1 and column 1 of matrix 1
array1[1,1,1]<-NaN
print(array1)

array1[-1,-1,-1]
print(array1)


# print row 1 and column 1 of both matrices
array1[1,1,]

# print entire row 1 of both matrices
array1[1,,]

# print entire column 1 of both matrices

array1[,1,]


# arithmetic operation
print(array1[1,2,2] * array1[2,2,2])


print(array1[1,1,] * array1[1,1,])


print(array1[,,1] * array1[,,2])


# convert array to matrix.

matrix1<-matrix(array1,nrow = 4,ncol = 4)
matrix2<-matrix(array1,nrow = 4,ncol = 4)

# perform matrix multiplication

print(matrix1 %*% matrix2)

vec1<-c(1,3,5)
vec2<-c(10,11,12,13,14,15)


# apply(x,margin,function) function 
# x = determine the input array including matrix.
# margin = margin 1 : applied across row, margin 2 : applied across the column.
# function : the function that is applied on the input data.

res1<-array(c(vec1,vec2),dim = c(3,3,1))
print(res1)

result<-apply(res1, c(3), sum)
print(result)


# lapply(x, function) : x --> determine the input vector or an object.
# function : function that is to be applied to input data.

# sapply(x,function) : x --> determines the input vector or an object. 
# function : function that is to be applied to input data.

# tapply(x,index,function) : x --> determine the input vector or an object.
# index : determine the factor vector that helps us distinguish the data.
# function : function that is to be applied to input data.



# data frame : 
name<-c("Madhav","Satyam","Rahul")
percentage<-c(67,87,80)
standard<-c("XII","XI","X")

# make data frame.
dataframe1<-data.frame(name,percentage,standard)

# print data frame.
print(dataframe1)

# view data frame.
View(dataframe1)

# add column to the data frame
dataframe1<-cbind(dataframe1,age = c(20,21,22))
View(dataframe1)

# add row to the data frame
dataframe1<-rbind(dataframe1,c("Rohan",78,"IX",19))
View(dataframe1)

# accessing the vector.
dataframe1[[1]] # it will display name in a row
dataframe1$age

as.integer(dataframe1$age)


dataframe1[1]  # it will display name in different column

dataframe1[1,1] # it will print first name of name vector

dataframe1$name[1] # it will print first name of name vector


