# R lists : 


# List is the collection of elements that can have different data types.

vector1<-c(1,2,3,4,5)
vector2<-c("Madhav","Rahul","Satyam","Rohan")

# List of vectors
list1<-list(vector1,vector2)

print(list1)

# It is of generic object consisting of an ordered collection of objects.
# List are one dimensional heterogeneous data structures.
# List can be a list of of vectors, a list of matrices, a list of characters, and a list of function, and so on.


list2<-list(place = c("Patna","Delhi"),person = c("Rahul","Rohan"))

# Accessing the list
list2$place


function1<-function(){
  print("Madhav")
}
function2<-function(){
  print("Satyam")
}
function3<-function(){
  print("Rahul")
}

# List of function

functionvector<-c(function1,function2,function3)
functionlist<-list(functionvector)
print(functionlist)

functionlist$function1 # It is printing NULL 

matrix1<-matrix(seq(from = 1,to = 9, by = 1),nrow = 3,ncol = 3)

# Define matrix
?matrix

# List of matrix
matrixlist<-list(matrix1)
print(matrixlist)

matrixlist$matrix1  # It is printing NULL


matrixlist2<-list(matrix2=matrix(seq(from = 11,to = 19, by = 1),nrow = 3,ncol = 3))
matrixlist2$matrix2  #IT is printing NULL with <- (Assignment operator)

matrixlist2[1]

matrixlist3<-list(matrix(seq(from = 21,to = 29, by = 1),nrow = 3,ncol = 3))

matrixlist3[1]

# converting a list to vector : 
convergelist<-list(100:105)
class(convergelist)
print(convergelist)

vectorconverge<-unlist(convergelist)
print(vectorconverge)

class(vectorconverge)  # It will print integer
typeof(vectorconverge)  # IT will print integer


lst<-list("A","B","C","D","E")
# Assigning elements to a list with the help of index
lst[6]<-"F"
print(lst)

# Removing element from of a list with the help of index
lst[6]<-NULL
print(lst)


onelist<-list(1,2,3,4,5)
twolist<-list(1,2,3,4,5)
print(onelist+twolist)  # Error in onelist + twolist : non-numeric argument to binary operator

# To perform arithmetic operation we have to unlist list.

onelist<-unlist(onelist)
twolist<-unlist(twolist)

print(onelist+twolist)  # now we can perform arithmetic operations


# Merging list 
mergedlist<-list(onelist,twolist)
print(mergedlist)


# R matrix : 
# Two dimensional rectangular data set.
# It is homogeneous in nature

mat<-matrix(1:9,nrow = 3,ncol = 3,byrow = TRUE,dimnames = list(c("A","B","C"),c("A","B","C")))

# Print matrix
print(mat)

# Access matrix
print(mat[1,2])

print(mat[1,])
print(mat[,1])



mat[1,1]<-"Madhav"
print(mat)




