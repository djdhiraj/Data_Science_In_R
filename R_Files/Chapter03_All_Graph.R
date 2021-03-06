data(cars)
data("mtcars")
View(mtcars)
plot(mtcars$mpg,mtcars$disp)
plot(mtcars$mpg,mtcars$disp,type="p")
round(max(mtcars$mpg))
plot(mtcars$mpg,mtcars$disp,type="p",xlim=round(max(mtcars$mpg)),ylim = max(mtcars$cyl))
max_mpq<-round(max(mtcars$mpg))
plot(mtcars$mpg,mtcars$disp,type="p",xlim=max_mpg,ylim = max(mtcars$cyl))
max_disp<-(max(mtcars$disp))
max_disp
plot(mtcars$mpg,mtcars$disp,type="p",xlim=c(0,max_mpg),ylim = c(0,max_disp))
plot(mtcars$mpg,mtcars$disp,type="p",xlim=c(0,max_mpg),ylim = c(0,max_disp),main = "Mpg vs disp")
plot(mtcars$mpg,mtcars$disp,type="p",xlim=c(0,max_mpg),ylim = c(0,max_disp),main = "Mpg vs disp",xlab="Hourspower",ylab ="distance" )
#type = "p" stand for point
#type = "l" stand for lines
#type = "b" stand for both
#type = "c" stand for lines part along of of "b"
#type = "o" stand for overplotted
#type = "h" stand for histogram like(or high - density verticle lines,
#type = "s" stand for stair steps 
#type = "s" stand for other steps, see Details below
#type = "n" for no plotting 
plot(mtcars$mpg, mtcars$disp,type="p")
plot(mtcars$mpg, mtcars$disp,type="l")
plot(mtcars$mpg, mtcars$disp,type="b")
plot(mtcars$mpg, mtcars$disp,type="c")
plot(mtcars$mpg, mtcars$disp,type="o")
plot(mtcars$mpg, mtcars$disp,type="h")
plot(mtcars$mpg, mtcars$disp,type="s")
plot(mtcars$mpg, mtcars$disp,type="s")
plot(mtcars$mpg, mtcars$disp,type="n")#type = "l" stand for lines
#type = "b" stand for both
#type = "c" stand for lines part along of of "b"
#type = "o" stand for overplotted
#type = "h" stand for histogram like(or high - density verticle lines,
#type = "s" stand for stair steps 
#type = "s" stand for other steps, see Details below
#type = "n" for no plotting 
plot(mtcars$mpg, mtcars$disp,type="p")
plot(mtcars$mpg, mtcars$disp,type="l")
plot(mtcars$mpg, mtcars$disp,type="b")
plot(mtcars$mpg, mtcars$disp,type="c")
plot(mtcars$mpg, mtcars$disp,type="o")
plot(mtcars$mpg, mtcars$disp,type="h")
plot(mtcars$mpg, mtcars$disp,type="s")
plot(mtcars$mpg, mtcars$disp,type="s")
plot(mtcars$mpg, mtcars$disp,type="n")
#par() funtions can be used to set or query graphical parameters.parameters can be set by specifiying them as 
#argument to pair in tag = values form, by passing them as a list of tags values.
names(par())
length(names(par()))
par(mfrow=c(2,2))
plot(anscombe$x1,anscombe$y1)
plot(anscombe$x2,anscombe$y2)
plot(anscombe$x2,anscombe$y2)
plot(anscombe$x2,anscombe$y2)
xmin<-min(anscombe$x1,anscombe$x2,anscombe$x3,anscombe$x4)
xmax<-max(anscombe$x1,anscombe$x2,anscombe$x3,anscombe$x4)
ymin<-min(anscombe$y1,anscombe$y2,anscombe$y3,anscombe$y4)
ymax<-max(anscombe$y1,anscombe$y2,anscombe$y3,anscombe$y4)
plot(anscombe$x1,anscombe$y1,xlim=c(xmin,xmax),ylim=c(ymin,ymax),main="first dataset")
plot(anscombe$x2,anscombe$y2,xlim=c(xmin,xmax),ylim=c(ymin,ymax),main="second dataset")
plot(anscombe$x3,anscombe$y3,xlim=c(xmin,xmax),ylim=c(ymin,ymax),main="third dataset")
plot(anscombe$x4,anscombe$y4,xlim=c(xmin,xmax),ylim=c(ymin,ymax),main="forth dataset")
colors()
rainbow(n)
lines(mtcars$mpg)
points(mtcars$mpg,mtcars$disp,pch="1")
barplot(mtcars$mpg,mtcars$disp,)
hist(mtcars$mpg)
#Colored histogram
hist(mtcars$mpg,breaks=4,col="lightblue",xlab = "x axis",ylab = "y axis")
hist(mtcars$mpg,breaks=4,col=rainbow(5),xlab="x axis",ylab = "y axis")
library(RColorBrewer)
data(VADeaths)
par(mfrow=c(2,3))
hist(VADeaths,breaks=10, col=brewer.pal(3,"Set3"),main="Set3 3 colors")
hist(VADeaths,breaks=3 ,col=brewer.pal(3,"Set2"),main="Set2 3 colors")
hist(VADeaths,breaks=7, col=brewer.pal(3,"Set1"),main="Set1 3 colors")
hist(VADeaths,,breaks= 2, col=brewer.pal(8,"Set3"),main="Set3 8 colors")
hist(VADeaths,col=brewer.pal(8,"Greys"),main="Greys 8 colors")
hist(VADeaths,col=brewer.pal(8,"Greens"),main="Greens 8 colors")
#Simple Line Plot
plot(AirPassengers,type="l") 
barplot(iris$Petal.Length) #Creating simple Bar Graph
barplot(iris$Sepal.Length,col  = brewer.pal(3,"Set1"))
barplot(table(iris$Species,iris$Sepal.Length),col  = brewer.pal(3,"Set1")) 
#Stacked Plot
boxplot(iris$Petal.Length~iris$Species) #Creating Box Plot between two variable
plot(x=iris$Petal.Length) #Simple Scatter Plot
plot(x=iris$Petal.Length,y=iris$Species) #Multivariate Scatter Plot
plot(iris,col=brewer.pal(3,"Set1"))
plot(iris,col=brewer.pal(3,"Set1"))
pie(table(iris$Species))
library(hexbin)
a=hexbin(diamonds$price,diamonds$carat,xbins=40)
library(RColorBrewer)
plot(a)
rf <- colorRampPalette(rev(brewer.pal(40,'Set3')))
hexbinplot(diamonds$price~diamonds$carat, data=diamonds, colramp=rf)
data(HairEyeColor)
mosaicplot(HairEyeColor)
heatmap(as.matrix(mtcars))
image(as.matrix(b[2:7]))
library(magrittr)
library(leaflet)
m <- leaflet() %>%
addTiles() %>%  # Add default OpenStreetMap map tiles
addMarkers(lng=77.2310, lat=28.6560, popup="The delicious food of chandni chowk")
m  # Print the map
data(iris, package="datasets")
scatter3d(Petal.Width~Petal.Length+Sepal.Length|Species, data=iris, fit="linear"
residuals=TRUE, parallel=FALSE, bg="black", axis.scales=TRUE, grid=TRUE, ellipsoid=FALSE)
attach(iris)# 3d scatterplot by factor level
cloud(Sepal.Length~Sepal.Width*Petal.Length|Species, main="3D Scatterplot by Species")
xyplot(Sepal.Width ~ Sepal.Length, iris, groups = iris$Species, pch= 20)
#Correletion graph with every other point in the data set.
cordata<-cor(mtcars)
corrplot(cordata)
corrplot(cordata,method = "ellipse")
corrplot(cordata,method = "circle")
corrplot(cordata,method = "square")
corrplot(cordata,method = "pie")
corrplot(cordata,method = "number")
corrplot(cordata,method = "shade")
corrplot(cordata,method = "color")
#Different type of layout in corrplot()
corrplot(cordata,type="upper")
corrplot(cordata,type="lower")
corrplot(cordata,type="full")
correcorrplot.mixed(cordata)
corrplot.mixed(cordata, lower.col = "black", number.cex = .7)
corrplot.mixed(cordata, lower = "ellipse", upper = "circle")
corrplot.mixed(cordata, lower = "square", upper = "circle", tl.col = "black")
corrplot(cordata, order = "AOE")
corrplot(cordata, order = "hclust")
corrplot(cordata, order = "FPC")
corrplot(cordataM, order = "alphabet")
corrplot(cordata, order = "alphabet")
corrplot(cordata, order = "hclust", addrect = 2)
corrplot(cordata, order = "hclust", addrect = 3)
corrplot(cordata, type = "upper", order = "hclust",
col = c("black", "white"), bg = "lightblue")
correcorrplot.mixed(cordata)
corrplot.mixed(cordata, lower.col = "black", number.cex = .7)
corrplot.mixed(cordata, lower = "ellipse", upper = "circle")
corrplot.mixed(cordata, lower = "square", upper = "circle", tl.col = "black")
corrplot(cordata, order = "AOE")
corrplot(cordata, order = "hclust")
corrplot(cordata, order = "FPC")
corrplot(cordataM, order = "alphabet")
corrplot(cordata, order = "alphabet")
corrplot(cordata, order = "hclust", addrect = 2)
corrplot(cordata, order = "hclust", addrect = 3)
corrplot(cordata, type = "upper", order = "hclust",
col = c("black", "white"), bg = "lightblue")
col1 <- colorRampPalette(c("#7F0000", "red", "#FF7F00", "yellow", "white",
                           "cyan", "#007FFF", "blue", "#00007F"))
