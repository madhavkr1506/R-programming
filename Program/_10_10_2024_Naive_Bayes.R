library(tm)
library(SnowballC)
library(e1071)

data = read.csv("sms_spam.csv",stringsAsFactors = FALSE)
str(data)

data$type = factor(data$type)


corpus = VCorpus(VectorSource(data$text))

corpus_data = tm_map(corpus, content_transformer(tolower))
corpus_data = tm_map(corpus_data,removeNumbers)
corpus_data = tm_map(corpus_data,removePunctuation)
corpus_data = tm_map(corpus_data,removeWords, stopwords())

corpus_data = tm_map(corpus_data,stripWhitespace)
corpus_data = tm_map(corpus_data,stemDocument)

dtm = DocumentTermMatrix(corpus_data)

View(dtm)

sample_ = 1:4169

dtm_train = dtm[sample_,]
dtm_test = dtm[-sample_,]

train_label = data$type[sample_]
test_label = data$type[-sample_]

word_with_five_freq = findFreqTerms(dtm_train,5)

dtm_train_freq = dtm_train[,word_with_five_freq]
dtm_test_freq = dtm_test[,word_with_five_freq]

convert_counts = function(x){
  x<-ifelse(x > 0, "yes","no")
}

train_data = apply(dtm_train_freq,2,convert_counts)
test_data = apply(dtm_test_freq,2,convert_counts)


prep_model = naiveBayes(train_data,train_label)

predictions = predict(prep_model, test_data)

confusion_table = table(predictions, test_label)
confusion_table

library(caret)
confusionMatrix(confusion_table)
library(gmodels)

CrossTable(predictions, test_label, prop.chisq = FALSE, prop.t = FALSE, dnn = c("Predictions","Actual"))


