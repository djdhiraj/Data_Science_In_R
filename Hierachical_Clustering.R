###################################################
### Hierarchical Clustering
###################################################
# Example 1: mtcars
###################################################
# Hclust on mtcars dataset
set.seed(2835)

data(mtcars)
str(mtcars)
dataset <- mtcars

# Step 1: Find distance matrix
?dist
d <- dist(dataset, method = 'euclidean')
d

# Step 2: Apply hierarchical clustering (hclust function of stat package)
?hclust
hc = hclust(d, method = "average")

# Step 3: Plot the dendogram
plot(hc)

# Step 4: Choosing Number of Cluster
# cut tree by height
abline (h =110, col ="red")

# cut tree by number of cluster
plot(hc)
fit <- cutree(hc, k=3)
fit
table(fit)
rect.hclust(hc, k=3, border="red")

##################################################################################
# Example 2: iris dataset
# Hierarchical Clustering on iris dataset
str(iris)
iris

hc.average <- hclust(dist(iris[, 3:4], method = 'euclidean'), method = 'average')
plot(hc.average, main = "Hclust Linkage - Average")
clusterCut <- cutree(hc.average, 3)
table(clusterCut, iris$Species)


hc.single <- hclust(dist(iris[, 3:4], method = 'euclidean'), method = 'single')
plot(hc.single, main = "Hclust Linkage - Single")
clusterCut <- cutree(hc.single, 3)
table(clusterCut, iris$Species)


hc.complete <- hclust(dist(iris[, 3:4], method = 'euclidean'), method = 'complete')
plot(hc.complete, main = "Hclust Linkage - Complete")
clusterCut <- cutree(hc.complete, 3)
table(clusterCut, iris$Species)


# Visualising the clusters
library(cluster)
clusplot(iris,
         clusterCut,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels= 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of Flower'),
         xlab = 'Petal.Length',
         ylab = 'Petal.Width')
####################################################################################
#####################################################################################
# Hierarchical Clustering

# Importing the dataset
dataset = read.csv('Mall_Customers.csv')
dataset = dataset[4:5]

# Using the dendrogram to find the optimal number of clusters
dendrogram = hclust(d = dist(dataset, method = 'euclidean'), method = 'ward.D')
plot(dendrogram,
     main = paste('Dendrogram'),
     xlab = 'Customers',
     ylab = 'Euclidean distances')

# Fitting Hierarchical Clustering to the dataset
hc = hclust(d = dist(dataset, method = 'euclidean'), method = 'ward.D')
y_hc = cutree(hc, 5)
rect.hclust(hc, k=5, border="red")

# Visualising the clusters
library(cluster)
clusplot(dataset,
         y_hc,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels= 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of customers'),
         xlab = 'Annual Income',
         ylab = 'Spending Score')

table(y_hc)
