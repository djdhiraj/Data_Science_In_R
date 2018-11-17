iris %>% tbl_df
iris %>% tbl_df %>% select(Petal.Width) %>% head(3)
iris %>% tbl_df %>%
select(Sepal.Width, Petal.Length) %>% head(3)
iris %>% tbl_df %>%
select(Sepal.Length:Petal.Length) %>% head(3)
iris %>% tbl_df %>%
select(starts_with("Petal")) %>% head(3)
iris %>% tbl_df %>%
select(ends_with("Width")) %>% head(3)
iris %>% tbl_df %>%
select(contains("etal")) %>% head(3)
#mutate():Add Computed Values to Your Data Frame
iris %>% tbl_df %>%
mutate(Petal.Width.plus.Length = Petal.Width + Petal.Length) %>%
select(Species, Petal.Width.plus.Length) %>%
head(3)
iris %>% tbl_df %>%
mutate(Petal.Width.plus.Length = Petal.Width + Petal.Length,
Sepal.Width.plus.Length = Sepal.Width + Sepal.Length) %>%
select(Petal.Width.plus.Length, Sepal.Width.plus.Length) %>%
head(3)
#Transmute(): Add Computed Values to Your Data Frame and Get Rid of All
Other Columns.
iris %>% tbl_df %>%
transmute(Petal.Width.plus.Length = Petal.Width + Petal.Length) %>%
head(3)
iris %>% tbl_df %>%
arrange(Sepal.Length) %>%
head(3)
iris %>% tbl_df %>%
filter(Sepal.Length > 5 & Species == "virginica") %>%
select(Species, Sepal.Length) %>%
head(3)
iris %>% tbl_df %>% group_by(Species) %>% head(3)
iris %>%
summarise(Mean.Petal.Length = mean(Petal.Length),
Mean.Sepal.Length = mean(Sepal.Length))
iris %>%
group_by(Species) %>%
summarise(Mean.Petal.Length = mean(Petal.Length))
iris %>%
group_by(Species) %>%
summarise(Number.Of.Samples = n(),
Mean.Petal.Length = mean(Petal.Length))
iris %>% select(Species, Petal.Length) %>% head(3)
#Visualations of a iris data set.
library(ggplot2)
iris %>% select(Species, Petal.Length) %>%
qplot(Species, Petal.Length, geom = "boxplot", data = .)
iris %>%
gather(key = Attribute, value = Measurement,
Sepal.Length, Sepal.Width) %>%
select(Species, Attribute, Measurement) %>%
head(3)
iris %>%
gather(key = Attribute, value = Measurement,
Sepal.Length, Sepal.Width) %>%
select(Species, Attribute, Measurement) %>%
qplot(Attribute, Measurement,
geom = "boxplot",
facets = . ~ Species, data = .)
shape_map <- c("setosa" = 1,
"versicolor" = 2,
"virginica" = 3)
iris %$% plot(Petal.Length ~ Petal.Width,
pch = shape_map[Species])
iris %>% qplot(Petal.Width, Petal.Length ,
color = Species, data = .)
iris %>% ggplot +
geom_point(aes(x = Petal.Width, y = Petal.Length),
color = "red")
iris %>% gather(Measurement, Value, -Species) %>%
ggplot(aes(x = Species, y = Value)) +
geom_boxplot() +
facet_grid(Measurement ~ .)
iris %>% gather(Measurement, Value, -Species) %>%
ggplot(aes(x = Species, y = Value)) +
geom_boxplot() +
facet_grid(Measurement ~ ., scale = "free_y")
label_map <- c(Petal.Width = "Petal Width",
Petal.Length = "Petal Length",
Sepal.Width = "Sepal Width",
Sepal.Length = "Sepal Length")
iris %>% gather(Measurement, Value, -Species) %>%
ggplot(aes(x = Species, y = Value)) +
geom_boxplot() +
facet_grid(Measurement ~ ., scale = "free_y",
labeller = labeller(Measurement = label_map))
iris %>% ggplot(aes(x = Species, y = Petal.Length)) +
geom_boxplot() + geom_jitter(width = 0.1, height = 0.1)
iris %>% gather(Measurement, Value, -Species) %>%
ggplot(aes(x = Species, y = Value, fill = Species)) +
geom_boxplot() +
facet_grid(Measurement ~ ., scale = "free_y",
labeller = labeller(Measurement = label_map))
iris %>% ggplot(aes(x = Species, y = Petal.Length)) +
geom_boxplot() + geom_jitter(width = 0.1, height = 0.1) +
scale_x_discrete(labels = c("setosa" = "Setosa",
"versicolor" = "Versicolor",
"virginica" = "Virginica"))
iris %>% gather(Measurement, Value, -Species) %>%
ggplot(aes(x = Species, y = Value, fill = Species)) +
geom_boxplot() +
facet_grid(Measurement ~ ., scale = "free_y",
labeller = labeller(Measurement = label_map))
iris %>% gather(Measurement, Value, -Species) %>%
ggplot(aes(x = Species, y = Value, fill = Species)) +
geom_boxplot() +
scale_fill_manual(values = c("red", "green", "blue")) +
facet_grid(Measurement ~ ., scale = "free_y",
labeller = labeller(Measurement = label_map))
iris %>% gather(Measurement, Value, -Species) %>%
ggplot(aes(x = Species, y = Value, fill = Species)) +
geom_boxplot() +
scale_x_discrete(labels = c("setosa" = "Setosa",
"versicolor" = "Versicolor",
"virginica" = "Virginica")) +
scale_fill_brewer(palette = "Greens") +
facet_grid(Measurement ~ ., switch = "y",
labeller = labeller(Measurement = label_map)) +
coord_flip()
iris %>% gather(Measurement, Value, -Species) %>%
ggplot(aes(x = Species, y = Value, fill = Species)) +
geom_boxplot() +
scale_x_discrete(labels = c("setosa" = "Setosa",
"versicolor" = "Versicolor",
"virginica" = "Virginica")) +
scale_fill_brewer(palette = "Greens") +
facet_grid(Measurement ~ ., switch = "y",
labeller = labeller(Measurement = label_map)) +
coord_flip() +
theme(strip.background = element_blank()) +
theme(legend.position="top")
label_map <- c(Petal.Width = "Petal Width",
Petal.Length = "Petal Length",
Sepal.Width = "Sepal Width",
Sepal.Length = "Sepal Length")
species_map <- c(setosa = "Setosa",
versicolor = "Versicolor",
virginica = "Virginica")
iris %>% gather(Measurement, Value, -Species) %>%
ggplot(aes(x = Species, y = Value, fill = Species)) +
geom_boxplot() +
scale_x_discrete(labels = species_map) +
scale_fill_brewer(palette = "Greens", labels = species_map) +
facet_grid(Measurement ~ ., switch = "y",
labeller = labeller(Measurement = label_map)) +
coord_flip() +
theme(strip.background = element_blank()) +
theme(legend.position="top")
petal <- iris %>% ggplot() +
geom_point(aes(x = Petal.Width, y = Petal.Length,
color = Species)) +
theme(legend.position="none")
sepal <- iris %>% ggplot() +
geom_point(aes(x = Sepal.Width, y = Sepal.Length,
color = Species)) +
theme(legend.position="none")
library(gridExtra)
grid.arrange(petal, sepal, ncol = 2)
library(cowplot)
plot_grid(petal, sepal, labels = c("A", "B"))
#Sample from a lagre data set
iris %>% sample_n(size = 5)
#Unsupervised Learning.
#Dimensionality Reduction.
iris %>% head
iris %>% ggplot() +
geom_point(aes(x = Sepal.Length, y = Sepal.Width, colour = Species))
iris %>% ggplot() +
geom_point(aes(x = Petal.Length, y = Petal.Width, colour = Species))
pca <- iris %>% select(-Species) %>% prcomp
pca
mapped_iris <- pca %>% predict(iris)
mapped_iris %>% head
mapped_iris %>%
as.data.frame %>%
cbind(Species = iris$Species) %>%
ggplot() +
geom_point(aes(x = PC1, y = PC2, colour = Species))
iris_dist <- iris %>% select(-Species) %>% dist
mds_iris <- iris_dist %>% cmdscale(k=2)
mds_iris %>% head
mds_iris %>%
as.data.frame %>%
cbind(Species = iris$Species) %>%
ggplot() +
geom_point(aes(x = V1, y = V2, colour = Species))
#k-Means Clustering
clusters <- iris %>%
select(-Species) %>%
clusters$centers
clusters$cluster %>% head
clusters$cluster %>% table
iris %>%
cbind(Cluster = clusters$cluster) %>%
ggplot() +
geom_bar(aes(x = Species, fill = as.factor(Cluster)),
position = "dodge") +
scale_fill_discrete("Cluster")
pca <- iris %>%
select(-Species) %>%
prcomp
mapped_iris <- pca %>%
predict(iris)
mapped_centers <- pca %>%
predict(clusters$centers)
mapped_iris %>%
as.data.frame %>%
cbind(Species = iris$Species,
Clusters = as.factor(clusters$cluster)) %>%
ggplot() +
geom_point(aes(x = PC1, y = PC2,
colour = Species, shape = Clusters)) +
geom_point(aes(x = PC1, y = PC2),
size = 5, shape = "X",
data = as.data.frame(mapped_centers))
tbl <- table(iris$Species, clusters$cluster)
(counts <- apply(tbl, 1, which.max))
map <- rep(NA, each = 3)
map[counts] <- names(counts)
table(iris$Species, map[clusters$cluster])
#Hierarchical Clustering
iris_dist <- iris %>% select(-Species) %>% scale %>% dist
clustering <- hclust(iris_dist)
plot(clustering)
library(ggdendro)
ggdendrogram(clustering) + theme_dendro()
clusters <- clustering %>% cutree(k = 3)
iris %>%
cbind(Cluster = clusters) %>%
ggplot() +
geom_bar(aes(x = Species, fill = as.factor(Cluster)),
position = "dodge") +
scale_fill_discrete("Cluster")
mapped_iris %>%
as.data.frame %>%
cbind(Species = iris$Species,
Clusters = as.factor(clusters)) %>%
ggplot() +
geom_point(aes(x = PC1, y = PC2,
shape = Species, colour = Clusters))
kmeans(centers = 3)

iris %>% sample_frac(size = 0.02)
iris %>% sample_n(size = 5)
