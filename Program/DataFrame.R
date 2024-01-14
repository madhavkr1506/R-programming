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

























