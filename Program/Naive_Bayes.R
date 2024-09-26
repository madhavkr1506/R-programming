sms_raw<-read.csv("sms_spam.csv",stringsAsFactors = FALSE)
str(sms_raw)

View(sms_raw)
str(sms_raw)

sms_raw$type<-factor(sms_raw$type)
sms_raw$type

table(sms_raw$type)

library(tm)
sms_corpus<-VCorpus(VectorSource(sms_raw$text))
print(sms_corpus)

View(sms_corpus)

inspect(sms_corpus[1:3])

sms_corpus

as.character(sms_corpus[[1]])

lapply(sms_corpus[1:2], as.character)

sms_corpus_clean<-tm_map(sms_corpus,content_transformer(tolower))

View(sms_corpus_clean)
as.character(sms_corpus_clean[[1]])


sms_corpus_clean<-tm_map(sms_corpus,removeNumbers)

View(sms_corpus_clean)
as.character(sms_corpus_clean[[3]])

sms_corpus_clean<-tm_map(sms_corpus,removeWords,stopwords())

View(sms_corpus_clean)
as.character(sms_corpus_clean[[3]])


sms_corpus_clean<-tm_map(sms_corpus,removePunctuation)

View(sms_corpus_clean)
as.character(sms_corpus_clean[[3]])


library(SnowballC)

wordStem(c("learns","learned","learning","learns"))

sms_corpus_clean<-tm_map(sms_corpus_clean,stemDocument)
sms_dtm<-DocumentTermMatrix(sms_corpus_clean)

View(sms_dtm)
print(sms_dtm)
inspect(sms_dtm)

sms_dtm_train<-sms_dtm[1:4169,]
inspect(sms_dtm_train)
sms_dtm_test<-sms_dtm[4170:5559,]

sms_train_label<-sms_raw[1:4169,]$type
sms_test_label<-sms_raw[4170:5559,]$type

library(wordcloud)

wordcloud(sms_corpus_clean,min.freq = 50,random.order = FALSE)
findFreqTerms(sms_dtm_train,5)
sms_freq_word<-findFreqTerms(sms_dtm_train,5)
str(sms_freq_word)


sms_dtm_freq_train<-sms_dtm_train[, sms_freq_word]
sms_dtm_freq_test<-sms_dtm_test[,sms_freq_word]

inspect(sms_dtm_freq_train)

convert_counts<-function(x){
  x<-ifelse(x > 0, "yes","no")
}

sms_train<-apply(sms_dtm_freq_train,2,convert_counts)
sms_test<-apply(sms_dtm_freq_test,2,convert_counts)

View(sms_train)

library(e1071)

sms_classifier<-naiveBayes(sms_train,sms_train_label)
sms_test_pred<-predict(sms_classifier,sms_test)

head(sms_test_pred)

a = table(sms_test_pred,sms_test_label)
a
library(gmodels)
CrossTable(sms_test_pred,sms_test_label,prop.chisq = FALSE, prop.t = FALSE, dnn = c("Prediction","Actual"))  

