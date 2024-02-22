# function in r programming language : 

# function are created in r by using the command function().

# types of function : 
# 1. built in function : pre-defined function. --> sum(),max(),min()
# 2. user defined function

# mathematical function : 

# 1. abs() --> calculates a number's absolute value.
# 2. sqrt() --> calculates a number's square root
# 3. round() --> round a number to the nearest integer
# 4. exp() --> calculates a number's exponential value
# 5. log() --> calculates a number's natural logarithm
# 6. cos(),sin() and tan() --> calculates a number’s cosine, sine, and tang.

# statistical function : 

# 1. mean() --> A vector’s arithmetic mean is determined by the mean() function. 
# 2. median() --> A vector’s median value is determined by the median() function.
# 3. cor() --> calculates the correlation between two vectors.
# 4. var() --> calculates the variance of a vector and calculates the standard deviation of a vector.


# data manipulation function : 

# 1. unique() --> returns the unique values in a vector.
# 2. subset() --> subsets a data frame based on conditions.
# 3. aggregate() --> groups data according to a grouping variable.
# 4. order() --> uses ascending or descending order to sort a vector.

# file input/ output function : 

# 1. read.csv() --> reads information from a CSV file. 
# 2. Write.csv() --> publishes information to write a CSV file.
# 3. Read.table() --> reads information from a tabular.
# 4. Write.table() --> creates a tabular file with data.


# function 1

function1<-function(){
  print("Madhav")
}

function1()

# function 2

function2<-function(num){
  print(sqrt(num))
}
function2(4)


# function 3

vector1<-vector("numeric",length = 10)
vector1<-c(1:8)

function3<-function(vector1){
  sorted.vector<-sort(vector1,decreasing = TRUE)
  for(i in sorted.vector){
    print(i)
  }
}


function3(vector1)


# function 4

vector2<-rep(c("Madhav","Krishna"),each = 2)
vector2<-rep(c("Madhav","Krishna"),times = 2)

# vector2<-c(rep("Madhav","Krishna"),each = 2)  --> NAs introduced by coercion

# vector2<-rep(c("Madhav","Krishna"),each = c(1,2)) --> Warning message:
#   In rep(c("Madhav", "Krishna"), each = c(1, 2)) :
#   first element used of 'each' argument

vector2<-rep(c("Madhav","Krishna"),times = c(1,2))

print(vector2)


vector3<-c("Monday","Tuesday","Wednesday","Thrusday","Friday","Saturday","Sunday")
abb<-substr(vector3,1,3)
print(abb)

# scan() function : 


vector4<-scan()
vector4

# weekdays() : 

weekdays(Sys.Date(),abbreviate = TRUE)

print(month.abb)
print(month.name)

print(date())
