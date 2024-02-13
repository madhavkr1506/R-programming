vector1<-seq(from = 1, to = 5,by = 1) # it is a vector 

matrix1<-matrix(c(1:9),nrow = 3,ncol = 3)  # it is a matrix of 3 by 3
matrix1

matrix2<-matrix(c(1:9),nrow = 3,ncol = 3,byrow = TRUE)
matrix2


matrix3<-t(matrix1)   # transpose of matrix
matrix3

matrix2<-matrix(c(1:9),nrow = 3,ncol = 3,byrow = TRUE,rownames<-list(c("A","B","C"),c("A","B","C")))
matrix2


is.vector(vector1)  # true
is.factor(vector1)  # false
is.factor(factor(vector1))  #true

factor1<-factor(vector1)  # it is a factor

# accessing a factor

print(factor1[1])
print(factor1[-1])
print(factor1[c(1:3)])


factor1[1]<-"M"   #Warning message:
# In `[<-.factor`(`*tmp*`, 1, value = "M") :
  # invalid factor level, NA generated
# > 
factor1

factor1[1]<-4
factor1
# we cannot assign values outside levels

vector1[1]<-"M"
vector1


dataframe1<-data.frame(name=c("A","B","C"),weight=c(100,120,130),height=c(190,191,192))
print(dataframe1)

# access name vector
dataframe1$name

# check every index; is it factor ?
dataframe1[1]<-is.factor(dataframe1[1])
dataframe1


dataframe1[1]<-factor(dataframe1[1]) # Error in xtfrm.data.frame(x) : cannot xtfrm data frames
dataframe1

# dataframe1[factor(1)]

# check is it factor?
is.factor(dataframe1$name)
is.factor(dataframe1$weight)

# make it vector
factor(dataframe1$name)


# ordering factor levels

vector2<-factor(c("A","B","C"),levels=c("C","B","A"),ordered=TRUE)
vector2



