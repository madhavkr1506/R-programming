state<-c("BR","UP","RJ","PB","TN")
literacy<-c(70.9,73,69.7,83.7,72.9)


df<-data.frame(Location=state,Literacy=literacy)
df

barplot(df$Literacy,col = "blue",horiz = T,names.arg = df$Location,xlab = "Location",ylab = "Literacy",col.lab = "darkgreen",col.axis = "darkgreen",width = c(2,2,2,2,2))

colors = c("red","brown","blue","pink","green")

pie(df$Literacy,init.angle = 90
    ,labels = df$Location, col = colors)

legend("bottomright",df$Location,fill = colors)


library(plotrix)

pie3D(df$Literacy,labels = paste0(df$Literacy,"%"),theta = 1.0,col = colors,border = "white",labelcol = "black",explode = 0.2)
legend(x="center",y = -0.3,df$Location,fill = colors)

library(plotly)

p1 <- df %>% plot_ly(labels = ~Location,
          values = ~Literacy,
          marker = list(colors = colors)) %>%
  add_pie(hole = 0)

p1

hist(df$Literacy,xlab = "Literacy",col = "blue",col.lab = "green")




