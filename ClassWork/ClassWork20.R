# Working with csv file


setwd("C:/Users/madha/OneDrive/Documents/R programming/ClassWork")
getwd()


# dataframe1<-data.frame(name = c("Madhav","Krishna"),RegNo = c(12213356,12213357))
# write.csv(dataframe1,"text.csv",row.names = FALSE)


readdata<-read.csv("text.csv")
print(readdata)

View(readdata)

#  analyzing csv file : 

print(nrow(readdata))
print(ncol(readdata))
print(is.data.frame(readdata))

# access csv file  : 

subset1<-subset(readdata,RegNo == 12213356)
print(subset1)
View(subset1)


# read excel file : 

library(readxl)

# file.choose() method : 

readexcel = read_excel(file.choose())


View(readexcel)

#  analyzing excel file : 

print(nrow(readexcel))
print(ncol(readexcel))
print(is.data.frame(readexcel))




# it will through an error before installing xlsx package : 

# readdata2<-read.csv("C:/Users/madha/OneDrive/Documents/R practice.xlsx")
# print(readdata2)



