data("iris")
View(iris)
str(Species)
str(iris)
split<-sample.split(iris,split.ratio=.7)
library(caTools)
split<-sample.split(iris,split.ratio=.7)
split<-sample.split(iris,SplitRatio = 0.7)
training_data<-subset(iris,split=="TRUE")
testing_data<-subset(iris,split=="FALSE")
library(e1071)
model_naive<-naiveBayes(training_data,training_data$Species)
summary(model_naive)
testing_data$Species_pre<-predict(model_naive,test)
testing_data$Species_pre<-predict(model_naive,testing_data)
View(testing_data)
table<-table(testing_data$Species,testing_data$Species_pre)
table
library(caret)
cm_table<-confusionMatrix(table)
cm_table
split<-sample.split(iris,SplitRatio = 0.5)
training_data<-subset(iris,split=="TRUE")
testing_data<-subset(iris,split=="FALSE")
model_naive<-naiveBayes(training_data,training_data$Species)
summary(model_naive)
testing_data$Species_pre<-predict(model_naive,testing_data)
table<-table(testing_data$Species,testing_data$Species_pre)
cm_table<-confusionMatrix(table)
cm_table
