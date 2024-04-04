# String concatenation 
 
library(stringr)
data1<-str_c("Madhav"," ","Kumar")
data1

str_sub(data1,1,5)


str_replace(data1,"Kumar","Singh")

str_detect(data1,"Mad")

str_extract("This is Area 51","\\d+")

str_replace_all("This is Area 51","\\d+","520")


str_split("Madhav,Rahul,Rohan",",")


