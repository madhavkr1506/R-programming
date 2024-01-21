# csv file are basically the text files wherein the values of each row are separated by a delimiter, as in a comma or a tab.

# reading a csv file : the content of csv file can be read as a data frame in R using the read.csv(...) function.
# the csv file to be read should be either present in the current working directory or directory to be set accordingly using the setwd(...) command in R.
# the csv file can also be read from the a url using read.csv() function.

# the header is by default set to a TRUE value in the function.
# the head is not included in the count of rows.

# sql queries can be performed on the csv content, and the corresponding result can be retrieved using the subset(csv_data) function in R.
# multiple queries can be applied in the function at a time where each query is separated using a logical operator. the result is stored as a data frame in R.

# aggregate functions (min,max,count etc.) can be applied on the csv data.

# Writing into a csv file :
# the content of data frame can be written into a csv file. the csv file is stored in the current working directory with the name specified in the function write.csv(data frame,output csv name) in R.

# the column x contains the row numbers of the original csv file. in order to remove it, we can specify an additional argument in the write.csv() function to set row names to FALSE.


# get and print working directory : 
print(getwd())

# set current working directory :
setwd("C:/Users/Madhav Kumar/Documents/R programming/ClassWork")

csv_data<-read.csv(file="input.csv")

print(csv_data)

# by default the read.csv() function gives the output as a data frame.
print(is.data.frame(csv_data))
print(ncol(csv_data))
print(nrow(csv_data))

marks<-max(csv_data$Percentage)
print(marks)

# get the detail of student who has achieved highest marks
retval<-subset(csv_data,Percentage == max(Percentage))
print(retval)

# print all student who is in class XII : 

retval<-subset(csv_data,Standard == "XII")
print(retval)

# print the detail of student who is in XII standard and having more than 80 percentage
retval<-subset(csv_data,Standard == "XII" & Percentage > 80)
print(retval)

# Write filtered data into another csv file : 
write.csv(retval,"output.csv",row.names = FALSE)
new_csv<-read.csv(file = "output.csv")
print(new_csv)
