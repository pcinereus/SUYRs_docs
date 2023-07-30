## ----setup, include=FALSE,warning=FALSE, message=FALSE------------------------
knitr::opts_chunk$set(echo = TRUE, warning=FALSE, message=FALSE,
                      fig.path='resources/pres7.2-', dev='png', fig.ext='png')
library(gbm)
library(car)
library(tidyverse)


## ----rtreeS, echo=FALSE, results="hide"---------------------------------------
set.seed(3)
n = 100
intercept = 5
temp = runif(n)
nitro = runif(n) + 0.8 * temp
int.eff = 2
temp.eff <- 0.85
nitro.eff <- 0.5
res = rnorm(n, 0, 1)
coef <- c(int.eff, temp.eff, nitro.eff, int.eff)
mm <- model.matrix(~temp * nitro)

y <- t(coef %*% t(mm)) + res
data <- data.frame(y, x1 = temp, x2 = nitro, cx1 = scale(temp, 
    scale = F), cx2 = scale(nitro, scale = F))
head(data)


## ----nonlinearRegressionTree, echo=FALSE,fig.cap="", fig.width=10, fig.height=5, out.width='500px'----
par(mfrow=c(1,2))
plot(y~x1, data)
plot(y~x2, data)


## ----nonlinearRegressionTree1, results="hide", echo=FALSE---------------------
library(tree)
data.tree1 <- tree(y~x1,data)
data.tree2 <- tree(y~x2,data)
s1 <- gsub(".(.*)\\w.*","\\1",data.tree1$frame[1,5][1])
d1 <- data.tree1$frame[1,3]
s2 <- gsub(".(.*)\\w.*","\\1",data.tree2$frame[1,5][1])
d2 <- data.tree2$frame[1,3]

xc1 <- cut(data$x1,breaks=c(0,s1,10))
SS1 <- anova(lm(y~xc1, data))[1,2]
SSE1 <- anova(lm(y~xc1, data))[2,2]

xc2 <- cut(data$x2,breaks=c(0,s2,10))
SS2 <- anova(lm(y~xc2, data))[1,2]
SSE2 <- anova(lm(y~xc2, data))[2,2]


## ----cartPlot1, echo=FALSE,fig.cap="", fig.width=10, fig.height=5, out.width='600px'----
par(mfrow=c(1,2))
plot(y~x1, data)
abline(v=s1, col="red")
mtext(paste("SSgroup =",round(SS1,2), "; SSresid =",round(SSE1,2)),3, col="red")
plot(y~x2, data)
abline(v=s2, col="blue")
mtext(paste("SSgroup =",round(SS2,2), "; SSresid =",round(SSE2,2)),3, col="blue")


## ----cartPlot2, echo=FALSE,fig.cap="", fig.width=10, fig.height=5, out.width='600px'----
par(mfrow=c(1,2))
plot(y~x1, data)
abline(v=s1, col="red")
mtext(paste("SSgroup =",round(SS1,2), "; SSresid =",round(SSE1,2)),3, col="red")
plot(prune.tree(data.tree1,best=2))
text(prune.tree(data.tree1,best=2), digits=3)


## ----cartPlot3, echo=FALSE,fig.cap="", fig.width=10, fig.height=5, out.width='600px'----
par(mfrow=c(1,2))
plot(y~x1, data)
#abline(v=s1, col="red")
mtext(paste("SSgroup =",round(SS1,2), "; SSresid =",round(SSE1,2)),3, col="red")
partition.tree(prune.tree(data.tree1,best=2),add=TRUE, col="red")
plot(prune.tree(data.tree1,best=2))
text(prune.tree(data.tree1,best=2), digits=3)


## ----cartPlot4, echo=FALSE,fig.cap="", fig.width=10, fig.height=5, out.width='600px'----
par(mfrow=c(1,2))
data.tree3 <- tree(y~x1+x2,data)
s3 <- gsub(".(.*)\\w.*","\\1",data.tree3$frame[2,5][1])
xc3 <- cut(data$x1,breaks=c(0,s3,10))
SS3 <- anova(lm(y~xc3, data))[1,2]
SSE3 <- anova(lm(y~xc3, data))[2,2]

plot(y~x1, data)
#abline(v=s1, col="red")
mtext(paste("SSgroup =",round(SS3,2), "; SSresid =",round(SSE3,2)),3, col="red")
partition.tree(prune.tree(data.tree1,best=3),add=TRUE, col="red")
plot(prune.tree(data.tree1,best=3))
text(prune.tree(data.tree1,best=3),digits=3)


