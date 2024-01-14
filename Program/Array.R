# Array in the R programming language : 

# compare to a matrices, array can have more than two dimensions.

# we can use array() function to create an array and dim() function to specify dimension

# array can have only one data type.

# creating one dimensional array : 
array1<-1:24
print(array1)

# creating more than one dimensional array : 
array2<-array(array1,dim=c(4,3,2))
print(array2)

# in the above example, dimension function specifies number of rows, number of columns, and last one specify how many dimension we want.

# access an array item
# syntax: array_name[row position,column position,matrix level]
array2[4,3,2]

# when we have to access whole row and column from a matrix in an array, by using c() function

array2[c(2),,1] # here 2 is row number and 1 is matrix level
array2[,c(2),1] # here 2 is column number and 1 is matrix level


# a comma(,) before c() means that we want to access the column
# a comma(,) after c() means that we want to access the row

# check if an item exists

90 %in% array2

# use dim() function to find the amount of rows and columns in an array

dim(array2)

# array length
length(array2)

# loop through an array
for(x in array2){
  print(x)
}







