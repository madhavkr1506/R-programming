# data.frame() in R programming language.
# data frames are data displayed in a format as a table.

# data frame can have different types of data inside it. while the first column can be character, the second column can be numerical or third column can be logical. 
# However, each column should have the same type of data.

# use data.frame() function to create a data frame.
data_frame1<-data.frame("Name" = c("Rahul","Rohan","Raj"),"Marks" = c(95,86,76),"grade" = c("A","B","C"))
print(data_frame1)

# summarize the data
summary(data_frame1)

# Access items

# we use [],[[]],or $ to access columns from the data frames.
data_frame1[1]
data_frame1[["Name"]]
data_frame1$Name



# add row : 
data_frame1<-rbind(data_frame1,c("Shivam",85,"B"))
print(data_frame1)



# add column : 

data_frame1<-cbind(data_frame1,"Age" = c(20,21,22,23))
print(data_frame1)



# remove rows and columns
data_frame1<-data_frame1[-c(1),-c(1)]
print(data_frame1)

# amount of rows and columns
dim(data_frame1)

# amount of rows
nrow(data_frame1)

# amount of columns
ncol(data_frame1)

# data frame length
length(data_frame1)  # it is similar to ncol() function

# combining data frame


data_frame2<-data.frame("Name" = c("Madhav","Krishna","Gopal"),"Reg" = c(1,2,3))
data_frame3<-data.frame(marks = c(98,87,77),Grade = c("A","B","C"))
data_frame4<-data.frame("Name" = c("Madhava","Krishn","Gopala"),"Reg" = c(4,5,6))


print(data_frame2)
print(data_frame3)
print(data_frame4)

data_frame5<-rbind(data_frame2,data_frame4)
print(data_frame5)





















