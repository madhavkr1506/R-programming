# Mathematical function in r language : 

a <- -3
print(abs(a))

b <- 2.4
print(ceiling(b))
print(floor(b))

c <- 2.4856
print(round(c,digit = 2))


c <- 45
print(sin(c))
print(cos(c))
print(tan(c))

d <- 10
print(log(d))
print(log10(d))


e <- 9
print(sqrt(e))

print(e ** 1/3)


str1<-"abcdefghi"
print(substr(str1,3,6))


print(nchar(str1))

# grep() function : it is used to find pattern or searching pattern in the character vector.

x<-c("abc","def","ghi","GHI","jkl","mno","pqr")
print(grep("ghi",x))
print(grep("ghi",x,ignore.case = FALSE))
print(grep("ghi",x,ignore.case = TRUE))
print(grep("ghi",x,ignore.case = FALSE,value = TRUE))
print(grep("ghi",x,ignore.case = FALSE,value = FALSE))


# sub() function : replace first occurrence of certain text within a string,
# sub(pattern, replacement, x)