col2 <- colorRampPalette(c("#67001F", "#B2182B", "#D6604D", "#F4A582",
                           "#FDDBC7", "#FFFFFF", "#D1E5F0", "#92C5DE",
                           "#4393C3", "#2166AC", "#053061"))
col3 <- colorRampPalette(c("red", "white", "blue")) 
col4 <- colorRampPalette(c("#7F0000", "red", "#FF7F00", "yellow", "#7FFF7F",
                           "cyan", "#007FFF", "blue", "#00007F"))
whiteblack <- c("white", "black")

## using these color spectra
corrplot(cordata, order = "hclust", addrect = 2, col = col1(100))
corrplot(M, order = "hclust", addrect = 2, col = col2(50))
corrplot(M, order = "hclust", addrect = 2, col = col3(20))
corrplot(M, order = "hclust", addrect = 2, col = col4(10))
corrplot(M, order = "hclust", addrect = 2, col = whiteblack, bg = "gold2")
corrplot(M, order = "hclust", addrect = 2, col = heat.colors(100))
corrplot(M, order = "hclust", addrect = 2, col = terrain.colors(100))
corrplot(M, order = "hclust", addrect = 2, col = cm.colors(100))
corrplot(M, order = "hclust", addrect = 2, col = gray.colors(100))
library(RColorBrewer)
corrplot(M, type = "upper", order = "hclust",
         col = brewer.pal(n = 8, name = "RdBu"))
