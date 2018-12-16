install.packages("arules")  # Install package for Association rules mining
library(arules)
df<-read.transactions(file.choose())
summary(df)
inspect(df[1:3,])
str(df[,1:7])
itemFrequency(df,type="absolute")
itemFrequencyPlot(df,topN=10)
itemFrequencyPlot(df,support=0.10)
itemFrequency(df,type="absolute")
itemFrequency(df,type="absolute")[1:10]
rules<-apriori(data=df,parameter = list(support=.004,confidence=0.1))
df_inspect<-inspect(rules,by="lift")
plot(rules)
install.packages("arulesViz")
library(arulesViz)





