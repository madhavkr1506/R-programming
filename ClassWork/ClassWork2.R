# vector in r programming

# lets create vector :

vector1<-c(10,21,17,45,34)
print(vector1)

# by default it will sort vector1 in ascending order
print(sort(vector1))

# it will sort vector1 in descending order
print(sort(vector1,decreasing = TRUE))

# string vector
vector2<-c("madhav","krishna","ram","laxman","narayan")
print(vector2)

# string vector (sorted in decreasing order)
print(sort(vector2,decreasing = TRUE))

# using seq() function
vector3<-seq(from=1,to=10,by=2)
print(vector3)

# length.out defines the length of vector4
vector4<-seq(from=2,to=10,length.out=5)
print(vector4)

# setting null to the vector4
vector4<-NULL
print(vector4)


# the below program to find weekday on specific date:
date<-as.POSIXlt("2024-01-17") # IST Zone
date

date1<-as.POSIXlt("17-01-2024")  # LMT zone
date1

# using weekdays() function
weekdays(date)
weekdays(date,abbreviate = TRUE)

# using months() function
months(date)
months(date,abbreviate = TRUE)

# date() function used to return current date and time
date()

# Sys.date() function used to return system date
Sys.Date()

# Sys.time() function used to return System date and time
Sys.time()

# Sys.timezone() function return current time zone
Sys.timezone()