corrplot(M, type = "upper", order = "hclust",
         col = brewer.pal(n = 8, name = "RdYlBu"))
corrplot(M, type = "upper", order = "hclust",
         col = brewer.pal(n = 8, name = "PuOr"))
#Changing color and rotation of text labels and legend
#Parameter cl.* is for color legend, and tl.* if for text legend. For the text label, tl.col (text label color) and tl.srt 
#(text label string rotation) are used to change text colors and rotations.
## remove color legend and text legend 
corrplot(M, order = "AOE", cl.pos = "n", tl.pos = "n")  
## bottom  color legend, diagonal text legend, rotate text label
corrplot(M, order = "AOE", cl.pos = "b", tl.pos = "d", tl.srt = 60)
## a wider color legend with numbers right aligned
corrplot(M, order = "AOE", cl.ratio = 0.2, cl.align = "r")
## text labels rotated 45 degrees
corrplot(M, type = "lower", order = "hclust", tl.col = "black", tl.srt = 45)
#Dealing with a non-correlation matrix
corrplot(abs(M),order = "AOE", col = col3(200), cl.lim = c(0, 1))
## visualize a  matrix in [-100, 100]
ran <- round(matrix(runif(225, -100,100), 15))
corrplot(ran, is.corr = FALSE, method = "square")
## a beautiful color legend 
corrplot(ran, is.corr = FALSE, method = "ellipse", cl.lim = c(-100, 100))
#If your matrix is rectangular, you can adjust the aspect ratio with the win.asp parameter to make the matrix rendered as a square.

