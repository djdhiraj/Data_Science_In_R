api <- read.csv("apidata_2012_so.csv")
# Get the mean of cst28_engl
mean(api$cst28_engl, na.rm=TRUE)
# Get the standard deviation
sd(api$cst28_engl, na.rm=TRUE)
# Get the mean of cst28_engl
mean(api$cst28_engl)
# Count the number of missing values
sum(is.na(api$cst28_engl))
# Save a list if missingness indicators
miss <- is.na(api$cst28_engl)
# Add up the number of 1's
sum(miss)
# Get the summary of cst28_engl
summary(api$cst28_engl)
# Get the summary of districttype
summary(api$districttype)
# Get the summaries of two variables at once
summary(api[c("districttype", "cst28_engl")])
# Just go crazy
summary(api)
# Conduct an independent sample t-test of the cst28_engl variable across district type
t.test(api$cst28_engl[api$districttype=="Elementary"],
       api$cst28_engl[api$districttype=="Unified"])
# Run a dependent sample t-test on cst28_engl versus cst28_math
t.test(api$cst28_engl, api$cst28_math, paired=TRUE)
# Run the one-way ANOVA model
aov(cst28_engl ~ districttype, data=api)
# Display full ANOVA results
summary(aov(cst28_engl ~ districttype, data=api))
chisq.test(api$districttype, api$region, correct=FALSE)
# Get a correlation of cst28_engl and cst28_math
cor(api$cst28_engl, api$cst28_math, use="complete.obs")
# Get a subset of variables
correlationsubset <- api[c("cst28_engl", "cst28_math", "pctfrpl")]
# Get the correlation matrix
cor(correlationsubset, use="complete.obs")
# Get the correlation matrix
cor(api[c("cst28_engl", "cst28_math", "pctfrpl")], use="complete.obs")
data(Prestige,package="car")
plot(x=Prestige$education, y=Prestige$income,main="Income Vs Education",ylim=c(0,1000))
abline(lm(income~education,data=Prestige))
#correlation functions in R
cor(Prestige$income,Prestige$education)
cor.test(Prestige$income,Prestige$education)
boxplot(income~type,data=Prestige,main="Income Vs Occupations Type",ylab="income")
anovamod<-aov(income~type,data=Prestige)
summary(anovamod)
Prestige$income_cat<-dplyr::ntile(Prestige$income,4)
table(Prestige$income_cat,Prestige$type)
chisq.test(y=Prestige$income_cat,x=Prestige$type)
