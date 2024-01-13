# Operators in R programming
# 1. Arithmetic operators : +,-,*,/,%%,%/%,^
# 2. Relational : >,<,==,!=,>=,<= (The output of relational operators is always either true or false)
# 3. Logical  : &,&&,|,||,!
# 4. Assignment : =,<-,->,<<-,->>

a<-7.4
b<-2
print(a+b) # addition
print(a-b)  # subtraction
print(a*b) # multiplication
print(a/b)  #division
print(a%%b) #reminder
print(a%/%b) #quotient
print(a^b) #power

# note: 
# vector in R programming : 
# It is similar to the array to hold multiple data values of same type.
#   index start from 1 
# A vector is a basic data structure that represents one dimensional array.
# to create a array we use the "c" function to combine the values as a vector.

# seq() function for creating a sequence of continuous values.
# length.out defines the length of the vector.

# use ':' to create a vector of continuous values.

v1<-c(4,5,6)
v2<-c(7,8,9)
print(v1+v2) # addition
print(v1-v2)  # subtraction
print(v1*v2) # multiplication
print(v1/v2)  #division
print(v1%%v2) #reminder
print(v1%/%v2) #quotient
print(v1^v2) #power
 
# Relational operators: 
a<-7.4
b<-2
print(a>b) 
print(a<b)  
print(a==b) 
print(a>=b)  
print(a<=b) 
print(a!=b) 

a<-c(4,5,6)
b<-c(7,8,9)
print(a>b) 
print(a<b)  
print(a==b) 
print(a>=b)  
print(a<=b) 
print(a!=b) 


# Logical : 
logi1<-c(3.5,TRUE,2+5i)
logi2<-c(4.5,TRUE,5-3i)
print(logi1&logi2)

ele1<-logi1[1]
ele2<-logi2[1]
print(ele1 && ele2)

# note : '&&' operation use for a scalar logical AND operation, meaning it works on individual logical values, not on vectors or arrays.

print(logi1 | logi2)

print(ele1 || ele2)
# note : '||' operation use for a scalar logical AND operation, meaning it works on individual logical values, not on vectors or arrays.

print(!logi1)




