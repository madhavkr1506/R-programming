data<-read.csv("comments.csv")
View(data)
library(tm)
text_corpus<-Corpus(VectorSource(data$Comments))
text_corpus

text_corpus<-tm_map(text_corpus,tolower)
text_corpus[[1]][1]
text_corpus<-tm_map(text_corpus,removePunctuation)
text_corpus[[1]][1]

text_corpus<-tm_map(text_corpus,removeNumbers)
text_corpus[[1]][1]




?Corpus
