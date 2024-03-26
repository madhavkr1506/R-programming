install.packages("dplyr")
library(dplyr)

?dplyr


# dplyr package in r language is a structure of data manipulation that provides 
# a uniform set of verbs, helping to resolve the most frequent data manipulation hurdles.

# some of the key function in dplyr function : 
# 1. dataframe : organized tables where each column stores specific types of information.
# 2. tibbles : it will introduce through tibble package.

# Pipes(%>%)
# it allows us to chain multiple operation together, improving code readability.


# verb functions  
# filter function : for choosing cases and their values as base for doing so.

# arrange() : for reordering of the cases.


# select() and rename() : for choosing variables and using their names as a base for doing so.

# mutate() and transmute() : addition of new variable which are the function of prevailing variables.

# summarise() : condensing various values to one value.

# sample_n() and sample_frac() : for taking random specimens.

collection1<-mtcars
print(collection1)


collection2<-iris
print(iris)


result<-collection1 %>% filter(mpg > 20) %>% select(mpg,cyl,hp) %>% group_by(cyl) %>% summarise(mean_hp = mean(hp))
# above code will filter rows where mpg is greater than 20, select specific column and group the data by the 'cyl' variable and then calculate the mean horsepower for each group.

print(result)

# use of filter() : 

df<-data.frame(Name = c("Madhav","Eahul","Raj","Rohan","Ravi"),Age = c(20,21,19,13,24),Ht = c(167,168,NA,NA,189),School = c("Yes","No","No","Yes","Yes"))
print(df)

# finding rows with NA value :
print(df %>% filter(is.na(Ht)))

# finding rows with no NA value
print(df %>% filter(! is.na(Ht)))

# Arrange the name according to the Age : 
df.name<-arrange(df,Age)
print(df.name)


# it will print only "Ht" data : 
select(df,starts_with("Ht"))

# it will print everything except Ht data : 
select(df,-starts_with("Ht"))

# print column 1to 2 : 
select(df,1:2)

# print data of column heading containing 'a' : 
select(df,contains("a"))

# print data of column heading matches 'na' : 

select(df,matches("na"))

# calculating x3 which is sum of Age and Ht. printing with Age and Ht.
mutate(df,x3 = Age + Ht)


# calculating x3 which is sum of Age and Ht. printing without Age and Ht.
transmute(df,x3 = Age + Ht)

# calculating mean of Age: 

summarise(df,mean = mean(Age))

# printing three rows : 

sample_n(df,3)

# printing 50% of the rows : 
sample_frac(df,0.50)

# working with iris : 

dim(iris)
iris


# column names :
names(iris)

# create histogram view of sepal length : 
hist(iris$Sepal.Length,col = 'steelblue',main = 'Histogram',xlab = 'Length',ylab = 'Frequency')


# create scatter plot of sepal.length vs sepal.width : 
plot(iris$Sepal.Width ,iris$Sepal.Length,col = 'steelblue',main = 'Scatterplot',xlab = 'sepal.width',ylab = 'sepal.length',pch = 19)