## ----cartPlot5, echo=FALSE,fig.cap="", fig.width=10, fig.height=5, out.width='600px'----
par(mfrow=c(1,2))
data.tree3 <- tree(y~x1+x2,data)
s3 <- gsub(".(.*)\\w.*","\\1",data.tree3$frame[4,5][1])
xc3 <- cut(data$x1,breaks=c(0,s3,10))
SS3 <- anova(lm(y~xc3, data))[1,2]
SSE3 <- anova(lm(y~xc3, data))[2,2]
library(scales)
plot(x2~x1, col=grey(rescale(data$y, from=c(min(data$y), max(data$y)), to=c(0.5,1))), pch=16,data)


## ----cartPlot6, echo=FALSE,fig.cap="", fig.width=10, fig.height=5, out.width='600px'----
par(mfrow=c(1,2))
data.tree3 <- tree(y~x1+x2,data)
s3 <- gsub(".(.*)\\w.*","\\1",data.tree3$frame[4,5][1])
xc3 <- cut(data$x1,breaks=c(0,s3,10))
SS3 <- anova(lm(y~xc3, data))[1,2]
SSE3 <- anova(lm(y~xc3, data))[2,2]

plot(x2~x1, col=grey(rescale(data$y, from=c(min(data$y), max(data$y)), to=c(0.5,1))), pch=16,data)
#abline(v=s1, col="red")
#mtext(paste("SSgroup =",round(SS3,2), "; SSresid =",round(SSE3,2)),3, col="red")
partition.tree(prune.tree(data.tree3,best=4),add=TRUE, col="red")
plot(prune.tree(data.tree3,best=4))
text(prune.tree(data.tree3,best=4),digits=3)


## ----cartPlot7, echo=FALSE,fig.cap="", fig.width=10, fig.height=5, out.width='600px'----
par(mfrow=c(1,2))
plot(x2~x1, col=grey(rescale(data$y, from=c(min(data$y), max(data$y)), to=c(0.5,1))), pch=16,data)
partition.tree(data.tree3,add=TRUE, col="red")
plot(data.tree3)
text(data.tree3,digits=3)


## ----cartPlot7, echo=FALSE,fig.cap="", fig.width=10, fig.height=5, out.width='600px'----
par(mfrow=c(1,2))
plot(x2~x1, col=grey(rescale(data$y, from=c(min(data$y), max(data$y)), to=c(0.5,1))), pch=16,data)
partition.tree(data.tree3,add=TRUE, col="red")
plot(data.tree3)
text(data.tree3,digits=3)


## ----cartPlot8, echo=FALSE,fig.cap="", fig.width=10, fig.height=5, out.width='600px'----
par(mfrow=c(1,2))
plot(prune.tree(data.tree3))
data.tree4 <- prune.tree(data.tree3, best=3)
plot(data.tree4)
text(data.tree4,digits=3)


## ----cartPlot9, echo=FALSE,fig.cap="", fig.width=10, fig.height=5, out.width='600px'----
xs1 <- seq(min(data$x1), max(data$x1), l=100)
x2s1 <- mean(data$x2)
pp <- predict(data.tree3, newdata=data.frame(x1=xs1, x2=x2s1))
rr <- resid(data.tree3)
par(mfrow=c(1,2))
plot(y~x1, data, type="p",pch=16, cex=0.2)
points(I(predict(data.tree3)-resid(data.tree3))~x1, data, type="p",pch=16, col="grey")
points(pp~xs1, type="l", col="red", lwd=2)

xs2 <- seq(min(data$x2), max(data$x2), l=100)
x1s2 <- mean(data$x1)
plot(y~x2, data, type="p",pch=16, cex=0.2)
pp <- predict(data.tree3, newdata=data.frame(x1=x1s2, x2=xs2))
points(I(predict(data.tree3)-resid(data.tree3))~x2, data, type="p",pch=16, col="grey")
points(pp~xs2, type="l", col="red", lwd=2)




## -----------------------------------------------------------------------------
library(tree)


## -----------------------------------------------------------------------------
library(rpart)


## ---- echo=FALSE, results="hide"----------------------------------------------
library(gbm)

