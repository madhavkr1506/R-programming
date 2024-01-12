# Variables in the R programming
# variable name can start with dot(.) or any letters;
var_name<-10
var.name<-10
# _var_name<-10--> It will throw an error
# var_name*<-10 --> It will throw an error
.var_name<-10
# 5var_name<-10-->It will throw an error;
var5_name<-10
# notes : keywords are not used as variable;


#Assignment of variables
var1<-10
var2=10
10->var3
print(var1)

cat(var1," ",var2,"\n",var3)

# Data types in R programming : 

# logical,numeric, integer,complex,character,raw
num<-10 #default data type : numeric
# numeric = 10,1314,-24,-25,12.365,-26.456

# integer = 36L #add capital(L) in suffix to allocate integer type memory

# complex = 5 + 2i

# logical = TRUE, FALSE

# character = '' or ""  --> It will store single character as well as string
# character='a',"Hello R","FALSE",'26.125',"hello R 56.112#@"

num<-10.256
class(num)  # this is numeric
typeof(num) # this is double 
# type casting
num<-as.integer(num)
class(num)  # this is integer



int1<-15L
class(int1)
typeof(int1)


comp<-10-25i
class(comp)

logi<-TRUE
class(logi)

char<-"madhav1@"
class(char)


# note : raw data types are used for raw bytes;