ran <- matrix(rnorm(70), ncol = 7)
corrplot(ran, is.corr = FALSE, win.asp = .7, method = "circle")
#Dealing with missing (NA) values
#By default, corrplot renders NA values as "?" characters. Using na.label parameter, it is possible to use a different value (max. two characters are supported).

M2 <- M
diag(M2) = NA
corrplot(M2)
corrplot(M2, na.label = "o")
corrplot(M2, na.label = "NA")
#Using “plotmath” expressions in labels
#Since version 0.78, it is possible to use plotmath expression in variable names.
#To activate plotmath rendering, prefix your label with one of the characters ":", "=" or "$".
M2 <- M[1:5,1:5]
colnames(M2) <- c("alpha", "beta", ":alpha+beta", ":a[0]", "=a[beta]")
rownames(M2) <- c("alpha", "beta", NA, "$a[0]", "$ a[beta]")
corrplot(M2)
#Combining correlogram with the significance test
res1 <- cor.mtest(mtcars, conf.level = .95)
res2 <- cor.mtest(mtcars, conf.level = .99)
## specialized the insignificant value according to the significant level
corrplot(M, p.mat = res1$p, sig.level = .2)
corrplot(M, p.mat = res1$p, sig.level = .05)
corrplot(M, p.mat = res1$p, sig.level = .01)
## leave blank on no significant coefficient
corrplot(M, p.mat = res1$p, insig = "blank")
## add p-values on no significant coefficient
corrplot(M, p.mat = res1$p, insig = "p-value")
## add all p-values
corrplot(M, p.mat = res1$p, insig = "p-value", sig.level = -1)
## add cross on no significant coefficient 
corrplot(M, p.mat = res1$p, order = "hclust", insig = "pch", addrect = 3)
#Visualize confidence interval
corrplot(M, low = res1$lowCI, upp = res1$uppCI, order = "hclust",
         rect.col = "navy", plotC = "rect", cl.pos = "n")
corrplot(M, p.mat = res1$p, low = res1$lowCI, upp = res1$uppCI,
         order = "hclust", pch.col = "red", sig.level = 0.01,
         addrect = 3, rect.col = "navy", plotC = "rect", cl.pos = "n")
res1 <- cor.mtest(mtcars, conf.level = .95)
corrplot(M, p.mat = res1$p, insig = "label_sig",
         sig.level = c(.001, .01, .05), pch.cex = .9, pch.col = "white")
corrplot(M, p.mat = res1$p, method = "color",
         insig = "label_sig", pch.col = "white")
corrplot(M, p.mat = res1$p, method = "color", type = "upper",
         sig.level = c(.001, .01, .05), pch.cex = .9,
         insig = "label_sig", pch.col = "white", order = "AOE")
corrplot(M, p.mat = res1$p, insig = "label_sig", pch.col = "white",
         pch = "p<.05", pch.cex = .5, order = "AOE")
Customize the correlogram
# matrix of the p-value of the correlation
p.mat <- cor.mtest(mtcars)$p
head(p.mat[, 1:5])
##              [,1]         [,2]         [,3]         [,4]         [,5]
## [1,] 0.000000e+00 6.112687e-10 9.380327e-10 1.787835e-07 1.776240e-05
## [2,] 6.112687e-10 0.000000e+00 1.802838e-12 3.477861e-09 8.244636e-06
## [3,] 9.380327e-10 1.802838e-12 0.000000e+00 7.142679e-08 5.282022e-06
## [4,] 1.787835e-07 3.477861e-09 7.142679e-08 0.000000e+00 9.988772e-03
## [5,] 1.776240e-05 8.244636e-06 5.282022e-06 9.988772e-03 0.000000e+00
## [6,] 1.293959e-10 1.217567e-07 1.222320e-11 4.145827e-05 4.784260e-06
# Specialized the insignificant value according to the significant level
corrplot(M, type = "upper", order = "hclust", 
         p.mat = p.mat, sig.level = 0.01)
