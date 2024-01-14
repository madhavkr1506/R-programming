# Vector in R programming language

# Data structure in R programming : vectors,matrix,array,list,data frames

# R vectors are the same as arrays in R language which are used to hold multiple data values of the same type.
# One major key point is that in R programming language the indexing of the vector will start from 1 not from 0.
# elements of vector are known as components.
# length() -->function to find number of elements in the vector.
# vector can be created by two ways : atomic vector and list.

# to combine the list of items to a vector, use the c() function and separate the items by a comma.

# to create a vector with numerical values in a sequence, use the : operator.

# to sort items in a vector alphabetically or numerically, use the sort() function.

# access vectors:
# we can access the vector items by referring to its index number inside brackets [].
# we can also access multiple elements by referring to different index positions with c() function.
# example : vector_name[c(position1,position2)]

# we can also change the value of a specific item, refer to the index number.
# vector_name[index]<-"new item"

# to repeat vectors, we use the rep() function.
# vector_name<-rep(c(item1,item2,item3),each/times = count)


# generating sequenced vectors : 
# we can generate a vector with numerical values in a sequence with the : operator
# we can also use seq() function.
# seq() function has three parameters : from(start sequence),to(sequence stop),by(interval of sequence).

vector1<-c(1,2,3,4,5)
print(vector1)

vector2<-1:5
print(vector2)

vector3<-seq(from=1,to=5,by=1)
print(vector3)

# vector1, vector2, and vector3 are numeric vector
class(vector1)
class(vector2)
class(vector3)

# Integer vector
vector4<-seq(from=1L,to=5L,by=1L)
print(vector4)
class(vector4)

# convert numeric vector into integer vector.
vector3<-as.integer(vector3)
class(vector3)


vector3<-as.character(vector3)
class(vector3)
print(vector3)


vector5<-c("Madhav","is","a","good","boy")
print(vector5)

vector6<-rep(c("Madhav","is","a","good","boy"),times = 3)
print(vector6)

vector7<-rep(c("Madhav","is","a","good","boy"),each = 3)
print(vector7)

vector8<-rep(c("Madhav","is","a","good","boy"),times=c(1,2,3,4,5))
print(vector8)


vector8[1]
vector8[c(1,5)]
vector8[-1] # if we are giving negative index then that will convert into absolute value and print all element except that index.


vector8[1:4] # print elements in range 


#  naming a vector : 
vector_name <- c("Madhav","Krishna","Kishan")
print(vector_name)
names(vector_name) = c("a1","a2","a3")
print(vector_name)

print(vector_name["a1"])