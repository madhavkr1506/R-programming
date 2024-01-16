# factor in R language

# factor are used to categorize data.
# example : demography : male/female
# music : rock/pop/classic/jazz
# training : strength/stamina

# to create a factor, use the factor() function and add a vector as argument.
human_features<-factor(c("Humanity","age","gender","warmBlooded","height","weight","skinTone"))
print(human_features)


# to only print the levels, use the levels() function.
levels(human_features)

india_features<-factor(c("growth","population","demography","dividend"),levels = c("development","individuals","diversity","youth"))
print(india_features)
levels(india_features)

# use the length() function to find out how many items there are in the factor.

length(india_features)


# how we can access factor : 

human_features[1]

# change item value : 

human_features[1]<-"age"
human_features[1]
print(human_features)

# Note : that you cannot change the value of a specific item if it is not already specified in the factor.
# however, if it is already specified inside the levels argument, it will work. 
