# Leave blank on no significant coefficient
corrplot(M, type = "upper", order = "hclust", 
         p.mat = p.mat, sig.level = 0.01, insig = "blank")
#In the above figure, correlations with p-value > 0.01 are considered as insignificant. 
#In this case the correlation coefficient values are leaved blank or crosses are added.
col <- colorRampPalette(c("#BB4444", "#EE9988", "#FFFFFF", "#77AADD", "#4477AA"))
corrplot(M, method = "color", col = col(200),
         type = "upper", order = "hclust", number.cex = .7,
         addCoef.col = "black", # Add coefficient of correlation
         tl.col = "black", tl.srt = 90, # Text label color and rotation
         # Combine with significance
         p.mat = p.mat, sig.level = 0.01, insig = "blank", 
         # hide correlation coefficient on the principal diagonal
         diag = FALSE)
ggplot(x=mpg,y=cyl)
ggplot(x=mpg,y=cyl,aes(x=mpg))
ggplot(x=mpg,y=cyl,aes(x=mpg,y=cyl))
ggplot(mpg)
ggplot(mpg,cyl)
ggplot(x=mpg,y=cyl,aes(x=mpg,y=cyl))
ggplot(x=mtcars$mpg,y=mtcars$cyl)
ggplot(x=mtcars$mpg,y=mtcars$cyl,aes(x=mpg))
plot(mtcars)
ggplot(mpg, aes(displ, hwy, colour = class)) +
geom_point()
ggplot(mpg, aes(displ, hwy, colour = class)) +
geom_histogram()
ggplot(mpg, aes(displ, colour = class)) +
geom_histogram()
ggplot(mpg,cyl, aes(displ, colour = class)) +
geom_histogram()
ggplot(mpg, aes(displ, colour = class)) +
geom_histogram()
ggplot(mpg, aes(displ, colour = class)) +
geom_polygon()
ggplot(mpg, aes(displ,cyl, colour = class)) +
geom_polygon()
library(ggplot2)
ggplot(mtcars,aes(x=wt,y=mpg))
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()
ggplot(mtcars,aes(x=wt,y=mpg),col=disp)+geom_point()
ggplot(mtcars,aes(x=wt,y=mpg),col=factor(cyl)+geom_point()
)
ggplot(mtcars,aes(x=wt,y=mpg),col=factor(cyl))+geom_point()
ggplot(mtcars,aes(x=wt,y=mpg,col=disp))+geom_point()
ggplot(mtcars,aes(x=wt,y=mpg,col=disp,shape=factor(disp)))+geom_point()
ggplot(mtcars,aes(x=wt,y=mpg,col=disp,shape=factor(cyl)))+geom_point()
ggplot(mtcars,aes(x=wt,y=mpg,col=disp,size=disp))+geom_point()
ggplot(mtcars,aes(x=factor(cyl)))+geom_point()
ggplot(mtcars,aes(x=factor(cyl)))+geom_bar()
ggplot(mtcars,aes(x=factor(cyl),fill=factor(am)))+geom_bar()
ggplot(mtcars,aes(x=factor(cyl),fill=factor(mpg)))+geom_bar()
#Histogram
ggplot(mtcars,aes(x=mpg))+geom_histogram()
ggplot(mtcars,aes(x=mpg))+geom_histogram(binwidth = 5)
ggplot(mtcars,aes(x=mpg))+geom_histogram(binwidth = 5,color="black")
#Density plot
ggplot(mtcars,aes(x=factor(cyl),y=mpg))+geom_boxplot(color="black")
ggplot(mtcars,aes(x=factor(cyl),y=mpg))+geom_density(color="black")
ggplot(mtcars,aes(x=factor(cyl))+geom_density(color="black")
)
ggplot(mtcars,aes(x=mpg))+geom_density(color="black")
facet layer
mtcars$am[which(mtcars$am==0)]<-"automatic"
mtcars$am[which(mtcars$am==1)]<-"automatic"
mtcars$am[which(mtcars$am==1)]<-"Manual"
mtcars$<-as.factor(mtcars$am)
mtcars$am<-as.factor(mtcars$am)
ggplot(mtcars,aes(x=wt,y=mpg,shape=factor(cyl),col=qsec))+geom_point()
#Basic scatter plot
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()+facet_grid(am~cyl)
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()+stat_smooth(method=lm,col="red")
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()+stat_smooth()
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()+stat_smooth(method=lm)
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()+stat_smooth(method=lm,se=FALSE)
ggplot(mtcars,aes(x=wt,y=mpg))+stat_smooth(method=lm,se=FALSE)
ggplot(mtcars,aes(x=wt,y=mpg))+stat_smooth(method=lm,se=FALSE)+scale_y_continuous("mpg",limits=c(2,35),expand=c(0,0))+scale_x_continuous("wt",limits=c(0,20))
ggplot(mtcars,aes(x=wt,y=mpg))+stat_smooth(method=lm,se=FALSE)+scale_y_continuous("mpg",limits=c(2,35),expand=c(0,0))+scale_x_continuous("wt",limits=c(0,20)expand=c(0,0))
ggplot(mtcars,aes(x=wt,y=mpg))+stat_smooth(method=lm,se=FALSE)+scale_y_continuous("mpg",limits=c(2,35),expand=c(0,0))+scale_x_continuous("wt",limits=c(0,20)expand=c(0,0))+coord_equal()
ggplot(mtcars,aes(x=wt,y=hp,col=am))+geom_point()
ggplot(mtcars,aes(x=wt,y=hp,col=am))+geom_point()+coord_cartesian(xlim=c(3,6))
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()+facet_grid(.~cyl)
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()+facet_grid(.~cyl)+theme(plot.background = element_rect(fill="darklight"))
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()+facet_grid(.~cyl)+theme(plot.background = element_rect(fill="darkgrey"))
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()+facet_grid(.~cyl)+theme(plot.background = element_rect(fill="darkgrey",color="black"),size=3)
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()+facet_grid(.~cyl)+theme(plot.background = element_rect(fill="darkgrey",color="black",size=3))
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()+facet_grid(.~cyl)+theme(plot.background = element_rect(fill="darkgrey",color="black",size=3))
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()+facet_grid(.~cyl)+theme_classic()
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()+facet_grid(.~cyl)+theme_bw()
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()+facet_grid(.~cyl)+theme_dark()
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()+facet_grid(.~cyl)+theme_gray()
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()+facet_grid(.~cyl)+theme_get()
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()+facet_grid(.~cyl)+theme_grey()
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()+facet_grid(.~cyl)+theme_light()
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()+facet_grid(.~cyl)+theme_linedraw()
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()+facet_grid(.~cyl)+theme_set()
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()+facet_grid(.~cyl)+theme_replace()
#Quality control graph 
install.packages("qcc")
library(qcc)
barplot(prop.table(table(state.region)), cex.names = 1.20)
pareto.chart(table(state.division), ylab="Frequency")
stripchart(precip, xlab="rainfall")
stripchart(rivers, method="jitter", xlab="length")
stripchart(discoveries, method="stack", xlab="number"
stripchart(precip, xlab="rainfall")
stripchart(rivers, method="jitter", xlab="length")
stripchart(discoveries, method="stack", xlab="number")
stripchart(precip, xlab="rainfall")
stripchart(rivers, method="jitter", xlab="length")
stripchart(discoveries, method="stack", xlab="number")
hist(precip, freq = FALSE, main = "")
hist(precip, main = "")
hist(precip, breaks = 10)
hist(precip, breaks = 25)
hist(precip, breaks = 50)
stem.leaf(precip,depth=FALSE)

