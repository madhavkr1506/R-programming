library(dplyr)

?dplyr


data<-mtcars
View(data)

?filter()

data %>% filter(disp < 100)

data %>% filter(hp > 100 & disp < 100)

data %>% filter(hp > 200)

data %>% select(disp,mpg)

data %>% select(gear,carb) %>% filter(carb == 4)

data %>% group_by(cyl) %>%  summarise(mean = mean(hp))


df<-data.frame(Name = c("Madhav","Krishna","Rahul","Rohan","Keshav","Satyam"), Class = c("X","IX","VIII","VII","VI","V"),Roll_No = c(100,101,102,103,104,105),Marks.A = c(85,89,99,74,56,25),Marks.B = c(55,69,89,84,46,95),Marks.C = c(75,69,79,24,86,92))
df
arrange_data<-df %>% arrange(Roll_No)
arrange_data

arrange_data<-arrange(df,Marks.A)
arrange_data

filter_data<-filter(df,Marks.A > 75)
filter_data

filter_data<-filter(df,Marks.C > 75 & Roll_No == 100)
filter_data

# filter_data<-filter(df,Marks.C > 75) %>% select(df,Name,Marks.A)   #--> Not good for practice
# filter_data

filter_data<-select(df,Name,Marks.A)
filter_data

filter_data<-df %>% filter(Roll_No >= 100) %>% select(Name,Marks.A,Marks.B,Marks.C) %>% rowwise() %>% summarise(Max_Mark = max(Marks.A,Marks.B,Marks.C))
filter_data


filter_data<-df %>% filter(Roll_No >= 100) %>% select(Name,Marks.A,Marks.B,Marks.C) %>% rowwise() %>% mutate(Max_Mark = max(Marks.A,Marks.B,Marks.C)) %>% ungroup()
filter_data

library(plotrix)

pie3D(df$Marks.A,radius = 2,height = .2,theta = 1.1,labels = df$Name,labelcol = "black",labelcex = 1.5,explode = 0.2)

library(ggplot2)
ggplot(df,aes(x = "",y = Marks.A,fill = Name))+geom_bar(width = 1,stat = "identity",color = "black")+coord_polar("y")+labs(title = "Marks.A Distribution",x = NULL,y = NULL)+geom_text(aes(label = Name),position = position_stack(vjust = 0.5),size = 3)+theme_minimal()+theme(legend.position = "bottom",plot.title = element_text(hjust = 0.5,vjust = -1),plot.margin = margin(1,1,1,1,"cm"),axis.text = element_blank())
