name<-"Madhav"
toupper(name)
tolower(name)

# apply() function : 
# syntax : apply(x,margin,function)

# x --> determine the input array including matrix
# margin --> if margin is 1 : function is applied across row
# if margin is 2 : function is applied across column

# function : determine the function that is to be applied on the input data


x = matrix(c(1,2,3,4),nrow = 3,ncol = 4,byrow = TRUE)
x
y = apply(x,1,sum)
y
z = apply(x,2,sum)
z


# lapply() function : 
# syntax : lapply(x,function)

a<-list(A = c(8,9,7,5),B = data.frame(x = 1:5, y = c(5,1,0,2,3)))
a
lapply(a,sum)


# another example of lapply : 

d<-1:3
fun<-function(x){
  x^2
}
lapply(d, fun)


# sapply() : 

# syntax : sapply(x,function)

a<-data.frame(a = c(1,2,3,4,5),b = c(6,7,8,9,10))
sapply(a, max)

list1<-list(A = 1:5, B = 6:20, c = 1)
sapply(list1, length)


sapply(1:4, sqrt)

out<-numeric(10)
for(i in 1:10){
  out[i] <- i^2
}
out


# tapply() : 
# syntax : tapply(x,index,function)

# index : it determines the factor vector that helps us to distinguish the data

# calculating mean scores by group : 

scores<-c(80,85,89,78,86,49,53,26,28,99)
groups<-c("A","B","C","A","C","B","B","C","A","C");

tapply(scores,groups,mean)


# we can also use multiple factors to define the group : 
gender<-c("M","F","M","F","M","F","M","F","M","F")
tapply(scores,list(groups,gender),mean)

tapply(scores,groups,quantile,probs = c(0.25,0.75))


function1<-function(x){
  # sum(x^2)
  print(x)
}

tapply(scores, groups, function1)
