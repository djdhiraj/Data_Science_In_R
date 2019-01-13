spam <- read.csv("~/spam.csv", header=TRUE,stringsAsFactors = FALSE)
View(spam)
names(spam)<-c("Lable","text")
View(spam)
df_new<-spam[,1:2]
complete.cases(spam)
which(complete.cases(spam))
which(!complete.cases(spam))
length(which(!complete.cases(spam)))
df_new$text_length<-nchar(df_new$text)
class(spam$text)
df_new$Lable<-as.factor(df_new$Lable)
prop.table(table(df_new$Lable))
summary(df_new$text_length)
library(ggplot2)
gg<-ggplot(df_new,aes(x=text_length,fill=Lable))+geom_bar()+labs(y="Word count",x="length of the word",title="Distribution of words")
plot(gg)
library(caret)
indexes<-createDataPartition(df_new$Lable,times = 1,p=0.7,list = FALSE)
train<-df_new[indexes,]
text<-df_new[-indexes,]
prop.table(table(train$Lable))
prop.table(table(text$Lable))
train$text[20]
library(quanteda)
train.tokens<-tokens(train$text,what="word",remove_numbers=TRUE,remove_punct=TRUE,
                     remove_symbols=TRUE,remove_hyphens=TRUE)
train.tokens[[20]]
train.tokens<-tokens_tolower(train.tokens)
train.tokens[[20]]
train.tokens<-tokens_select(train.tokens,stopwords(),selection = "remove")
train.tokens[[20]]
train.tokens<-tokens_wordstem(train.tokens,language = "english")
train.tokens[[20]]
train.tokens.dfm<-dfm(train.tokens,tolower = FALSE)
train.tokens.matrix<-as.matrix(train.tokens.dfm)
#View(train.tokens.dfm)[1:10,1:10]
dim(train.tokens.matrix)
colnames(train.tokens.matrix)[1:10]
train.tokens.df<-cbind(label=train$label,as.data.frame(train.tokens.dfm))
names(train.tokens.df)[c(146,148,243,982)]
names(train.tokens.df)<-make.names(names(train.tokens.df))
set.seed(46532)
cv.folds<-createMultiFolds(train$label,k=10,times=3)
cv.cntrl<-trainControl(method="repeatedcv",number=10,repeats = 3,index=cv.folds)
#install.packages("doSNOW")
library(doSNOW)
start.time<-Sys.time()
cl<-makeCluster(2,type="SOCK")
registerDoSNOW(cl)

total.time<-Sys.time()-start.time
total.time
rpart.cv.1<-train(lable~.,data=train.tokens.df,method="rpart",
                  trControl=cv.cntrl,tuneLength=7)


stopCluster(cl)
total.time<-Sys.time()-start.time
total.time
term.frequency<-function(row){
  row/sum(row)
}
inverse.doc.freq<-function(col){
  corpus.size<-length(col)
  doc.count<-length(which(col>0))
  log10(corpus.size/doc.count)
}
tf.ide<-function(x,ide){
  x*idf
}
train.tokens.df<-apply(train.token.matrix,1,term.frequency)
dim<-(train.tokens.df)
View(train.tokens.df[1:10,1:10])
train.tokens.idf<-apply(train.tokens.matrix,2,inverse.doc.freq)
str(train.tokens.idf)
train_tokens.tfidf<-apply(train.tokens.df,2,tf.ide,idf=train.tokens.idf)
dim(train_tokens.tfidf)
View(train.tokens.tfidf[1:25,1:25])
incomplete_cases<-which(!complete.cases(train_tokens.tfidf))
train$text[incomplete_cases]
train.tokens.tfidf[incomplete_cases,]<-rep(0,0,ncol(train_tokens.tfidf))
dim(train_tokens.tfidf)
sum(which(!complete.cases(train_tokens.tfidf)))
train_tokens.tfidf.df<-cbind(Lable=train$Lable,data.frame(train_tokens.tfidf))
names(train_tokens.tfidf.df)<-make.names(names(train_tokens.tfidf.df))
start.time<-Sys.time()
cl<-makeCluster(3,type="SOCK")
registerDoSNOW(cl)
rpart.cv.2<-train(Lable~.,data=train.tokens.tfidf.df,method="rpart",
                  trControl=cv.cntrl,turnLength=6)
stopCluster(cl)
total.time<-Sys.time()-start.time
total.time
rpart.cv.2
train.tokens<-tokens_ngrams(train.tokens,n=1:2)

