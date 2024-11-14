library(arules)
data("Groceries")
summary(Groceries)

str(Groceries)


inspect(Groceries[1:5])

itemFrequency(Groceries[,1:3])

itemFrequencyPlot(Groceries)
itemFrequencyPlot(Groceries, support = 0.1)

itemFrequencyPlot(Groceries, topN = 20)

# visualization of the sparse matrix for the first five transactions
image(Groceries[1:5])

# visualization of  a random sample of 100 transactions
image(sample(Groceries, 100))


library(arules)

apriori(Groceries)

groceryrules = apriori(Groceries, parameter = list(support = 0.006, confidence = 0.25, minlen = 2))

?apriori

groceryrules

# evaluating model performance

summary(groceryrules)

# look at the first three rules

inspect(groceryrules[1:3])

# improve model performance
inspect(groceryrules[1:10], lift = 0.5)

# sorting grocery rules by lift 

inspect(sort(groceryrules, by = "lift")[1:5])

# finding subsets of rules containing any berry items

berryrules = subset(groceryrules, items %in% "berries")
inspect(berryrules)


# finding subsets of rules that precede soda purchases

sodarules = subset(groceryrules, rhs %pin% "soda")

inspect(sodarules)

top.soda.rules = head(sort(sodarules, by = "lift"),5)

inspect(top.soda.rules)

# writing rules in csv file 

write(groceryrules, file = "groceryrules.csv", sep = ",", quote = TRUE, row.names = FALSE)
groceryrules_df = as(groceryrules,"data.frame")
str(groceryrules_df)

Groceries
