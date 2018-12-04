library(car)
library(MASS)
library(caTools)
split<-sample.split(mtcars,SplitRatio = 0.7)
train<-subset(mtcars,split=="TRUE")
test<-subset(mtcars,split=="FALSE")
model<-glm(vs~.,data=mtcars)
final_model<-stepAIC(model,direction = "both")
final_model<-glm(vs ~ cyl + hp + wt + qsec, data = mtcars)
summary(final_model)
fitted_result<-predict(final_model,test,type="response")
fitted_result
test$vs
fitted_result<-ifelse(fitted_result>0.5,1,0)
Table_result<-table(fitted_result,test$vs)
Table_result
misClassError<-mean(fitted_result !=test$vs)
print(paste('Accuracy=',misClassError))
ROCRpred<-prediction(fitted_result,test$vs)
ROCRPref<-performance(ROCRpred,measure = "tpr",x.measure = "fpr")
plot(ROCRPref)
plot(ROCRPref,colorize="TRUE")
######################################################################
######################################################################
Model_2
######################################################################
######################################################################
# Data set Telco-Customer-Churn#######################################
View(data_set)
data_set$Churn<-as.factor(data_set$Churn)
str(data_set)
data_set_preprocess<-ifels(data_set$Churn=="Yes",1,0)
data_set_preprocess<-ifelse(data_set$Churn=="Yes",1,0)
data_set_preprocess
View(data_set_preprocess)
data_set_preprocess<-data_set
data_set_preprocess$Churn<-ifelse(data_set$Churn=="Yes",1,0)
data_set_preprocess<-subset(data_set_preprocess,select=-customerID)
split<-sample.split(data_set_preprocess,SplitRatio = 0.75)
View(train)
View(train)
train<-subset(data_set_preprocess,split=="TRUE")
test<-subset(data_set_preprocess,split=="FALSE")
View(train)
model<-glm(Churn~.,data=train)
Final_model<-stepAIC(model,direction = "both")
summary(First_model)
test$Churn_predict<-predict(First_model,test,type="response")
View(test)
test$Churn_predict<-ifelse(test$Churn_predict>0.5,1,0)
View(test)
table<-table(test$Churn,test$Churn_predict)
table
install.packages("caret")
library(ceret)
library(caret)
Confusion_Matrix<-confusionMatrix(table)
Confusion_Matrix

