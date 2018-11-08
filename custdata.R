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
xtabs(recent.move~sex+age,data=df1)
xtabs(recent.move~sex+state.of.res,data=df1)
xtabs(marital.stat~sex+housing.type,data=df1)
xtabs(marital.stat~housing.type,data=df1)
New_data %>% plot(income~age,data=.)
New_data %>% lm(income~age,data=.) %>% abline(col='red')
New_data %>% qplot(income,age,color=health.ins,data=.)
New_data %>% qplot(income,data=.,geom ="density")
New_data %>% ggplot(aes(x = income , y = age)) +
+     geom_point() + geom_smooth(method = "lm")
New_data %>% ggplot(aes(x = income , y = age)) +
+     geom_point() + geom_smooth()
ggplot(custdata) +
geom_bar(aes(x=state.of.res), fill="gray") +
coord_flip() +
theme(axis.text.y=element_text(size=rel(0.8)))
#Examining the correlation between age and income
ggplot(custdata2, aes(x=age, y=income)) + geom_point() +
+     stat_smooth(method="lm") +
+     ylim(0, 200000)
#Since the output is positive number this shows that the age and income have positive 
#relationship if age increse then the income also in crease 
ggplot(New_data, aes(x=age, y=income)) + geom_point() +
+     stat_smooth(method="lm") +
+     ylim(0, 200000)
#A scatter plot with a smoothing curve also makes a good visualization of the relationship
#between a continuous variable and a Boolean.
ggplot(New_data, aes(x=age, y=income)) + geom_point() +
+     stat_smooth() +
+     ylim(0, 200000)
#Relationship between age and health insurance 
ggplot(New_data,aes(x=age,y=as.numeric(health.ins)))+geom_point(position=position_jitter(w=0.05, h=0.05))+geom_smooth()
col2=ifelse(dTest$health.ins<0.5,"FALSE","TRUE")#convert percents value in True and false condition

