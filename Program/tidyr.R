library(tidyr)

df<-data.frame(Reg.No = c(101,102,103,104,105),Name = c("Madhav","Krishna","Rahul","Rohan","Ravi"),Surname = c("Kumar","Gupta","Singh","Kumar","Singh"),Grade = c('A','O','B','A','A'),Group = c("Alpha","Beta","Gamma","Delta","Lambda"))
df

longD<-gather(df,key = "key.1",value = "value.1",Name,Surname)

longD

spreadD<-spread(longD,key.1,value.1)

spreadD

uniteD<-unite(spreadD,NameSurName,Name,Surname,sep = "-")
uniteD

sepD<-separate(uniteD,NameSurName,c("Name","surname"),sep="-")
sepD


df2<-data.frame(S.No = c(1:5),Bool = c(TRUE,rep(NA,3),FALSE))
df2

fill(df2,Bool,.direction = "up")


drop_na(df2,Bool)


replace_na(df2,list(Bool = TRUE))
