# Combined Plots
#plot, histogram, pie, boxplot, linechart, correlation plot

#plot
women
plot(women)
plot(women, type='p', pch=20, col='red')
plot(women, type='l')
plot(women, type='b')
plot(women, type='b', pch=15, lty=2, col=2)
plot(women, xlim=c(30,100), ylim=c(min(women$weight)-10, 200), pch=10)

#more features with plot
plot(x=women$weight, y=women$height, pch=15, xlab='Weight', ylab='Height', col='red', cex=2, type='b')
title(main='Main Title', sub='Sub Title')
#see cheat sheet on base graphs

plot(women)
abline(lm(women$weight ~ women$height), col='red', lty=2, lwd=4)

#boxplot
boxplot(women$height)
abline(h=c(58, 62,65,68,72))

#correlation plot
pairs(women)
cor(women$height,women$weight)
plot(women)
cov(women$height, women$weight)
head(mtcars)

cor(mtcars)
names(mtcars)
pairs(mtcars)
pairs(mtcars[1:4])
options(digits=4)
pairs(mtcars[c('mpg', 'wt','hp')])
