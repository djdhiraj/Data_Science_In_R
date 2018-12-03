getwd()
data <- read.csv("bank-data.csv", header = T)
View(data)  # allows us to view the data set
names(data)  # names of the variables 
dim(data)  # dimension (number of rows and columns)
str(data)  # structure of the data set
class(data)  # type of data
head(data, n = 5)  # displays the first 5 rows 
tail(data, n = 5)  # displays the last 5 rows
install.packages("Hmisc")
library(Hmisc)
install.packages("pastecs")
library(pastecs)
install.packages("psych")
library(psych)
summary(data)
var <- c("age", "marital", "education", "housing")
eda_data <- data[var]
names(eda_data)
summary(eda_data$age)
fivenum(eda_data$age)describe(eda_data$age)
stat.desc(eda_data$age)



