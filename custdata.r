install.packages("dplyr")
install.packages("tidyr")
install.packages("ggplot2") 
library('dplyr')
library('tidyr')
library('ggplot2')
data_set<-read.table(fill.choose(),header=T,sep='\t')
View(data_set)
summary(data_set)
# Clean all missing raws in the data set
data_set_new<-data_set %>% drop_na()
View(data_set_new)
summary(data_set_new)


