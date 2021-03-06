View(data_set)
data_set_preprocess<-data_set
data_set_preprocess<-subset(data_set_preprocess,select=-customerID)
data_set_preprocess$Churn<-ifelse(data_set$Churn=="Yes",1,0)
#train<-subset(data_set_preprocess,split=="Yes")
test<-subset(data_set_preprocess,slit="FALSE")
train<-subset(data_set_preprocess,slit="TRUE")
View(train)
View(test)
#train_scale<-scale(train[,1,15])
library(e1071)
model_svm<-svm(Churn~.,data=train,method="class")
summary(model_svm)
model_svm<-svm(Churn~.,data=train,method="class",gamma=0.03,cost=1)
summary(model_svm)
test$Churn_predict<-predict(model_svm,test)
table_svm<-table(test$Churn,test$Churn_predict)
table_svm
test$Churn_predict<-ifelse(test$Churn_predict>0.5,1,0)
table_svm<-table(test$Churn,test$Churn_predict)
table_svm
Confusion_Matrix_Svm<-confusionMatrix(table_svm)
library(caret)
Confusion_Matrix_Svm<-confusionMatrix(table_svm)
Confusion_Matrix_Svm