## ----gbmFit, echo=FALSE, fig.width=8, fig.height=5, fig.cap="", cache=TRUE, out.width='500px'----
data.gbm <- gbm(y~x1+x2, data=data, distribution="gaussian",
   n.trees=10000,interaction.depth=3,cv.folds=3, train=0.75, bag.fraction=0.5,shrinkage=0.001, n.minobsinnode=2)

par(mar=c(4,5,1,7))
plot(data.gbm$train.error, type="l", axes=FALSE, ann=FALSE)
lines(data.gbm$valid.error, col="red")
abline(v=gbm.perf(data.gbm, method="test", oobag.curve=TRUE,overlay=TRUE,plot.it=FALSE), col="red", lty=2)
lines(rescale(cumsum(data.gbm$oobag.improve),to=c(0.5,2.5)), col="blue")
abline(v=gbm.perf(data.gbm, method="OOB", oobag.curve=TRUE,overlay=TRUE,plot.it=FALSE), col="blue", lty=2)

lines(data.gbm$cv.error, col="green")
abline(v=gbm.perf(data.gbm, method="cv", oobag.curve=TRUE,overlay=TRUE,plot.it=FALSE), col="green", lty=2)

axis(1)
mtext("Tree Index (iteration)",1, line=3, cex=1.5)
axis(2,las=1)
mtext("Squared error loss",2, line=3.5, cex=1.5)
at <- rescale(seq(0.5,2.5,by=0.5), to=c(0,1))
axis(4,las=1, at=seq(0.5,2.5,by=0.5), lab=sprintf("%2.2f",at))
mtext(expression(paste(atop("OOB improvement to squared","error loss"))),4, line=6, cex=1.5)

box(bty="u")

## best.iter <- gbm.perf(data.gbm, method="cv", oobag.curve=FALSE)
## best.iter
## #training error (black)
## #

## plot(data.gbm$valid.error) #red line (value of loss function on validation data)
## plot(data.gbm$train.error) #black line (value of loss function on training data)
## plot(data.gbm$fit)
## plot(data.gbm$oobag.improve)
## plot(cumsum(data.gbm$oobag.improve))

## plot(data.gbm$cv.error) #green line (cross validated estimate of value of loss function)

## par(mfrow=c(1,2))
## best.iter <- gbm.perf(data.gbm, method="cv", oobag.curve=TRUE,overlay=TRUE)
## best.iter

## par(mfrow=c(1,2))
## best.iter <- gbm.perf(data.gbm, method="test", oobag.curve=TRUE,overlay=TRUE)
## best.iter

## par(mfrow=c(1,2))
## best.iter <- gbm.perf(data.gbm, method="OOB", oobag.curve=TRUE,overlay=TRUE)
## best.iter


## ----gbmFit2, echo=FALSE, results="markup",fig.width=8, fig.height=5, fig.cap="", out.width='600px', eval=TRUE----
best.iter <- gbm.perf(data.gbm, method="cv", oobag.curve=TRUE,overlay=TRUE, plot.it=FALSE)
par(mfrow=c(1,2), mar=c(4,5,1,1))
plot(data.gbm,1,n.trees=best.iter,continuous.resolution=100, ann=F, axes=F)
#pp <- predict(data.gbm, n.tree=best.iter)
#rr <- resid(data.gbm, n.ree=best.iter)
#points(I(pp-rr)~data$x1, pch=16)

#axis(1)
#axis(2,las=1)
#mtext("x1",1,line=3, cex=1.5)
#mtext("y",2, line=3, cex=1.5)
#box(bty="l")
#plot(data.gbm,2,n.trees=best.iter, ann=F, axes=F)
#axis(1)
#axis(2,las=1)
#mtext("x2",1,line=3, cex=1.5)
#mtext("y",2, line=3, cex=1.5)
#box(bty="l")


## ----variableImportance, echo=FALSE, results="markup",fig.width=8, fig.height=5, fig.cap="", out.width='500px', eval=TRUE----
best.iter <- gbm.perf(data.gbm, method="cv", oobag.curve=TRUE,overlay=TRUE, plot.it=FALSE)
summary(data.gbm, n.iter=best.iter)


## ---- echo=FALSE, results="markup",fig.width=8, fig.height=5, fig.cap="", eval=TRUE----
1-sum((data$y - predict(data.gbm,newdata=data,type="response",n.trees=best.iter))^2)/sum((data$y-mean(data$y))^2)

