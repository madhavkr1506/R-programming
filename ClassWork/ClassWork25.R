# tapply() function : 


no.of.students<-c(49,56,35,45,55,52,43,33,50,40,40)
class<-c("A","B","C","D","E","F","G","H","I","J","J")
gender<-c("M","F","F","M","F","M","F","F","M","F","M")
factor1<-factor(gender,labels = c("Male","Female"))

tapply(no.of.students, list(factor1,class), mean)


# mapply() function : 
# syntax : mapply(function, list1, list2, ....)

list1<-list(1,2,3,4,5)
list2<-list(13,12,1,4,6)
mapply(sum,list1,list2)


mapply(rep,list1,list2)



# How to handle the missing value ???

# is.na() is used to find missing value : return boolean value

# if missing value is present it will return true, else false

# for testing objects that are NA use is.na();
# for testing objects that are NAN use is.nan()

# there are classes under which NA comes. :
# Integer  class has integer type NA
# Character class has Character type NA
# A NAN value is counted in NA but reverse is not valid.

c<-c(1,2,NA,NA,5,NA)
print(is.na(c))

# removing NA or NAN

print(c[!is.na(c)])


# missing value filter functions : 

# na.omit - omit every row containing even one NA
# na.fail - halts and does not proceed if NA is encountered
# na.exclude - exclude every row containing even one NA but keeps a record of their original position
# na.pass - it just ignores NA and passes through it.


dataframe1<-data.frame(c1 = 1:8, c2 = factor(c("B","A","B","C","A","C","B","A")))

print(dataframe1)

dataframe1[4,1]<-dataframe1[6,2]<-NA
print(dataframe1)

levels(dataframe1$c2)  # Printing all the levels (NA is not considered one)

na.fail(dataframe1)  # fails if NA is encountered

na.exclude(a)  # Exclude every row containing even one NA


dataframe2<-data.frame(
  A = c(1, 2, NA, 4, 5),
  B = c(NA, 2, 3, NA, 5),
  C = c(1, 2, 3, NA, NA)
)
print(dataframe2)


print(na.omit(dataframe2))

sum(is.na(dataframe2))  # finding missing value in dataframe2

colSums(is.na(dataframe2))


# visualization of missing values of a dataset : 

install.packages("visdat")
library(visdat)

# plot the missing value diagram

vis_miss(dataframe2)



# there are two special cases where NA is denoted or presented differently : 

# factor vectors : is the symbol displayed in factor vectors for missing values.
# NAN : this is the special case of NA only. it is displayed when arithmetic operation yields a result that is not a number. for example, dividing zero by zero produce NAN.
