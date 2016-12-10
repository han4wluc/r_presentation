data <- read.csv(file="FILENAME",header=FALSE,sep=";");
data<- as.data.frame(data);
data.freqs <- table()
as.matrix
colnames(data) <- c('Trial', 'XPos','YPos');



#Simple use of color in a plot

x <- stats::rnorm(50);
opar <- par(bg = "white");
plot(x,ann=FALSE, type = "p",pch=6); 
#ann=FALSE remove the label
#axis = FALSE remove x & y axis
#change the type and see what happens, set limit in xlim & ylim
abline(h = 1, col = gray(.05));
#add straight line, col defines the line
lines(x, col = "green4", lty = "dotted")
#lty defines line type
points(x, bg = "limegreen", pch = 21)
title(main = "Simple Use of Color In a Plot",
      xlab = "Just a Whisper of a Label",
      col.main = "blue", col.lab = gray(.8),
      cex.main = 1.2, cex.lab = 1.0, font.main = 4, font.lab = 3)

#Rainbow
#left #change parameters to be the right 
n <-24;
pie(rep(1,n), labels="", col=rainbow(n));
#border
#right
par(bg = "white");
pie(rep(1,24), col = rainbow(24), radius = 0.9);
title(main = "A Sample Color Wheel", cex.main = 1.4, font.main = 3)

pie.sales <- c(0.12, 0.3, 0.26, 0.16, 0.04, 0.12);
names(pie.sales) <- c("Blueberry", "Cherry",
                      "Apple", "Boston Cream", "Other", "Vanilla Cream");
pie(pie.sales,
    col = c("purple","violetred1","green3","cornsilk","cyan","white"))

#boxplot
par(bg="cornsilk");
n <- 10;
g <- gl(n, 100, n*100);
x <- rnorm(n*100) + sqrt(as.numeric(g));
boxplot(split(x,g), col="lavender", notch=TRUE);
title(main="Notched Boxplots", xlab="Group", font.main=4, font.lab=1);

#fill between curves
par(bg="white")
n <- 100;
x <- c(0,cumsum(rnorm(n)));
y <- c(0,cumsum(rnorm(n)));
xx <- c(0:n, n:0);
yy <- c(x, rev(y));
plot(xx, yy, type="n", xlab="Time", ylab="Distance");
polygon(xx, yy, col="gray");

#
x <- c(0.00, 0.40, 0.86, 0.85, 0.69, 0.48, 0.54, 1.09, 1.11, 1.73, 2.05, 2.02);
par(bg="lightgray");
plot(x, type="n", axes=FALSE, ann=FALSE);
usr <- par("usr"); # indicates the boundary of the plotting region
rect(usr[1], usr[3], usr[2], usr[4], col="white", border="black");
lines(x, col="blue");
points(x, pch=21, bg="lightcyan", cex=1.25);
axis(2, col.axis="blue", las=1);
axis(1, at=1:12, lab=month.abb, col.axis="blue");
box(); #draw a box around a plot
title(main= "The Level of Interest in R", font.main=4, col.main="red");
title(xlab= "1996", col.lab="red");

## A filled histogram, showing how to change the font used for the
## main title without changing the other annotation.
par(bg="white");
x <- rnorm(1000);
hist(x, xlim=range(-4, 4, x), col="lavender", main="");
title(main="1000 Normal Random Variates", font.main=3);

#scatterplot matrix
pairs(iris[1:4], main="Edgar Anderson's Iris Data", font.main=4, pch=19);

#Plotting problem
#How can we plot to a pdf file of exactly 5 by 5 inches?
pdf("Rplots.pdf", 5, 5);
plot(1);
dev.off();

#What is the use of dev.off()?
#dev.off() stops plotting to the pdf file and restores plotting to the console.

#Try the last example of pie(). Remove the title of the pie. 
#Save the plot to a .png file and read this file into a word file.
???n <- 20;
pie(rep(1,n), labels="", col=rainbow(n), border=NA);
# Save as png
png("filename.png")
pie(rep(1,n), labels="", col=rainbow(n), border=NA) 
dev.off()


???layout(matrix(c(1,1,2,3,1,1,4,5,6,7,8,8,9,10,8,8),4,4))
layout.show(10)
#Can you make a graphic layout for a similar setup with 9 small figures 
#instead of 4 at the off-diagonal quadrants of the figure? 
#Fill each square with plot(rnorm(25),main="",xlab="",ylab="",bty=???n???).
#Hint: Be sure to make the graphics window sufficiently large.
l <- matrix(c(1,1,1,11,12,13, 1,1,1,14,15,16, 1,1,1,17,18,19, 2,3,4,20,20,20, 5,6,7,20,20,20,
              8,9,10,20,20,20),
            6,6, byrow = TRUE);
pdf(width=12,height=12);
layout(l);
for(i in 1:20){plot(rnorm(25), main="", xlab="", ylab="", bty='n')} 
dev.off()
# Restore normal layout:
layout(1)


???set.seed(1);
x <- c(rnorm(1000,.5),rnorm(500,3,1));
#make a binomal distribution
hist(x,breaks=seq(-4,8,by=.2),freq=F,col='blue',
     main='A bimodal distribution',xlab='values',ylab='%', bg='grey',density=20, las=1)
lines(density(x));

#Make a stem-leaf plot of 100 randomly sampled normally distributed values 
#with mean 100 and variance 225.
#What do the values to the left of ???|??? indicate?
???x <- rnorm(100,100,15);
stem(x)
#They indicate the tens (e.g., 5|4 denotes 54).




demo(graphics)

#http://en.wikipedia.org/wiki/Cross-cap