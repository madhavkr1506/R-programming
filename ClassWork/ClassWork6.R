# write a program to print vector1 element

vector1<-c(11,20,56,45,68,89,56)
print(vector1)

# sort vector1
sort(vector1)

# original position of element
order(vector1)

# It will print sorted vector element
vector1[order(vector1)]

# access multiple vector1 elements
vector1[c(1,3,2,6)]

# ranking of vector1 : indexing

rank(vector1)

vector1[rank(vector1)]

# make a data frame : 

dataFrame1<-data.frame(
  name=c("Madhav","Kishan","Rahul","Rohan","Satyam"),
  RegNo=c(1,2,3,4,5)
)

# use view function to view dataFrame1 : 
View(dataFrame1)


# write into csv file : 
write.csv(dataFrame1,"dataFrame1.csv")

# read from csv file : 
csv_data<-read.csv(file = "dataFrame1.csv")
View(csv_data)

# another way to read csv file : 

csv_data<-read.table(file = "dataFrame1.csv",header = T,sep = ",")
View(csv_data)


# directly edit file : use wisely
fix(csv_data)

# to know the structures of csv file
str(csv_data)

# summary of csv file
summary(csv_data)

# print all variable names
names(csv_data)

# length function
length(csv_data)

# dimension function
dim(csv_data)

# colnames() function
colnames(csv_data)

# get first six row details
head(csv_data)

# get last six row details
tail(csv_data)

# access csv file : first two rows
csv_data<-csv_data[c(1:2),]
print(csv_data)

# access csv file : first two rows and two columns
csv_data<-csv_data[c(1:2),c(1:2)]
print(csv_data)


# to get the position of a particular column : 
grep("names",colnames(csv_data)) # --> It will return integer(0) because no column of this name exists. 
grep("RegNo",colnames(csv_data))


# $ dollar sign for accessing or mentioning the variable name
csv_data$name

# aggregate function

max_regNo<-max(csv_data$RegNo)
print(max_regNo)

# use subset function : to get the data of "Madhav" (details of a particular row)

csv_data<-subset(csv_data,name=="Madhav")
print(csv_data)







