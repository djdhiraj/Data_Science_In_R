library(ggplot2)
theme_set(theme_bw())  # pre-set the bw theme.
data("midwest", package = "ggplot2")
# midwest <- read.csv("http://goo.gl/G1K41K")  # bkup data source

# Scatterplot
gg <- ggplot(midwest, aes(x=area, y=poptotal)) + 
  geom_point(aes(col=state, size=popdensity)) + 
  geom_smooth(method="loess", se=F) + 
  xlim(c(0, 0.1)) + 
  ylim(c(0, 500000)) + 
  labs(subtitle="Area Vs Population", 
       y="Population", 
       x="Area", 
       title="Scatterplot", 
       caption = "Source: midwest")

plot(gg)

#Multiple Lines in a Line Chart
# Create the data for the chart.
v <- c(7,12,28,3,41)
t <- c(14,7,6,19,3)

# Give the chart file a name.
png(file = "line_chart_2_lines.jpg")

# Plot the bar chart.
plot(v,type = "o",col = "red", xlab = "Month", ylab = "Rain fall", 
   main = "Rain fall chart")

lines(t, type = "o", col = "blue")

# Save the file.
dev.off()


data<-read.csv(file.choose())
tsData <- EuStockMarkets[, 1] # ts data
decomposedRes <- decompose(tsData1) # use type = "additive" for additive components
plot (tsData1)
plot(tsData2)
View(tsData)
tsData1<-data[,1:2]
tsData2<-data[,1:3]
View(tsData1)
attach(mtcars)
par(mfrow=c(2,2))
plot(wt,mpg, main="Scatterplot of wt vs. mpg")
plot(wt,disp, main="Scatterplot of wt vs disp")
hist(wt, main="Histogram of wt")
boxplot(wt, main="Boxplot of wt")
plot(Class.1,type="o",main="Class 1")
plot(Class.2,typ="o",main="Class 2")
plot(Class.3,type="o",main="Class 3")
plot(Class.4,type="o",main="class 4")
plot(Class.5,type="o",main="class 5")
plot(Class.6,type="o",main="class 6",col="Green")
attach(data)
lines(Class.1,col="Blue")
lines(Class.2,col="red")

