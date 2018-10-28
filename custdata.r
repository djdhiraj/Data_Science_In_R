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
#After removng the all missing values now we trying to plot maximum numberg graphs  
data_set_new %>% hist(data_set_new$age) # this command gives us more then one histogram 
data_set_filter<-funtion(data){
  data %>% filte(income>0) #Remove the raws where income is less then 0 
  data %>% filter(age<100) #Remove the raws where age is greater then 100
 }
New_data<-data_set_filter(data_set_new)
summary(New_data)



