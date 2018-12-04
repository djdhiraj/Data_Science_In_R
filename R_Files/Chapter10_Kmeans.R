# K-Means Clustering

# Importing the dataset
dataset = read.csv('Mall_Customers.csv')
dataset = dataset[4:5]

# Using the elbow method to find the optimal number of clusters
set.seed(6)
wcss = vector()
for (i in 1:10) wcss[i] = sum(kmeans(dataset, i)$withinss)
plot(1:10,
     wcss,
     type = 'b',
     main = paste('The Elbow Method'),
     xlab = 'Number of clusters',
     ylab = 'WCSS')

# Fitting K-Means to the dataset
set.seed(29)
kmeans = kmeans(x = dataset, centers = 5)
y_kmeans = kmeans$cluster

# Visualising the clusters
library(cluster)
?clusplot()
clusplot(dataset,
         y_kmeans,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = FALSE,
         main = paste('Clusters of customers'),
         xlab = 'Annual Income',
         ylab = 'Spending Score')

# Visualising the cluster Center
plot(dataset, col = kmeans$cluster, main = "K-Means with 5 clusters")
kmeans$centers
###########################################################################################
###########################################################################################

###################################################
### K-Mean Clustering
###################################################
set.seed(256)
# Load iris dataset into a new variable iris2
data(iris)
str(iris)

#Remove the initial label of Species from original dataset
iris2 <- iris[,-5]
iris2

# Apply K-mean clustering to understand the Species from other attributes
?kmeans
kmeans.result <- kmeans(iris2, centers = 3, nstart = 20)
kmeans.result
kmeans_result$totss
kmeans_result$withinss
kmeans_result$tot.withinss
kmeans_result$betweenss
kmeans_result$size
kmeans_result$iter
kmeans_result$ifault


# See the cluster identification for each observation
kmeans.result$cluster

# Compare with original label
table(iris$Species, kmeans.result$cluster)

# Visualizing and interpreting results of k-means()
plot(iris2[c("Sepal.Length", "Sepal.Width")])
clusplot(iris2[,c("Sepal.Length","Sepal.Width")])
clusplot(iris2[,c("Sepal.Length","Sepal.Width")],kmeans_result$cluster)
clusplot(iris2[,c("Sepal.Length","Sepal.Width")],kmeans_result$cluster,lines=1)
clusplot(iris2[,c("Sepal.Length","Sepal.Width")],kmeans_result$cluster,lines=4)
clusplot(iris2[,c("Sepal.Length","Sepal.Width")],kmeans_result$cluster,lines=4,color = TRUE)
clusplot(iris2[,c("Sepal.Length","Sepal.Width")],kmeans_result$cluster,lines=4,color = TRUE,shade = FALSE)
clusplot(iris2[,c("Sepal.Length","Sepal.Width")],kmeans_result$cluster,lines=4,color = TRUE,shade = TRUE)

plot(iris2[c("Sepal.Length", "Sepal.Width")], col = kmeans.result$cluster)
plot(iris2[c("Sepal.Length", "Sepal.Width")], col = kmeans.result$cluster, main = "K-Means with 3 clusters")

# plot cluster centers
kmeans.result$centers
kmeans.result$centers[,c("Sepal.Length", "Sepal.Width")]

points(kmeans.result$centers[,c("Sepal.Length", "Sepal.Width")], col = 1:3,pch = 8, cex=3)#cex = font size, pch = symbol

# Visualising the clusters
library(cluster)
y_kmeans <- kmeans.result$cluster
?clusplot()
clusplot(iris2[,c("Sepal.Length", "Sepal.Width")],
         y_kmeans,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of iris'),
         xlab = 'Sepal.Length',
         ylab = 'Sepal.Width')
         


# Determining number of clusters
# See Total within sum of square error
kmeans.result$tot.withinss

# Initialize total within cluster sum of squares error: wcss
set.seed(6)
wcss = vector()

# For 1 to 15 cluster centers check the WCSS
for (i in 1:10) wcss[i] = sum(kmeans(iris2, centers = i,nstart = 20)$withinss)
# Plot WSS vs. number of clusters
plot(1:10, 
     wcss, 
     type = "b", 
     main = paste('The Elbow Method'),
     xlab = "Number of Clusters", 
     ylab = "WCSS")


# Set k equal to the number of clusters corresponding to the elbow location
k <-3

# Fitting K-Means to the dataset
set.seed(29)
kmeans.result <- kmeans(iris2, centers = 3, nstart = 20)
y_kmeans = kmeans.result$cluster
##########################################################################################
points(kmeans$centers, col = 1:3,pch = 8, cex=3)#cex = font size, pch = symbol
