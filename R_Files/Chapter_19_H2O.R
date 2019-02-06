# To import airlines file from H2O’s package:
library(h2o)
h2o.init()
irisPath <- "https://s3.amazonaws.com/h2o-airlines-unpacked/allyears2k.csv"
iris.hex <- h2o.importFile(path = irisPath, destination_frame = "iris.hex")

# To import from S3:
library(h2o)
h2o.init()
airlinesURL <- "https://s3.amazonaws.com/h2o-airlines-unpacked/allyears2k.csv"
airlines.hex <- h2o.importFile(path = airlinesURL, destination_frame = "airlines.hex")
flightsByMonth <- h2o.group_by(data = airlines.hex,
                               by = "Month",
                               nrow("Month"),
                               gb.control=list(na.methods="rm"))   #Group by Month data frame in h2o

flightsByMonth.R <- as.data.frame(flightsByMonth) # Convert h2o data frame to R data frame 

class(flightsByMonth.R)      

# Find the number of flights in a given month based on the origin
cols <- c("Origin","Month")

flightsByOriginMonth <- h2o.group_by(data=airlines.hex,
                                     by=cols,
                                     nrow("Month"),
                                     gb.control=list(na.methods="rm"))
flightsByOriginMonth.R <- as.data.frame(flightsByOriginMonth)
flightsByOriginMonth.R
which(colnames(airlines.hex)=="Cancelled")
cancellationsByMonth <- h2o.group_by(data = airlines.hex,
                                     by = "Month",
                                     sum("Cancelled"),
                                     gb.control=list(na.methods="rm"))
cancellation_rate <- cancellationsByMonth$sum_Cancelled/flightsByMonth$nrow
rates_table <- h2o.cbind(flightsByMonth$Month,cancellation_rate)
rates_table.R <- as.data.frame(rates_table)
rates_table.R


cols <- c("Dest", "IsArrDelayed", "IsDepDelayed")
originFlights <- h2o.group_by(data = airlines.hex[c("Origin",cols)],
                              by = "Origin",
                              sum(cols),
                              gb.control = list(na.methods = "ignore", col.names = NULL))

# Note a warning because col.names null
res <- h2o.cbind(lapply(cols, function(x){h2o.group_by(airlines.hex,by="Origin",sum(x))}))[,c(1,2,4,6)]
res
summary(airlines.hex)


# View quantiles and histograms
#high_na_columns = h2o.ignoreColumns(data = airlines.hex)
quantile(x = airlines.hex$ArrDelay, na.rm = TRUE)
h2o.hist(airlines.hex$ArrDelay)

airlines.split = h2o.splitFrame(data = airlines.hex,
                                ratios = 0.85) # Split data into test and train 
airlines.train = airlines.split[[1]]  # train data set
airlines.test = airlines.split[[2]]  # test data set
h2o.table(airlines.train$Cancelled)  # View table data set 
h2o.table(airlines.test$Cancelled)   # View table data set

# Set predictor and response variables
Y = "IsDepDelayed"
X = c("Origin", "Dest", "DayofMonth", "Year", "DayOfWeek", "Month", "DepTime", "Distance")
# Define the data for the model and display the
# results

airlines.glm <- h2o.glm(training_frame=airlines.train,
                        x=X, y=Y, family = "binomial", alpha = 0.5)
# View model information: training statistics,
performance, important variables
summary(airlines.glm)

# Predict using GLM model
pred = h2o.predict(object = airlines.glm, newdata =
                     airlines.test)
# Look at summary of predictions: probability of TRUE
class (pred$p1)
summary(pred$p1)
pred

airlines.glm <- h2o.glm(training_frame=airlines.train,
                        x=X, y=Y, family = "binomial", alpha = 0.5)
# View model information: training statistics,
performance, important variables
summary(airlines.glm)

# Predict using GLM model
pred = h2o.predict(object = airlines.glm, newdata =
                     airlines.test)

# Look at summary of predictions: probability of TRUE
class (pred$p1)
summary(pred$p1)
pred

irisPath = system.file("extdata", "iris.csv", package=
                         "h2o")
irisPath

iris.hex = h2o.uploadFile(path = irisPath, destination_frame = "iris.hex")
iris.hex                          
class(iris.hex)
irisPath = system.file("extdata", "iris_wheader.csv",
                       package="h2o")
iris.hex = h2o.importFile(path = irisPath)
class(iris.hex)
as.factor(iris.hex[,4]) # Converting into dataframe to factor 
iris.hex[,4] <- as.factor(iris.hex[,4])
as.factor(iris.hex[,4])
summary(iris.hex[,4])


# Import the iris data into H2O
data(iris)
iris
# Convert R data frame into H2O data frame
iris.hex = as.h2o(iris, destination_frame= "iris.hex")
head(iris.hex)
## Assign a new name to prostate dataset in the KV store
h2o.ls()
##Displays the titles of the columns
colnames(iris.hex)
names(iris.hex)
min(iris.hex$Sepal.Width)
max(iris.hex$Sepal.Width)
summary(iris.hex)
head(as.data.frame(h2o.table(iris.hex[,"Sepal.Width"])))

## Creates object for uniform distribution on prostate data set
iris_s <- h2o.runif(iris.hex)
iris.train <- iris.hex[iris_s <= 0.8,]
iris.train <- h2o.assign(iris.train,"prostate.train")
iris.test <- iris.hex[iris_s > 0.8,]
iris.test <- h2o.assign(iris.test, "prostate.test")
nrow(iris.train) + nrow(iris.test)
nrow(iris.hex) ## Matches the full set
iris.split <- h2o.splitFrame(data = iris.hex ,ratios = 0.75)
iris.train <- iris.split[[1]]
iris.test <- iris.split[[2]]
iris.hex <- h2o.getFrame(id = "iris.hex")
?h2o()
h2o.ls()
h2o.init(nthreads = -1)
iris.gbm <- h2o.gbm(y = 1, x = 2:5,training_frame =iris.hex, ntrees = 10, max_depth = 3,min_rows = 2,learn_rate = 0.2,distribution= "gaussian")

# To obtain the Mean-squared Error by tree from the model object:
iris.gbm@model$scoring_history
iris.gbm2 <- h2o.gbm(y = 5, x = 1:4, training_frame
                     = iris.hex, ntrees = 15, max_depth = 5, min_rows =
                       2, learn_rate = 0.01, distribution= "multinomial"
)
# prostate.glm<-h2o.glm(y = "Species", x = c("Sepal.Length","Sepal.Width","Petal.Length","Petal.Width"), training_frame = iris.hex, family = "binomial", nfolds = 10, alpha = 0.5)

#iris.hex
iris_kmean<-h2o.kmeans(training_frame = iris.hex, k = 3, x =1:4)

iris_path = system.file("extdata", "iris.csv",package="h2o")
iris.hex = h2o.importFile(path = iris_path)
iris.pca <- h2o.prcomp(training_frame = iris.hex, transform = "STANDARDIZE",k = 3)
iris.pca
