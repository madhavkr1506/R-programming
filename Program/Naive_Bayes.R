data<-read.csv("spam.csv",stringsAsFactors = FALSE)
str(data)

data$X<-NULL
data$X.1<-NULL
data$X.2<-NULL

View(data)
str(data)

data$v1<-factor(data$v1)
data$v1

str(data$v1)
table(data$v1)

library(tm)
data_corpus<-VCorpus(VectorSource(data$v2))
print(data_corpus)

View(data_corpus)

inspect(data_corpus[1:3])

as.character(data_corpus[[1]])

lapply(data_corpus[1:3], as.character)

View(data_corpus)

data_corpus_clean<-tm_map(data_corpus,content_transformer(tolower))
View(data_corpus_clean)

as.character(data_corpus_clean[[1]])

data_corpus_clean<-tm_map(data_corpus_clean,removeNumbers)

as.character(data_corpus_clean[[3]])

data_corpus_clean<-tm_map(data_corpus_clean,removeWords,stopwords())

as.character(data_corpus_clean[[3]])

data_corpus_clean<-tm_map(data_corpus_clean,removePunctuation)

as.character(data_corpus_clean[[3]])

install.packages("SnowballC")

library(SnowballC)

wordsStem(c("learns","learned","learning","learns"))
data_corpus_clean<-tm_map(data_corpus_clean,stemDocument)

data_corpus_clean<-tm_map(data_corpus_clean,stripWhitespace)
data_dmt<-DocumentTermMatrix(data_corpus_clean)

view(data_dmt)

inspect(data_dmt)

data_train<-data_dmt[1:4169,]
inspect(data_train)

data_test<-data_dmt[4170:5559,]

train_label<-data[1:4169,]$v1
test_label<-data[4170:5559,]$v1

install.packages("wordcloud")
library(wordcloud)

wordcloud(data_corpus_clean,min.freq = 50, random.order = FALSE)

findFreqTerms(data_train,5)

data_freq_words<-findFreqTerms(data_train,5)


str(data_freq_words)

data_dmt_freq_train<-data_train[, data_freq_words]
data_dmt_freq_test<-data_test[, data_freq_words]


inspect(data_dmt_freq_train)

convert_counts<-function(x){
  x<-ifelse(x>0,"yes","no")
}

sms_train<-apply(data_dmt_freq_train,MARGIN = 2,convert_counts)
sms_text<-apply(data_dmt_freq_test,MARGIN = 2,convert_counts)

View(sms_train)

install.packages("e1071")

library(e1071)

sms_classifier<-naiveBayes(sms_train,data_train_label)

sms_text_pred<-predict(sms_classifier,sms_text)

head(sms_text_pred)

a = table(sms_test_pred, data_test_label)

a

library(gmodels)

CrossTable(sms_test_pred,sms_test_label,prop.chisq = FALSE,prop.t = FALSE, dnn = c('Prediction','Actual'))



