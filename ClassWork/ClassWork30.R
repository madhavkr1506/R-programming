# ggplot2 is a popular data visualization package in the R programming language.

# building blocks of layers with the grammer of graphics : 

# data : the element of data set itself
# aesthetics : map data onto x-axis, y-axis, color, fill, size, labels, alpha, shape, line, width, line type
# geometrics : how data is being displayed using point, line, histogram, bar, box plot
# facets : it display the subset of the data using columns and rows
# statistics : Binning, smoothing, descriptive, intermediate
# coordinates : the space between data and display using Cartesian, fixed, polar, limits.
# themes : no data link


head(mtcars)

library(dplyr)
library(ggplot2)

# ggplot(data = mtcars,aes(x = hp,y = mpg,col = disp)) + geom_point() + labs(title = "Miles per Gallon vs HorsePower",
                                                            # x = "HorsePower",y = "Miles per Gallon")



# ggplot(data = mtcars, aes(x = hp,y = mpg,col = factor(cyl), shape = factor(am))) + geom_point() + labs(title = "Miles per Gallon vs HorsePower",
#                                                                                                        x = "HorsePower", y = "Miles per Gallon")




# ggplot(data = mtcars, aes(x = hp)) + geom_histogram(binwidth = 5) + labs(title = "Histogram of HorsePower",x = "HorsePower", y = "Count")




# p<-ggplot(data = mtcars, aes(x = hp, y = mpg, shape = factor(cyl))) + geom_point()
# p
# 
# p + facet_grid(.~cyl) + labs(title = "Miles per Gallon vs HorsePower", x = "HorsePower",y = "Miles per Gallon")
# 


# ggplot(data = mtcars,aes(x = hp, y = mpg)) + geom_point() + facet_grid(am ~ cyl) + theme_gray() + labs(title = "Miles per Gallon vs HorsePower")

library(gridExtra)
ggplot_mpg = ggplot(data = mtcars, aes(x = mpg)) + geom_histogram(binwidth = 2,fill = "red",color = "white") + labs(title = "Histogram: Miles per Gallon", x = "Miles per Gallon",y = "Frequency")
ggplot_mpg

ggplot_disp = ggplot(data = mtcars,aes(x = disp)) + geom_histogram(binwidth = 50,fill = "blue", color = "white") + labs(title = "Histogram : Displacement",x = "HorsePower", y = "Frequency")

grid.arrange(ggplot_mpg,ggplot_disp,ggplot_disp,ggplot_mpg)




