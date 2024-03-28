# tidyr package : it simplify the process of creating tidy data. tidy data describes a standard way of storing data that is used wherever possible throughout the tidyverse.


n = 10
df = data.frame(group.1 = c(1:n),
                group.2 = c(101:110),
                group.3 = c(111:120),
                group.4 = c(121:130),
                group.5 = c(131:140))

df

# Function for data cleaning : 

# gather() : it takes multiple columns and gather them into key-value pairs. basically it makes "wide" data longer. it will duplicating all other columns as needed.

# syntax : gather(data,key = "key",value = "value",..,na.rm = FALSE,convert = FALSE,factor_key = FALSE)

# data = the data frame
# key, value = the names of new key and value columns, as string or as symbols.
# ... = columns selection
# na.rm = if set TRUE, it will remove rows from output where the value column is NA.
# convert = is set TRUE, it will automatically run type.convert() on the key column.
# this is useful if the column types are actually numeric, integer, or logical.

# factor_key = if FALSE, the default, the key values will be stored as a character vector.
# if TRUE, will be stored as a factor, which preserves the original ordering of the columns.

library(tidyr)

long <- df %>% gather(Group,Frequency,group.1:group.4)
print(long)


# separate(data,col,into,sep=" ",remove = TRUE,convert = FALSE)

# it will convert longer data to a wider format.
# this function turns a single character column into multiple columns.

# col = column name or position
# into = Names of new variables to create as character vector. use NA to omit the variable in the output.
# sep = separator between columns
# if set TRUE, it will remove input column from the output data frame.
# convert = if TRUE, will run type.convert() with as.is = TRUE on new columns.


separate_data <- long %>%  separate(Group,c("Allotment","Number"))
separate_data

# unite(data,col,..,sep = "_",remove = TRUE)
# remove : if TRUE, remove input columns from output data frame.

# it will paste together multiple variable values into one.

unite_data<-separate_data %>%  unite(Group,Allotment,Number,sep = ".")
print(unite_data)


# spread() function : it help to reshape longer format to wider format. it spreads a key value pair across multiple columns.

# spread(data,key,value,fill = NA,convert = FALSE)

spread_data<-unite_data %>% spread(Group,Frequency)
print(spread_data)


# nest() function : it create a list of data frames containing all the nested variables. nesting is implicitly a summarizing operation. this is useful in conjunction with other summaries that work with whole data sets, most notably models.

# nest(data,..,.key = "data")

df %>% nest(data = c(group.1))


# unnest() : reverse the nest operation. it makes each element of the list its own row. it can handle list columns that contains atomic vectors, list, or data frames (but not a mixture of the different types).

# unnest(data,..,.drop = NA,.id = NULL,.sep = NULL,.preserve = NULL)

df = iris
df

names(iris)

head(df %>%  nest(data = c(Species)))

head(df %>% unnest(Species,.drop = NA,.preserve = NULL))



# fill(data,..,.direction = c("down","up")) : 

df = data.frame(Month = 1:6, Year = c(2000,rep(NA,5)))
df
df %>% fill(Year)

# full_seq(x,period,tol = 1e-06) : 

vector<-c(1,5,9,19)
full_seq(vector,1)


# drop_na(data,...) : 
df<-tibble(S.No = 1:10,Alpha = c("a","b","c","d","e",rep(NA,5)))
df
df %>% drop_na(Alpha)

# replace_na(data,replace,...) : 

df %>% replace_na(list(Alpha = 'Y'))
