spam <- read.csv("~/spam.csv", header=TRUE) # Reading ham and spam file for kaggle
View(spam)
names(spam)<-c("Lable","text")
View(spam)
df_new<-spam[,1:2]
complete.cases()
complete.cases(spam)
which(complete.cases(spam))
which(!complete.cases(spam))
length(which(!complete.cases(spam))) # check the missing rows 
spam$Text_Length<-nchar(spam$text) # count the length of string in text columns
class(spam$text)
