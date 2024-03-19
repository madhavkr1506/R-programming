library(sqldf)
getwd()
setwd("C:/Users/madha/OneDrive/Documents/R programming/ClassWork")

library(readxl)
readexcel = read_excel(file.choose())
View(readexcel)

# using max.print = we can print all rows without omitted
# options(max.print = 10000)

result<-sqldf("select * from readexcel")

# using head function we can print first nth row:

head(result,10)

result<-sqldf("select age,bmi from readexcel")
tail(result,10)


result<-sqldf("select * from readexcel where bmi <= 23 limit 5")
print(result)



result<-sqldf("select * from readexcel limit 20")
print(result)


result<-sqldf("select * from readexcel where sex in ('male') limit 5")
print(result)


result<-sqldf("select * from readexcel order by age asc limit 10")
print(result)

result<-sqldf("select max(bmi) from readexcel")
print(result)


result<-sqldf("select * from readexcel where region like '%west%' limit 10")
print(result)


result<-sqldf("select count(age),sex from readexcel group by sex")
print(result)

