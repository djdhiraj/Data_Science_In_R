
## DBSCAN
###################################################
# Step 1: load fpc package
#install.packages("fpc")
library(fpc)

# Remove label from iris dataset
iris2 <- iris[-5] # remove class tags

# Step 2: Apply DbScan clustering
ds_model <- dbscan(iris2, eps=0.45, MinPts=5)


# Interpretation of Model
ds_model
# 1 to 3 : identified clusters
# 0: noises or outliers, objects that are not assigned to any clusters

# Check the cluster
ds_model$cluster

# compare clusters with original class labels
table(ds_model$cluster, iris$Species)

# Plot Cluster
plot(ds_model, iris2, main = "DBSCAN")
plot(ds_model, iris2[c(1,4)], main = "Petal Width vs Sepal Length")
############################################################################################
#############################################################################################
#Install and load mlbench and fpc package
#install.packages("mlbench")
library(mlbench)

#install.packages("fpc")
library(fpc)

#Use mlbench libary to draw a cassini problem graph
set.seed(2)
dataset = mlbench.cassini(500)
plot(dataset$x)

?dbscan()
ds = dbscan(dist(dataset$x),eps= 0.2, MinPts = 2,countmode = NULL,method = "dist")
ds
ds$cluster

plot(ds, dataset$x)

y = matrix(0, nrow = 3, ncol = 2)
y[1,] = c(0,0)
y[2,] = c(0,-1.5)
y[3,] = c(1,1)
y

#Use DBScan to predict which cluster the data belongs to
predict(ds, dataset$x, y)
 


