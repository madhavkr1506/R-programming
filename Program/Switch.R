# Switch in R programming
# switch(expression,case1,case2,....)
match<-2
a<-switch(match,"madhav","krishna","mohan","govinda")
print(a)
# note : it will print NULL if we are providing expression value out of case length 
# some important point about switch case statements : 
# an expression type with character string always matched to the listed case.
# an expression which is not a character string then this expression is coerced to integer.
# for multiple matches, the first match element will be used.
# no default argument case is available there in r switch case.
# an unnamed case can be used, if there is no matched case.



num1<-18
num2<-19
found<-"add"
result=switch(found,
              "add" = cat("addition ",num1+num2),
              "sub" = cat("subtraction ",num1-num2),
              "prod" = cat("product ",num1*num2),
              "div" = cat("division ",num1/num2)
              )
print(result)