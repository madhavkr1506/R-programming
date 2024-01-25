# R comment : Describe a piece of code.
# in r programming we use only single line comment.

a<-TRUE
print(a)
# print(as.integer(class(a))) # introduce by coercion
print(as.integer(a)) # it will print 1

print(as.logical(class(a)))  # it will print NA
print(as.logical(a)) # it will print TRUE

print(as.complex(a)) #it will print 1 + 0i
# print(as.complex(class(a))) # introduce by coercion

print(as.character(a))  # it will print TRUE
print(as.character(class(a))) # it will print logical


# these two will print NaN (non applicable)
print(0/0)
print(Inf/Inf)

# print all the uppercase letter
print(LETTERS)

# print all the lowercase letter
print(letters)

# print months using abbreviation
print(month.abb)


date<-as.POSIXlt("2024-01-25") # IST zone
print(date)

weekdays(date) # print weekday name

months(date) # print month name


date() # date() function : Thu jun 25 11:20:25 2024


Sys.Date() # return system date

Sys.time() # return system date and time

month.name  # print all twelve months name without abbreviation

String<-charToRaw("Madhav")
as.raw(String)
print(class(String))

String<-rawToChar(String)
as.character(String)

Value<-"Madhav"
value<-nchar(Value)
value

char<-as.character(Value)
print(char)

"Madhav" %in% char


# write a program to iterate over a string value : 

iterate <- "Madhav"
index<-1
Total_length<-nchar(iterate)
while(index <= Total_length){
  character_store<-substr(iterate,index,index)
  index<-index+1
  print(character_store)
}












