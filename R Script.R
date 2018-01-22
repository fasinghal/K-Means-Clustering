# We start with a K-Means analysis on the Iris dataset
newiris <- iris
summary(newiris)
# There are three species of Iris, so we expect this dataset
# should work well with 3 clusters. Let's remove the species
# label.
newiris$Species <- NULL
# K means is easy to do in R - you don't need a special package
# But we do need to specify the number of clusters
kc <- kmeans(newiris, 3)
kc
# We can access the available components as kc$xxx
kc$totss
kc$withinss
kc$tot.withinss
kc$betweenss
# How well did we do? Let's compare the results of the clustering
# to the species value (which in this case, we know)
table(iris$Species, kc$cluster)
# Here's a plot - note we only use 2 variables so we can see the
# clusters in 2 dimensions
plot(newiris[c("Sepal.Length", "Sepal.Width")], col=kc$cluster)
points(kc$centers[,c("Sepal.Length", "Sepal.Width")], col=1:3, pch=8, cex=2)
# Suppose we take some data and try to find a cluster for this
# new observation?
df = kc$centers
df
newDF = rbind(df,c(1,1,1,1))
newDF
# The dist() function can be used to find distance between rows
# in a data matrix
?dist()
dist(newDF)
# We now find the cluster closest to our new point by
# looking at the distances.
# Load in the wine dataset
# We probably should scale the data ...
?scale
# First we scale, then we try to cluster. Note we drop
# the first column.
wine_scale = scale(wine_data[-1])
head(wine_scale)
km_wine = kmeans(wine_scale,3)
km_wine
table(wine_data[[1]], km_wine$cluster)
# This is strange - seems to have done a good job of clustering,
# but why is BetweenSS/TotalSS so low?
plot(wine_scale[,c(1,2)], col=km_wine$cluster)
points(km_wine$centers[,c(1,2)], col=1:3, pch=8, cex=2)
# Here is how to do the Elbow Method directly ...
iris.scaled <- scale(iris[, -5])
set.seed(123)
# Compute and plot wss for k = 2 to k = 15.
k.max <- 15
data <- iris.scaled
wss <- sapply(1:k.max,
function(k){kmeans(data, k, nstart=10 )$tot.withinss})
plot(1:k.max, wss,
type="b", pch = 19, frame = FALSE,
xlab="Number of clusters K",
ylab="Total within-clusters sum of squares")
abline(v = 3, lty =2)
summary(newiris)
newiris <- iris
summary(newiris)
newiris$Species <- NULL
kc <- kmeans(newiris, 3)
kc
kc$totss
kc$withinss
kc$tot.withinss
kc$betweenss
table(iris$Species, kc$cluster)
kc <- kmeans(newiris, 3)
table(iris$Species, kc$cluster)
kc <- kmeans(newiris, 3)
table(iris$Species, kc$cluster)
plot(newiris[c("Sepal.Length", "Sepal.Width")], col=kc$cluster)
plot(newiris[c("Sepal.Length", "Sepal.Width")], col=kc$cluster+2)
plot(newiris[c("Sepal.Length", "Sepal.Width")], col=kc$cluster+10)
plot(newiris[c("Sepal.Length", "Sepal.Width")], col=kc$cluster+5)
plot(newiris[c("Sepal.Length", "Sepal.Width")], col=kc$cluster)
points(kc$centers[,c("Sepal.Length", "Sepal.Width")], col=1:3, pch=8, cex=2)
df = kc$centers
df
newDF = rbind(df,c(1,1,1,1))
newDF
?dist()
dist(newDF)
wine_data <- read.csv("D:/SEM3 MS/R for Data Science/Jan 22 Lecture 4/wine_data", header=FALSE)
View(wine_data)
summary(wine_data)
wine_scale = scale(wine_data[-1])
summary(wine_data)
summary(wine_scalwe)
summary(wine_scale)
head(wine_scale)
km_wine = kmeans(wine_scale,3)
km_wine
table(wine_data[[1]], km_wine$cluster)
plot(wine_scale[,c(1,2)], col=km_wine$cluster)
points(km_wine$centers[,c(1,2)], col=1:3, pch=8, cex=2)
iris.scaled <- scale(iris[, -5])
head(iris)
iris.scaled <- scale(iris[, -5])
set.seed(123)
k.max <- 15
data <- iris.scaled
wss <- sapply(1:k.max,
function(k){kmeans(data, k, nstart=10 )$tot.withinss})
plot(1:k.max, wss,
type="b", pch = 19, frame = FALSE,
xlab="Number of clusters K",
ylab="Total within-clusters sum of squares")
plot(1:k.max, wss,
type="b", pch = 19, frame = FALSE,
xlab="Number of clusters K",
ylab="Total within-clusters sum of squares")
abline(v = 3, lty =2)4
abline(v = 3, lty =2)
?kmeans
seeds_dataset <- read.delim("D:/SEM3 MS/R for Data Science/Jan 22 Lecture 4/seeds_dataset.txt", header=FALSE)
View(seeds_dataset)
summary(seeds_dataset)
seeds<-na.omit(seeds_dataset)
summary(seeds)
seeds<-seeds[-8]
head(seeds)
StoneFlakes <- read.csv("D:/SEM3 MS/R for Data Science/Jan 22 Lecture 4/StoneFlakes.txt")
View(StoneFlakes)
data<-StoneFlakes
summary(data)
kmeans(data)
str(data)
data$FLA<-as.numeric(data$FLA)
data$PSF<-as.numeric(data$PSF)
data$ZDF1<-as.numeric(data$ZDF1)
data$FSF<-as.numeric(data$FSF)
data<-na.omit(data)
data<-scale(data)
data<-data[-1]
data<-scale(data)
summary(data)
km<-kmeans(data)
str(data)
summary(data)
data<-StoneFlakes
data<-data[-1]
data$FLA<-as.numeric(data$FLA)
> data$PSF<-as.numeric(data$PSF)
> data$ZDF1<-as.numeric(data$ZDF1)
> data$FSF<-as.numeric(data$FSF)
data$FLA<-as.numeric(data$FLA)
data$PSF<-as.numeric(data$PSF)
data$ZDF1<-as.numeric(data$ZDF1)
data$FSF<-as.numeric(data$FSF)
data<-na.omit(data)
data<-scale(data)
km<-kmeans(data,3)
km
wss <- sapply(1:k.max,
function(k){kmeans(data, k, nstart=10 )$tot.withinss})
plot(1:k.max, wss,
type="b", pch = 19, frame = FALSE,
xlab="Number of clusters K",
ylab="Total within-clusters sum of squares")
abline(v = 3, lty =2)
seeds_dataset <- read.delim("D:/SEM3 MS/R for Data Science/Jan 22 Lecture 4/seeds_dataset.txt", header=FALSE)
View(seeds_dataset)
summary(seeds_dataset)
seeds<-seeds_dataset
data<-seeds
data<-scale(na.omit(data[,-8]))
wss <- sapply(1:k.max,
function(k){kmeans(data, k, nstart=10 )$tot.withinss})
plot(1:k.max, wss,
type="b", pch = 19, frame = FALSE,
xlab="Number of clusters K",
ylab="Total within-clusters sum of squares")
abline(v = 3, lty =2)
k.max<-15
wss <- sapply(1:k.max,
function(k){kmeans(data, k, nstart=10 )$tot.withinss})
plot(1:k.max, wss,
type="b", pch = 19, frame = FALSE,
xlab="Number of clusters K",
ylab="Total within-clusters sum of squares")
abline(v = 3, lty =2)
km<-kmeans(data,3)
table(seeds_dataset$V8, km$cluster)
km$cluster
table(iris$Species, kc$cluster)
km
