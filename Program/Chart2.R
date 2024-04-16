a<-c(1,2,3,4,5);
b<-c(6,7,8,9,10);



df<-data.frame(A = a,B = b)
df

plot(x = df$A,y = df$B,xlab = "A",ylab = "B",main = "A vs B",col = "blue")



# when we have two or more variables and we want to find the correlation between  one variable versus the remaining ones we use scatter plot matrix. we use pairs() function to create matrices of scatter plots.

# syntax(formula,data)

pairs(~wt + mpg + disp + cyl, data = mtcars, main = "Scatter plot matrix")

# Box plot

boxplot(df$A,df$B,data = df,xlab = "A",ylab = "B", main = "Box plot",notch = TRUE,varwidth = TRUE,col = c("green","red"),names = c("Low","High"))

data<-mtcars
data

df<-(mtcars[,c('wt','mpg')])
df
plot(x = df$wt,y = df$mpg,xlab = "Weight",ylab = "Miles/US gallon", main = "Scatter plot",col = c("red","blue"))


library(plotly)
library(dplyr)
chart1<-plot_ly(labels = c("Madhav","Krishna","Kishan"),values = c(25,50,25),marker = list(colors = c("red","blue","green"))) %>% add_pie(hole = 0)
chart1

chart2<-plot_ly(x = c("Madhav","Krishna","Kishan"),y = c(25,50,25),type = 'bar',marker = list(color = "red"))
chart2

