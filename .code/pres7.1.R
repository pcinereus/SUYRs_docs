## ----setup, include=FALSE,warning=FALSE, message=FALSE------------------------
knitr::opts_chunk$set(echo = TRUE, warning=FALSE, message=FALSE,
                      fig.path='resources/pres7.1-', dev='png', fig.ext='png')
options(tinytex.engine = 'xelatex')
library(tidyverse)



## ----mathematicalModels, echo=FALSE, fig.width=6, fig.height=4, out.width='300px', cache=FALSE----
x <- 0:6 
y <- 2+(1.5*x)
opar <- par(mar=c(4,5,0,0))
plot(y~x, ann=FALSE, axes=FALSE, type="p", pch=16,ylim=c(0,12), xlim=c(0,6))
axis(1,pos=0,lwd=2)
mtext("x", 1, line=2,font=2, cex=1.5)
axis(2,las=1,pos=0,lwd=2)
mtext("y", 2, line=2,font=2,las=1, cex=1.5)
abline(a=2,b=1.5,lwd=2)
text(2,3,"y=2+1.5x", pos=4,cex=2.5,font=1)
#system("convert -resize 100% images/figmathematicalModels-1.pdf images/figmathematicalModels-1.png")


## ----statisticalModels, echo=FALSE, fig.width=6, fig.height=4, out.width='300px', cache=FALSE----
#pdf(file='images/pres_4_statisticalModels.pdf', width=5, height=3)
x <- 0:6
y <- 2+(1.5*x)
y2 <- y+c(1,-1,1,-1,1,-1,1)
opar <- par(mar=c(4,5,0,0))
plot(y~x, ann=FALSE, axes=FALSE, type="n", ylim=c(0,12), xlim=c(0,6))
points(y2~x,pch=16)
axis(1,pos=0,lwd=2)
mtext("x", 1, line=2,font=2, cex=1.5)
axis(2,las=1,pos=0,lwd=2)
mtext("y", 2, line=2,font=2,las=1, cex=1.5)
abline(a=2,b=1.5,lwd=2)
text(2,3,expression(paste('y=2+1.5x+',epsilon)), pos=4,cex=2.5,font=2)
#dev.off()
#system("convert -resize 100% images/figstatisticalModels-1.pdf images/figstatisticalModels-1.png") 


## ----statisticalModels, echo=FALSE, fig.width=6, fig.height=4, out.width='200px', cache=FALSE----
#pdf(file='images/pres_4_statisticalModels.pdf', width=5, height=3)
x <- 0:6
y <- 2+(1.5*x)
y2 <- y+c(1,-1,1,-1,1,-1,1)
opar <- par(mar=c(4,5,0,0))
plot(y~x, ann=FALSE, axes=FALSE, type="n", ylim=c(0,12), xlim=c(0,6))
points(y2~x,pch=16)
axis(1,pos=0,lwd=2)
mtext("x", 1, line=2,font=2, cex=1.5)
axis(2,las=1,pos=0,lwd=2)
mtext("y", 2, line=2,font=2,las=1, cex=1.5)
abline(a=2,b=1.5,lwd=2)
text(2,3,expression(paste('y=2+1.5x+',epsilon)), pos=4,cex=2.5,font=2)
#dev.off()
#system("convert -resize 100% images/figstatisticalModels-1.pdf images/figstatisticalModels-1.png") 


## ----statisticalModels2, results='hide',echo=FALSE,fig.width=6, fig.height=4, out.width='200px'----
x <- 0:6
y <- 2+(1.5*x)
y2 <- y+c(1,-1,1,-1,1,-1,1)
opar <- par(mar=c(4,5,0,0))
plot(y~x, ann=FALSE, axes=FALSE, type="n", ylim=c(0,12), xlim=c(0,6))
segments(x,y2,x,y, col="red")
points(y2~x,pch=16)
axis(1,pos=0,lwd=2)
mtext("x", 1, line=2,font=2, cex=1.5)
axis(2,las=1,pos=0,lwd=2)
mtext("y", 2, line=2,font=2,las=1, cex=1.5)
abline(a=2,b=1.5,lwd=2)
text(2,3,expression(paste('y=2+1.5x+',epsilon)), pos=4,cex=2.5,font=2)


## ----statisticalModels, echo=FALSE,fig.width=6, fig.height=4, out.width='200px', cache=FALSE----
#pdf(file='images/pres_4_statisticalModels.pdf', width=5, height=3)
x <- 0:6
y <- 2+(1.5*x)
y2 <- y+c(1,-1,1,-1,1,-1,1)
opar <- par(mar=c(4,5,0,0))
plot(y~x, ann=FALSE, axes=FALSE, type="n", ylim=c(0,12), xlim=c(0,6))
points(y2~x,pch=16)
axis(1,pos=0,lwd=2)
mtext("x", 1, line=2,font=2, cex=1.5)
axis(2,las=1,pos=0,lwd=2)
mtext("y", 2, line=2,font=2,las=1, cex=1.5)
abline(a=2,b=1.5,lwd=2)
text(2,3,expression(paste('y=2+1.5x+',epsilon)), pos=4,cex=2.5,font=2)
#dev.off()
#system("convert -resize 100% images/figstatisticalModels-1.pdf images/figstatisticalModels-1.png") 


## ----statisticalModels, echo=FALSE,fig.width=6, fig.height=4, out.width='300px', cache=FALSE----
#pdf(file='images/pres_4_statisticalModels.pdf', width=5, height=3)
x <- 0:6
y <- 2+(1.5*x)
y2 <- y+c(1,-1,1,-1,1,-1,1)
opar <- par(mar=c(4,5,0,0))
plot(y~x, ann=FALSE, axes=FALSE, type="n", ylim=c(0,12), xlim=c(0,6))
points(y2~x,pch=16)
axis(1,pos=0,lwd=2)
mtext("x", 1, line=2,font=2, cex=1.5)
axis(2,las=1,pos=0,lwd=2)
mtext("y", 2, line=2,font=2,las=1, cex=1.5)
abline(a=2,b=1.5,lwd=2)
text(2,3,expression(paste('y=2+1.5x+',epsilon)), pos=4,cex=2.5,font=2)
#dev.off()
#system("convert -resize 100% images/figstatisticalModels-1.pdf images/figstatisticalModels-1.png") 


## ----statisticalModels2, results='hide',echo=FALSE,fig.width=6, fig.height=4, out.width='300px'----
x <- 0:6
y <- 2+(1.5*x)
y2 <- y+c(1,-1,1,-1,1,-1,1)
opar <- par(mar=c(4,5,0,0))
plot(y~x, ann=FALSE, axes=FALSE, type="n", ylim=c(0,12), xlim=c(0,6))
segments(x,y2,x,y, col="red")
points(y2~x,pch=16)
axis(1,pos=0,lwd=2)
mtext("x", 1, line=2,font=2, cex=1.5)
axis(2,las=1,pos=0,lwd=2)
mtext("y", 2, line=2,font=2,las=1, cex=1.5)
abline(a=2,b=1.5,lwd=2)
text(2,3,expression(paste('y=2+1.5x+',epsilon)), pos=4,cex=2.5,font=2)


## ----OLS, echo=FALSE, fig.keep="last", fig.width=8, fig.height=6, fig.cap="", out.width='500px'----
set.seed(1)
x <- sample(c(7.5,9,10.5,11, 12))
ols <- function(x,mu) {
  sum((x-mu)^2)
}
est <- seq(6,14,l=100)
x.ols <-NULL
for (i in est) {
  x.ols <-c(x.ols,ols(x,i))
}
nf <- layout(matrix(c(1,2), 2, 1, byrow=TRUE), respect=F, height=c(6,4))
op <- par(mar=c(0,2,4,0))
plot(x.ols~est,ann=FALSE, axes=FALSE,xlim=c(6,14), type="n",ylim=c(0,max(x.ols)))

op <- par(mar=c(4,2,.5,0),xpd=T)
plot(x,1:5, ann=FALSE, axes=FALSE, pch=16, xlim=c(6,14),ylim=c(0,6), type="n")
axis(1,las=1)
points(x,rep(0,5), pch=16)
mtext("Parameter estimates",1, line=3)


## ----OLS1, echo=FALSE, fig.keep="last", fig.width=8, fig.height=6, fig.cap="", out.width='500px'----
set.seed(1)
x <- sample(c(7.5,9,10.5,11, 12))
ols <- function(x,mu) {
  sum((x-mu)^2)
}
est <- seq(6,14,l=100)
x.ols <-NULL
for (i in est) {
  x.ols <-c(x.ols,ols(x,i))
}
nf <- layout(matrix(c(1,2), 2, 1, byrow=TRUE), respect=F, height=c(6,4))
op <- par(mar=c(0,2,4,0))
plot(x.ols~est,ann=FALSE, axes=FALSE,xlim=c(6,14), type="n",ylim=c(0,max(x.ols)))
#axis(3, pos=max(x.ols))
#mtext("Sum of squares",2, line=0)
#for (i in seq(6,14,by=.5)) segments(i,0, i,ols(x,i), col="gray80", lty=2)
#text(11,8, expression(paste(mu,"=10")),cex=2)
#mtext("Parameter estimates",3, line=2)
#arrows(10,0,10,ols(x,10), col="black", length=.1, lty=1)
#lines(c(6,6),c(max(x.ols),0))
#polygon(c(6,6.1,5.9),c(0, 5,5),col="black", border=F)
#arrows(7,0,7,ols(x,7), col="gray40", length=.1, lty=1)
#arrows(8,0,8,ols(x,8), col="gray40", length=.1, lty=1)
op <- par(mar=c(4,2,.5,0),xpd=T)
plot(x,1:5, ann=FALSE, axes=FALSE, pch=16, xlim=c(6,14),ylim=c(0,6), type="n")
axis(1,las=1)
##box(bty="l")
#x.lm <- lm(x~1)
#segments(seq(6,14,by=.5),0,seq(6,14,by=.5),9, col="gray80",lty=2)
#lines(c(10,10),c(0,6))
#points(x,(1:5)+0.4, pch=16, col="gray40")
lines(c(7,7),c(0,9),col="grey40")
#segments(x,(1:5)+0.4,7,(1:5)+0.4, col="grey40")

#points(x,(1:5)+0.6, pch=16, col="gray40")
#lines(c(8,8),c(0,9),col="grey40")
#segments(x,(1:5)+0.6,8,(1:5)+0.6, col="grey40")

#points(x,(1:5), pch=16)
#segments(x,1:5,x.lm$fitted,1:5)
points(x,rep(0,5), pch=16)
mtext("Parameter estimates",1, line=3)


## ----OLS2, echo=FALSE, fig.keep="last", fig.width=8, fig.height=6, fig.cap="", out.width='500px'----
set.seed(1)
x <- sample(c(7.5,9,10.5,11, 12))
ols <- function(x,mu) {
  sum((x-mu)^2)
}
est <- seq(6,14,l=100)
x.ols <-NULL
for (i in est) {
  x.ols <-c(x.ols,ols(x,i))
}
nf <- layout(matrix(c(1,2), 2, 1, byrow=TRUE), respect=F, height=c(6,4))
op <- par(mar=c(0,2,4,0))
plot(x.ols~est,ann=FALSE, axes=FALSE,xlim=c(6,14), type="n",ylim=c(0,max(x.ols)))
#axis(3, pos=max(x.ols))
#mtext("Sum of squares",2, line=0)
#for (i in seq(6,14,by=.5)) segments(i,0, i,ols(x,i), col="gray80", lty=2)
#text(11,8, expression(paste(mu,"=10")),cex=2)
#mtext("Parameter estimates",3, line=2)
#arrows(10,0,10,ols(x,10), col="black", length=.1, lty=1)
#lines(c(6,6),c(max(x.ols),0))
#polygon(c(6,6.1,5.9),c(0, 5,5),col="black", border=F)
#arrows(7,0,7,ols(x,7), col="gray40", length=.1, lty=1)
#arrows(8,0,8,ols(x,8), col="gray40", length=.1, lty=1)
op <- par(mar=c(4,2,.5,0),xpd=T)
plot(x,1:5, ann=FALSE, axes=FALSE, pch=16, xlim=c(6,14),ylim=c(0,6), type="n")
axis(1,las=1)
##box(bty="l")
#x.lm <- lm(x~1)
#segments(seq(6,14,by=.5),0,seq(6,14,by=.5),9, col="gray80",lty=2)
#lines(c(10,10),c(0,6))
points(x,(1:5)+0.4, pch=16, col="gray40")
lines(c(7,7),c(0,9),col="grey40")
segments(x,(1:5)+0.4,7,(1:5)+0.4, col="grey40")

#points(x,(1:5)+0.6, pch=16, col="gray40")
#lines(c(8,8),c(0,9),col="grey40")
#segments(x,(1:5)+0.6,8,(1:5)+0.6, col="grey40")

#points(x,(1:5), pch=16)
#segments(x,1:5,x.lm$fitted,1:5)
points(x,rep(0,5), pch=16)
mtext("Parameter estimates",1, line=3)


## ----OLS3, echo=FALSE, fig.keep="last", fig.width=8, fig.height=6, fig.cap="", out.width='500px'----
set.seed(1)
x <- sample(c(7.5,9,10.5,11, 12))
ols <- function(x,mu) {
  sum((x-mu)^2)
}
est <- seq(6,14,l=100)
x.ols <-NULL
for (i in est) {
  x.ols <-c(x.ols,ols(x,i))
}
nf <- layout(matrix(c(1,2), 2, 1, byrow=TRUE), respect=F, height=c(6,4))
op <- par(mar=c(0,2,4,0))
plot(x.ols~est,ann=FALSE, axes=FALSE,xlim=c(6,14), type="n",ylim=c(0,max(x.ols)))
axis(3, pos=max(x.ols))
mtext("Sum of squares",2, line=0)
#for (i in seq(6,14,by=.5)) segments(i,0, i,ols(x,i), col="gray80", lty=2)
#text(11,8, expression(paste(mu,"=10")),cex=2)
#mtext("Parameter estimates",3, line=2)
#arrows(10,0,10,ols(x,10), col="black", length=.1, lty=1)
lines(c(6,6),c(max(x.ols),0))
#polygon(c(6,6.1,5.9),c(0, 5,5),col="black", border=F)
arrows(7,0,7,ols(x,7), col="gray40", length=.1, lty=1)
points(7,ols(x,7), pch=16)
#arrows(8,0,8,ols(x,8), col="gray40", length=.1, lty=1)
op <- par(mar=c(4,2,.5,0),xpd=T)
plot(x,1:5, ann=FALSE, axes=FALSE, pch=16, xlim=c(6,14),ylim=c(0,6), type="n")
axis(1,las=1)
##box(bty="l")
#x.lm <- lm(x~1)
#segments(seq(6,14,by=.5),0,seq(6,14,by=.5),9, col="gray80",lty=2)
#lines(c(10,10),c(0,6))
points(x,(1:5)+0.4, pch=16, col="gray40")
lines(c(7,7),c(0,9),col="grey40")
segments(x,(1:5)+0.4,7,(1:5)+0.4, col="grey40")

#points(x,(1:5)+0.6, pch=16, col="gray40")
#lines(c(8,8),c(0,9),col="grey40")
#segments(x,(1:5)+0.6,8,(1:5)+0.6, col="grey40")

#points(x,(1:5), pch=16)
#segments(x,1:5,x.lm$fitted,1:5)
points(x,rep(0,5), pch=16)
mtext("Parameter estimates",1, line=3)


## ----OLS4, echo=FALSE, fig.keep="last", fig.width=8, fig.height=6, fig.cap="", out.width='500px'----
set.seed(1)
x <- sample(c(7.5,9,10.5,11, 12))
ols <- function(x,mu) {
  sum((x-mu)^2)
}
est <- seq(6,14,l=100)
x.ols <-NULL
for (i in est) {
  x.ols <-c(x.ols,ols(x,i))
}
nf <- layout(matrix(c(1,2), 2, 1, byrow=TRUE), respect=F, height=c(6,4))
op <- par(mar=c(0,2,4,0))
plot(x.ols~est,ann=FALSE, axes=FALSE,xlim=c(6,14), type="n",ylim=c(0,max(x.ols)))
axis(3, pos=max(x.ols))
mtext("Sum of squares",2, line=0)
#for (i in seq(6,14,by=.5)) segments(i,0, i,ols(x,i), col="gray80", lty=2)
#text(11,8, expression(paste(mu,"=10")),cex=2)
#mtext("Parameter estimates",3, line=2)
#arrows(10,0,10,ols(x,10), col="black", length=.1, lty=1)
lines(c(6,6),c(max(x.ols),0))
#polygon(c(6,6.1,5.9),c(0, 5,5),col="black", border=F)
arrows(8,0,8,ols(x,8), col="gray40", length=.1, lty=1)
points(7,ols(x,7), pch=16, col="gray40")
points(8,ols(x,8), pch=16)
#arrows(8,0,8,ols(x,8), col="gray40", length=.1, lty=1)
op <- par(mar=c(4,2,.5,0),xpd=T)
plot(x,1:5, ann=FALSE, axes=FALSE, pch=16, xlim=c(6,14),ylim=c(0,6), type="n")
axis(1,las=1)
##box(bty="l")
#x.lm <- lm(x~1)
#segments(seq(6,14,by=.5),0,seq(6,14,by=.5),9, col="gray80",lty=2)
#lines(c(10,10),c(0,6))
points(x,(1:5)+0.4, pch=16, col="gray40")
lines(c(8,8),c(0,9),col="grey40")
segments(x,(1:5)+0.4,8,(1:5)+0.4, col="grey40")

#points(x,(1:5)+0.6, pch=16, col="gray40")
#lines(c(8,8),c(0,9),col="grey40")
#segments(x,(1:5)+0.6,8,(1:5)+0.6, col="grey40")

#points(x,(1:5), pch=16)
#segments(x,1:5,x.lm$fitted,1:5)
points(x,rep(0,5), pch=16)
mtext("Parameter estimates",1, line=3)


## ----OLS5, echo=FALSE, fig.keep="last", fig.width=8, fig.height=6, fig.cap="", out.width='500px'----
set.seed(1)
x <- sample(c(7.5,9,10.5,11, 12))
ols <- function(x,mu) {
  sum((x-mu)^2)
}
est <- seq(6,14,l=100)
x.ols <-NULL
for (i in est) {
  x.ols <-c(x.ols,ols(x,i))
}
nf <- layout(matrix(c(1,2), 2, 1, byrow=TRUE), respect=F, height=c(6,4))
op <- par(mar=c(0,2,4,0))
plot(x.ols~est,ann=FALSE, axes=FALSE,xlim=c(6,14), type="n",ylim=c(0,max(x.ols)))
axis(3, pos=max(x.ols))
mtext("Sum of squares",2, line=0)
#for (i in seq(6,14,by=.5)) segments(i,0, i,ols(x,i), col="gray80", lty=2)
#text(11,8, expression(paste(mu,"=10")),cex=2)
#mtext("Parameter estimates",3, line=2)
#arrows(10,0,10,ols(x,10), col="black", length=.1, lty=1)
lines(c(6,6),c(max(x.ols),0))
#polygon(c(6,6.1,5.9),c(0, 5,5),col="black", border=F)
arrows(9,0,9,ols(x,9), col="gray40", length=.1, lty=1)
points(7,ols(x,7), pch=16, col="gray40")
points(8,ols(x,8), pch=16, col="gray40")
points(9,ols(x,9), pch=16)
#arrows(8,0,8,ols(x,8), col="gray40", length=.1, lty=1)
op <- par(mar=c(4,2,.5,0),xpd=T)
plot(x,1:5, ann=FALSE, axes=FALSE, pch=16, xlim=c(6,14),ylim=c(0,6), type="n")
axis(1,las=1)
##box(bty="l")
#x.lm <- lm(x~1)
#segments(seq(6,14,by=.5),0,seq(6,14,by=.5),9, col="gray80",lty=2)
#lines(c(10,10),c(0,6))
points(x,(1:5)+0.4, pch=16, col="gray40")
lines(c(9,9),c(0,9),col="grey40")
segments(x,(1:5)+0.4,9,(1:5)+0.4, col="grey40")

#points(x,(1:5)+0.6, pch=16, col="gray40")
#lines(c(8,8),c(0,9),col="grey40")
#segments(x,(1:5)+0.6,8,(1:5)+0.6, col="grey40")

#points(x,(1:5), pch=16)
#segments(x,1:5,x.lm$fitted,1:5)
points(x,rep(0,5), pch=16)
mtext("Parameter estimates",1, line=3)


## ----OLS6, echo=FALSE, fig.keep="last", fig.width=8, fig.height=6, fig.cap="", out.width='500px'----
set.seed(1)
x <- sample(c(7.5,9,10.5,11, 12))
ols <- function(x,mu) {
  sum((x-mu)^2)
}
est <- seq(6,14,l=100)
x.ols <-NULL
for (i in est) {
  x.ols <-c(x.ols,ols(x,i))
}
nf <- layout(matrix(c(1,2), 2, 1, byrow=TRUE), respect=F, height=c(6,4))
op <- par(mar=c(0,2,4,0))
plot(x.ols~est,ann=FALSE, axes=FALSE,xlim=c(6,14), type="n",ylim=c(0,max(x.ols)))
axis(3, pos=max(x.ols))
mtext("Sum of squares",2, line=0)
#for (i in seq(6,14,by=.5)) segments(i,0, i,ols(x,i), col="gray80", lty=2)
#text(11,8, expression(paste(mu,"=10")),cex=2)
#mtext("Parameter estimates",3, line=2)
#arrows(10,0,10,ols(x,10), col="black", length=.1, lty=1)
lines(c(6,6),c(max(x.ols),0))
#polygon(c(6,6.1,5.9),c(0, 5,5),col="black", border=F)
arrows(10,0,10,ols(x,10), col="gray40", length=.1, lty=1)
points(7,ols(x,7), pch=16, col="gray40")
points(8,ols(x,8), pch=16, col="gray40")
points(9,ols(x,9), pch=16, col="gray40")
points(10,ols(x,10), pch=16)
#arrows(8,0,8,ols(x,8), col="gray40", length=.1, lty=1)
op <- par(mar=c(4,2,.5,0),xpd=T)
plot(x,1:5, ann=FALSE, axes=FALSE, pch=16, xlim=c(6,14),ylim=c(0,6), type="n")
axis(1,las=1)
##box(bty="l")
#x.lm <- lm(x~1)
#segments(seq(6,14,by=.5),0,seq(6,14,by=.5),9, col="gray80",lty=2)
#lines(c(10,10),c(0,6))
points(x,(1:5)+0.4, pch=16, col="gray40")
lines(c(10,10),c(0,9),col="grey40")
segments(x,(1:5)+0.4,10,(1:5)+0.4, col="grey40")

#points(x,(1:5)+0.6, pch=16, col="gray40")
#lines(c(8,8),c(0,9),col="grey40")
#segments(x,(1:5)+0.6,8,(1:5)+0.6, col="grey40")

#points(x,(1:5), pch=16)
#segments(x,1:5,x.lm$fitted,1:5)
points(x,rep(0,5), pch=16)
mtext("Parameter estimates",1, line=3)


## ----OLS7, echo=FALSE, fig.keep="last", fig.width=8, fig.height=6, fig.cap="", out.width='500px'----
set.seed(1)
x <- sample(c(7.5,9,10.5,11, 12))
ols <- function(x,mu) {
  sum((x-mu)^2)
}
est <- seq(6,14,l=100)
x.ols <-NULL
for (i in est) {
  x.ols <-c(x.ols,ols(x,i))
}
nf <- layout(matrix(c(1,2), 2, 1, byrow=TRUE), respect=F, height=c(6,4))
op <- par(mar=c(0,2,4,0))
plot(x.ols~est,ann=FALSE, axes=FALSE,xlim=c(6,14), type="n",ylim=c(0,max(x.ols)))
axis(3, pos=max(x.ols))
mtext("Sum of squares",2, line=0)
#for (i in seq(6,14,by=.5)) segments(i,0, i,ols(x,i), col="gray80", lty=2)
#text(11,8, expression(paste(mu,"=10")),cex=2)
#mtext("Parameter estimates",3, line=2)
#arrows(10,0,10,ols(x,10), col="black", length=.1, lty=1)
lines(c(6,6),c(max(x.ols),0))
#polygon(c(6,6.1,5.9),c(0, 5,5),col="black", border=F)
arrows(11,0,11,ols(x,11), col="gray40", length=.1, lty=1)
points(7,ols(x,7), pch=16, col="gray40")
points(8,ols(x,8), pch=16, col="gray40")
points(9,ols(x,9), pch=16, col="gray40")
points(10,ols(x,10), pch=16, col="gray40")
points(11,ols(x,11), pch=16)
#arrows(8,0,8,ols(x,8), col="gray40", length=.1, lty=1)
op <- par(mar=c(4,2,.5,0),xpd=T)
plot(x,1:5, ann=FALSE, axes=FALSE, pch=16, xlim=c(6,14),ylim=c(0,6), type="n")
axis(1,las=1)
##box(bty="l")
#x.lm <- lm(x~1)
#segments(seq(6,14,by=.5),0,seq(6,14,by=.5),9, col="gray80",lty=2)
#lines(c(10,10),c(0,6))
points(x,(1:5)+0.4, pch=16, col="gray40")
lines(c(11,11),c(0,9),col="grey40")
segments(x,(1:5)+0.4,11,(1:5)+0.4, col="grey40")

#points(x,(1:5)+0.6, pch=16, col="gray40")
#lines(c(8,8),c(0,9),col="grey40")
#segments(x,(1:5)+0.6,8,(1:5)+0.6, col="grey40")

#points(x,(1:5), pch=16)
#segments(x,1:5,x.lm$fitted,1:5)
points(x,rep(0,5), pch=16)
mtext("Parameter estimates",1, line=3)


## ----OLS8, echo=FALSE, fig.keep="last", fig.width=8, fig.height=6, fig.cap="", out.width='500px'----
set.seed(1)
x <- sample(c(7.5,9,10.5,11, 12))
ols <- function(x,mu) {
  sum((x-mu)^2)
}
est <- seq(6,14,l=100)
x.ols <-NULL
for (i in est) {
  x.ols <-c(x.ols,ols(x,i))
}
nf <- layout(matrix(c(1,2), 2, 1, byrow=TRUE), respect=F, height=c(6,4))
op <- par(mar=c(0,2,4,0))
plot(x.ols~est,ann=FALSE, axes=FALSE,xlim=c(6,14), type="n",ylim=c(0,max(x.ols)))
axis(3, pos=max(x.ols))
mtext("Sum of squares",2, line=0)
#for (i in seq(6,14,by=.5)) segments(i,0, i,ols(x,i), col="gray80", lty=2)
#text(11,8, expression(paste(mu,"=10")),cex=2)
#mtext("Parameter estimates",3, line=2)
#arrows(10,0,10,ols(x,10), col="black", length=.1, lty=1)
lines(c(6,6),c(max(x.ols),0))
#polygon(c(6,6.1,5.9),c(0, 5,5),col="black", border=F)
arrows(12,0,12,ols(x,12), col="gray40", length=.1, lty=1)
points(7,ols(x,7), pch=16, col="gray40")
points(8,ols(x,8), pch=16, col="gray40")
points(9,ols(x,9), pch=16, col="gray40")
points(10,ols(x,10), pch=16, col="gray40")
points(11,ols(x,11), pch=16, col="gray40")
points(12,ols(x,12), pch=16)
#arrows(8,0,8,ols(x,8), col="gray40", length=.1, lty=1)
op <- par(mar=c(4,2,.5,0),xpd=T)
plot(x,1:5, ann=FALSE, axes=FALSE, pch=16, xlim=c(6,14),ylim=c(0,6), type="n")
axis(1,las=1)
##box(bty="l")
#x.lm <- lm(x~1)
#segments(seq(6,14,by=.5),0,seq(6,14,by=.5),9, col="gray80",lty=2)
#lines(c(10,10),c(0,6))
points(x,(1:5)+0.4, pch=16, col="gray40")
lines(c(12,12),c(0,9),col="grey40")
segments(x,(1:5)+0.4,12,(1:5)+0.4, col="grey40")

#points(x,(1:5)+0.6, pch=16, col="gray40")
#lines(c(8,8),c(0,9),col="grey40")
#segments(x,(1:5)+0.6,8,(1:5)+0.6, col="grey40")

#points(x,(1:5), pch=16)
#segments(x,1:5,x.lm$fitted,1:5)
points(x,rep(0,5), pch=16)
mtext("Parameter estimates",1, line=3)


## ----OLS9, echo=FALSE, fig.keep="last", fig.width=8, fig.height=6, fig.cap="", out.width='500px'----
set.seed(1)
x <- sample(c(7.5,9,10.5,11, 12))
ols <- function(x,mu) {
  sum((x-mu)^2)
}
est <- seq(6,14,l=100)
x.ols <-NULL
for (i in est) {
  x.ols <-c(x.ols,ols(x,i))
}
nf <- layout(matrix(c(1,2), 2, 1, byrow=TRUE), respect=F, height=c(6,4))
op <- par(mar=c(0,2,4,0))
plot(x.ols~est,ann=FALSE, axes=FALSE,xlim=c(6,14), type="n",ylim=c(0,max(x.ols)))
axis(3, pos=max(x.ols))
mtext("Sum of squares",2, line=0)
#for (i in seq(6,14,by=.5)) segments(i,0, i,ols(x,i), col="gray80", lty=2)
#text(11,8, expression(paste(mu,"=10")),cex=2)
#mtext("Parameter estimates",3, line=2)
#arrows(10,0,10,ols(x,10), col="black", length=.1, lty=1)
lines(c(6,6),c(max(x.ols),0))
#polygon(c(6,6.1,5.9),c(0, 5,5),col="black", border=F)
arrows(13,0,13,ols(x,13), col="gray40", length=.1, lty=1)
points(7,ols(x,7), pch=16, col="gray40")
points(8,ols(x,8), pch=16, col="gray40")
points(9,ols(x,9), pch=16, col="gray40")
points(10,ols(x,10), pch=16, col="gray40")
points(11,ols(x,11), pch=16, col="gray40")
points(12,ols(x,12), pch=16, col="gray40")
points(13,ols(x,13), pch=16)
#arrows(8,0,8,ols(x,8), col="gray40", length=.1, lty=1)
op <- par(mar=c(4,2,.5,0),xpd=T)
plot(x,1:5, ann=FALSE, axes=FALSE, pch=16, xlim=c(6,14),ylim=c(0,6), type="n")
axis(1,las=1)
##box(bty="l")
#x.lm <- lm(x~1)
#segments(seq(6,14,by=.5),0,seq(6,14,by=.5),9, col="gray80",lty=2)
#lines(c(10,10),c(0,6))
points(x,(1:5)+0.4, pch=16, col="gray40")
lines(c(13,13),c(0,9),col="grey40")
segments(x,(1:5)+0.4,13,(1:5)+0.4, col="grey40")

#points(x,(1:5)+0.6, pch=16, col="gray40")
#lines(c(8,8),c(0,9),col="grey40")
#segments(x,(1:5)+0.6,8,(1:5)+0.6, col="grey40")

#points(x,(1:5), pch=16)
#segments(x,1:5,x.lm$fitted,1:5)
points(x,rep(0,5), pch=16)
mtext("Parameter estimates",1, line=3)


## ----OLS10, echo=FALSE, fig.keep="last", fig.width=8, fig.height=6, fig.cap="", out.width='500px'----
set.seed(1)
x <- sample(c(7.5,9,10.5,11, 12))
ols <- function(x,mu) {
  sum((x-mu)^2)
}
est <- seq(6,14,l=100)
x.ols <-NULL
for (i in est) {
  x.ols <-c(x.ols,ols(x,i))
}
nf <- layout(matrix(c(1,2), 2, 1, byrow=TRUE), respect=F, height=c(6,4))
op <- par(mar=c(0,2,4,0))
plot(x.ols~est,ann=FALSE, axes=FALSE,xlim=c(6,14), type="l",ylim=c(0,max(x.ols)))
axis(3, pos=max(x.ols))
mtext("Sum of squares",2, line=0)
for (i in seq(6,14,by=.5)) segments(i,0, i,ols(x,i), col="gray80", lty=2)
text(11,8, expression(paste(mu,"=10")),cex=2)
mtext("Parameter estimates",3, line=2)
arrows(10,0,10,ols(x,10), col="black", length=.1, lty=1)
lines(c(6,6),c(max(x.ols),0))
polygon(c(6,6.1,5.9),c(0, 5,5),col="black", border=F)
#arrows(7,0,7,ols(x,7), col="gray40", length=.1, lty=1)
#arrows(8,0,8,ols(x,8), col="gray40", length=.1, lty=1)
op <- par(mar=c(4,2,.5,0),xpd=T)
plot(x,1:5, ann=FALSE, axes=FALSE, pch=16, xlim=c(6,14),ylim=c(0,6))
axis(1,las=1)
#box(bty="l")
x.lm <- lm(x~1)
segments(seq(6,14,by=.5),0,seq(6,14,by=.5),9, col="gray80",lty=2)
lines(c(10,10),c(0,6))
#points(x,(1:5)+0.4, pch=16, col="gray40")
#lines(c(7,7),c(0,9),col="grey40")
#segments(x,(1:5)+0.4,7,(1:5)+0.4, col="grey40")

#points(x,(1:5)+0.6, pch=16, col="gray40")
#lines(c(8,8),c(0,9),col="grey40")
#segments(x,(1:5)+0.6,8,(1:5)+0.6, col="grey40")

points(x,(1:5), pch=16)
segments(x,1:5,x.lm$fitted,1:5)
mtext("Parameter estimates",1, line=3)


## ----data, echo=FALSE, results='asis'-----------------------------------------
#DATA <- data.frame(Y=c(3, 2.5, 6.0, 5.5, 9.0, 8.6, 12), X=0:6)
#knitr::kable(DATA)
#library(pander)
                                        #pandoc.table(DATA, justify="centre", style="simple")
set.seed(234)
dat = data.frame(x=1:10) %>%
    mutate(y = round(2 + 5*x + rnorm(10, 0, 4), 2)) %>%
    dplyr::select(y,x)
knitr::kable(dat)


## ----name, results='markdown', eval=TRUE--------------------------------------
## Generate the model matrix
X = model.matrix(~1 + x, data = dat)
## Solve for beta
beta = solve(t(X) %*% X) %*% t(X) %*% dat$y
beta


## ----statisticalModels2, results='hide',echo=FALSE,fig.width=6, fig.height=4, out.width='300px'----
x <- 0:6
y <- 2+(1.5*x)
y2 <- y+c(1,-1,1,-1,1,-1,1)
opar <- par(mar=c(4,5,0,0))
plot(y~x, ann=FALSE, axes=FALSE, type="n", ylim=c(0,12), xlim=c(0,6))
segments(x,y2,x,y, col="red")
points(y2~x,pch=16)
axis(1,pos=0,lwd=2)
mtext("x", 1, line=2,font=2, cex=1.5)
axis(2,las=1,pos=0,lwd=2)
mtext("y", 2, line=2,font=2,las=1, cex=1.5)
abline(a=2,b=1.5,lwd=2)
text(2,3,expression(paste('y=2+1.5x+',epsilon)), pos=4,cex=2.5,font=2)


## ----gaussian, fig.width=6, fig.height=4, echo=FALSE, dev="png"---------------
par(mar=c(4,0,1,0), mfrow=c(1,2))
xs <- seq(0,40,l=1000)
plot(xs, dnorm(xs,25,5), type="l", ylim=c(0,0.25), lwd=4, ann=FALSE, axes=FALSE, col="grey90")
points(xs, dnorm(xs,25,2), type="l", col="grey60", lwd=4)
points(xs, dnorm(xs,10,2), type="l", col="grey40", lwd=4)
title("Probability density function")
legend("topright", legend=c(expression(paste(mu==25, ", ", sigma^2==5)), 
  expression(paste(mu==25, ", ", sigma^2==2)),
  expression(paste(mu==10, ", ", sigma^2==2))
  ), col=c("grey90","grey60","grey40"), lwd=c(4,4,4), bty="n")
axis(1, at=seq(0,40,b=5))


## \usetikzlibrary{arrows,shapes,trees,positioning}

## \newcommand{\tikzmark}[1]{\tikz[baseline,remember picture] \coordinate (#1) {};}

## \tikzset{

## 	square arrow/.style={

## 	to path={-- ++(-10,-.25) -| (\tikztotarget)}

## 	}

## }

## \begin{gather*}

## \\[1em]

## y_i=\underbrace{\beta_0 + \beta_1\times x_i}_\text{Linearity} + \varepsilon_i \hspace{1cm}

## \varepsilon_i\sim \underbrace{\mathcal{N}(0, \tikzmark{sigma}\sigma^2)}_\text{Normality}

## \hspace{1cm}  \tikzmark{cov}\mathbf{V}=cov = \begin{pmatrix}

## \tikzmark{covsigma}\sigma^2&0~&\cdots&0\\

## 0&\sigma^2&\cdots&\vdots\\

## \vdots&\cdots&\sigma^2&\vdots\\

## \tikzmark{zero}0&\cdots&\cdots&\sigma^2\\

## \end{pmatrix}

## \\[2ex]

## \tikz[remember picture,overlay, anchor=east]{\path (covsigma.north) +(-1,2em) node(c) {Homogeneity of variance};}

## \tikz[remember picture,overlay, anchor=east]{\path (zero.south) +(-3em,-2em) node(d) {Zero covariance\ (=independence)};}

## \tikz[remember picture,overlay]{

## \draw[->] (sigma.east)++(.75em,1ex) to [bend left] (cov.west);

## \draw[->] (covsigma.east)++(.25em,2ex) to [bend right] (c.east) ;

## \draw[->] (zero.east)++(.25em,-.3ex) to [bend left] (d.east) ;

## 	}

## \end{gather*}


## \usetikzlibrary{arrows,shapes,trees,positioning}

## \newcommand{\tikzmark}[1]{\tikz[baseline,remember picture] \coordinate (#1) {};}

## \tikzset{

## 	square arrow/.style={

## 	to path={-- ++(-10,-.25) -| (\tikztotarget)}

## 	}

## }

## \begin{gather*}

## \\[1em]

## y_i=\underbrace{\beta_0 + \beta_1\times x_i}_\text{Linearity} + \varepsilon_i \hspace{1cm}

## \varepsilon_i\sim \underbrace{\mathcal{N}(0, \tikzmark{sigma}\sigma^2)}_\text{Normality}

## \hspace{1cm}  \tikzmark{cov}\mathbf{V}=cov = \begin{pmatrix}

## \tikzmark{covsigma}\sigma^2&0~&\cdots&0\\

## 0&\sigma^2&\cdots&\vdots\\

## \vdots&\cdots&\sigma^2&\vdots\\

## \tikzmark{zero}0&\cdots&\cdots&\sigma^2\\

## \end{pmatrix}

## \\[2ex]

## \tikz[remember picture,overlay, anchor=east]{\path (covsigma.north) +(-1,2em) node(c) {Homogeneity of variance};}

## \tikz[remember picture,overlay, anchor=east]{\path (zero.south) +(-3em,-2em) node(d) {Zero covariance\ (=independence)};}

## \tikz[remember picture,overlay]{

## \draw[->] (sigma.east)++(.75em,1ex) to [bend left] (cov.west);

## \draw[->] (covsigma.east)++(.25em,2ex) to [bend right] (c.east) ;

## \draw[->] (zero.east)++(.25em,-.3ex) to [bend left] (d.east) ;

## 	}

## \end{gather*}


## ----scale, echo=FALSE, fig.height=6, fig.width=8, fig.cap="",out.width='600px'----
par(mfrow=c(2,2),mar=c(4,3,0,0), xpd=T)
xl <- rlnorm(10000,log(10),.75^2)
xx <- seq(0,40,length=1000)
h<-hist(xl,ylab="", xlim=c(0,40),xlab="", ylim=c(0,max(dlnorm(xx,log(10),.5))),br=50,main="",axes=F, freq=F, border="gray")
xy <- seq(0,40, l=1000)
mtext("Leaf length (cm)", 1, line=2)
axis(1, pos=0)
mtext("Frequency", 2)
lines(xx, dlnorm(xx,log(10),.5), col="black")
lines(c(0,0),c(0,max(dlnorm(xx,1,.25))), lty=2,col="gray")
xxx<-seq(40-(40*.35),40,l=10)
mmax <- max(dlnorm(xx,log(10),.5))
mmin <- min(dlnorm(xx,log(10),.5))
vert1 <- mmax*.75
vert2 <- mmax*.7
segments(xxx,vert1,xxx,vert2)
lines(c(xxx[1],xxx[length(xxx)]),c(vert2,vert2))
#  text(upperLeft(offset=0.08),"a)", cex=1.5) 
xx <- seq(0,2,length=1000)
h<-hist(log10(xl),ylab="", ylim=c(0,max(dnorm(xx,1,.25))), xlim=c(0,2),xlab="", br=50,main="",axes=F, freq=F, border="gray")
xy <- seq(0,40, l=1000)
mtext(expression(paste(log[10]," Leaf length (cm)")), 1, line=2)
axis(1, pos=0)
mtext("Frequency", 2)
xx <- seq(0,2,length=1000)
lines(xx, dnorm(xx,1,.25), col="black")
lines(c(0,0),c(0,max(dnorm(xx,1,.25))), lty=2,col="gray")
xxx<-seq(10^1.3,10^2,l=10)
xxx=log10(xxx)
mmax <- max(dnorm(xx,1,.25))
mmin <- min(dnorm(xx,1,.25))
vert1 <- mmax*.75
vert2 <- mmax*.7
segments(xxx,vert1,xxx,vert2)
lines(c(xxx[1],xxx[length(xxx)]),c(vert2,vert2))
#  text(upperLeft(offset=0.08),"b)", cex=1.5)
  

h<-hist(xl,ylab="", xlim=c(0,2),xlab="", br=100,main="",axes=F, freq=T, border="gray", plot=F)
xy <- seq(0,40, l=1000)
plot(h$density~h$mids, type="h",ylab="",xlab="",main="",axes=F, xlim=c(0,40))
mtext("Leaf length (cm)", 1, line=2)
axis(1, pos=0)
#mtext("Frequency", 2)
xx <- seq(0,80,length=1000)
lines(c(0,40),c(0,0))
# text(upperLeft(offset=0.08),"c)", cex=1.5)
#lines(c(0,0),c(0,.1), lty=2,col="gray") 
#  h<-hist(xl,ylab="", xlim=c(0,2),xlab="", br=100,main="",axes=F, freq=F, border="gray", plot=F)
#  h<-hist(log10(xl),ylab="", xlim=c(0,2),xlab="", br=50,main="",axes=F, freq=F, border="gray", plot=F)
#  h<-hist(log10(xl),ylab="", xlim=c(0,2),xlab="", br=50,main="",axes=F, freq=F, border="gray", plot=F)
xy <- seq(0,40, l=1000)
xx <- seq(0,100,length=100)
xx<-log10(xx)
#plot(h$density~log10(h$mids), type="h",ylab="",xlab="",main="",axes=F, xlim=c(0,2))
plot(xx, dnorm(xx,1,.25), type="h",ylab="",xlab="",main="",axes=F, xlim=c(0,2))
mtext(expression(paste(log[10]," leaf length (cm)")), 1, line=2)
axis(1, pos=0)
#mtext("Frequency", 2)
xx <- seq(0,2,length=1000)
#lines(c(0,0),c(0,.1), lty=2,col="gray")
#  text(upperLeft(offset=0.08),"d)", cex=1.5) 
par(fig=c(.3,.6,.15,.45),new=T)
s <-seq(1,30, length=1000)
plot(log10(s)~s, ylim=c(0,1.5), axes=F, xlab="", ylab="", type="n")
#segments(1:30,0,1:30,1.5, col="gray")
lines(c(0,30),c(0,1.5),col="grey",lwd=1)
lines(log10(s)~s,col="black",lwd=1)
#axis(1, pos=0)
#axis(2, pos=0, las=1, at=seq(0,1.5,by=.5),lab=seq(0,1.5,by=.5), col="black",col.axis="black")
mtext("Logarithmic scale",2, line=1, font=1, cex=.75)
#axis(4, pos=30, las=1, at=seq(0,1.5,by=.5),lab=seq(0,30,by=10), col="red",col.axis="red")
mtext("Linear scale",4,line=1, font=1, cex=.75, col="grey")
box(bty="u", col="grey")
box(bty="L", col="black")
par(fig=c(.25,.7,.22,.35),new=T, mar=c(0,0,0,0))
plot(c(0,1),c(0,1), type="n", axes=F,ann=F)
#arrows(0,.5,1,.5,length=.1)
spl <- spline(c(.1,.5,.9), c(0,.5,0))
lines(spl)
#arrowHead(spl)
spx <-spl$x[length(spl$x)]
spy <-spl$y[length(spl$x)]
polygon(c(spx,spx-.025,spx-.035,spx),c(spy,spy+.15,spy-0,spy), col="black")


## ----gamma, fig.width=6, fig.height=3.5, echo=FALSE, dev="png", results='hide'----
par(mar=c(4,0,1,0))
## k=1.5
## mu=25
## p = k/(k+mu)
## n = mu*p/(1-p)

gamma.mean <- function(shape,rate=1, scale=1/rate) {
    return(shape*scale)
    }
gamma.var <- function(shape,rate=1, scale=1/rate) {
    return(shape*scale^2)
    }
gamma.scale <- function(mean,var) {
    return(var/mean)
}
gamma.shape <- function(scale, mean, var) {
    return(mean/scale)
    }

scale=gamma.scale(mean=15,var=15)
shape=gamma.shape(scale=scale,mean=15)
x=seq(0,40,len=100)
plot(x, dgamma(x,shape=shape,scale=scale), type="l", ylim=c(0,0.25), lwd=4, ann=FALSE, axes=FALSE, col="grey90")
scale=gamma.scale(mean=15,var=30)
shape=gamma.shape(scale=scale,mean=15)
lines(x, dgamma(x,shape=7.5, scale=2), col="grey60", lwd=4)
scale=gamma.scale(mean=15,var=60)
shape=gamma.shape(scale=scale,mean=15)
lines(x, dgamma(x,shape=3.75, scale=4), col="grey40", lwd=4)
title("Probability density function")
legend("topright", legend=c(expression(paste(mu==15,", ",sigma^2==15, " (", a==15,", ", s==1,")")),
                       expression(paste(mu==15,", ",sigma^2==30, " (", a==7.5,", ", s==2,")")),
                       expression(paste(mu==15,", ",sigma^2==60, " (", a==3.75,", ", s==4,")"))
  ), col=c("grey90","grey60","grey40"), lwd=c(4,4,4), bty="n")
axis(1, at=seq(0,40,b=5))

dbinom.size <- function(mean, variance) {
    return( -1* (mean^2/(mean-variance)) )
}



## ----poisson, fig.width=6, fig.height=3.5, echo=FALSE, dev="png", results='hide'----
par(mar=c(4,0,1,0))
plot(0:40, dpois(0:40, 25), type="h", ylim=c(0,0.25), lwd=4, ann=FALSE, axes=FALSE, col="grey90")
points((0:40), dpois(0:40,15), type="h", col="grey60", lwd=4)
points((0:40), dpois(0:40,3), type="h", col="grey40", lwd=4)
#points((0:40), dpois(0:40,1), type="h", col="grey20", lwd=4)
title("Probability density function")
legend("topright", legend=c(expression(paste(lambda==25)), 
  expression(paste(lambda==15)),
  expression(paste(lambda==3))
  ), col=c("grey90","grey60","grey40"), lwd=c(4,4,4), bty="n")
axis(1, at=seq(0,40,b=5))



## ----negativebinomial, fig.width=6, fig.height=3.5, echo=FALSE, dev="png", results='hide'----
par(mar=c(4,0,1,0), mfrow=c(1,2))
## k=1.5
## mu=25
## p = k/(k+mu)
## n = mu*p/(1-p)

plot(0:40, dnbinom(0:40,mu=25,size=Inf), type="h", ylim=c(0,0.25), lwd=4, ann=FALSE, axes=FALSE, col="grey90")
points((0:40), dnbinom(0:40,mu=15,size=Inf), type="h", col="grey60", lwd=4)
points((0:40), dnbinom(0:40,mu=3,size=Inf), type="h", col="grey20", lwd=4)
title("Probability density function")
legend("topright", legend=c(expression(paste(mu==25, ", ", omega==Inf~(theta==0))),
                       expression(paste(mu==15, ", ", omega==Inf~(theta==0))),
                       expression(paste(mu==3, ", ", omega==Inf~(theta==0)))
  ), col=c("grey90","grey60","grey40"), lwd=c(4,4,4), bty="n")
axis(1, at=seq(0,40,b=5))

dbinom.size <- function(mean, variance) {
    return( -1* (mean^2/(mean-variance)) )
}

omega = dbinom.size(mean=15,var=30)
plot(0:40, dnbinom(0:40,mu=15,size=dbinom.size(15,45)), type="h", ylim=c(0,0.25), lwd=4, ann=FALSE, axes=FALSE, col="grey90")
points((0:40), dnbinom(0:40,mu=15,size=dbinom.size(15,6*15)), type="h", col="grey60", lwd=4)
points((0:40), dnbinom(0:40,mu=15,size=dbinom.size(15,150)), type="h", col="grey20", lwd=4)
title("Probability density function")
legend("topright", legend=c(expression(paste(mu==15, ", ", omega==7.500," (",theta==0.133,"; ",sigma^2==3*mu,")")),
                       expression(paste(mu==15, ", ", omega==3.000," (",theta==0.333,"; ",sigma^2==6*mu,")")),
                       expression(paste(mu==15, ", ", omega==1.667," (",theta==0.600,"; ",sigma^2==10*mu,")"))
  ), col=c("grey90","grey60","grey40"), lwd=c(4,4,4), bty="n")
axis(1, at=seq(0,40,b=5))



## ----binomial, fig.width=6, fig.height=3.5, echo=FALSE, dev="png", results='hide'----
layout(matrix(c(1,1,2,3,4),1,5))
par(mar=c(4,1,1,0))
plot(0:40, dbinom(0:40,50,p=0.5), type="h", ylim=c(0,0.4), lwd=4, ann=FALSE, axes=FALSE, col="grey90")
points((0:40), dbinom(0:40,20,p=0.5), type="h", col="grey60", lwd=4)
#points((0:40), dbinom(0:40,10,p=0.5), type="h", col="grey40", lwd=4)
points((0:40), dbinom(0:40,3,p=0.5), type="h", col="grey20", lwd=4)
title("Probability density function")
legend("topright", legend=c(expression(paste(n==50, ", ", p==0.5)), 
  expression(paste(n==20, ", ", p==0.5)),
  #expression(n==10),
  expression(paste(n==3, ", ", p==0.5))
  ), col=c("grey90","grey60","grey40"), lwd=c(4,4,4), bty="n")
axis(1, at=seq(0,40,b=5))


plot(0:1, dbinom(0:1,1,p=0.8), type="h", ylim=c(0,1), lwd=4, ann=FALSE, axes=FALSE, col="grey20")
#title("Probability density function")
legend("top", legend=c(expression(paste(n==1, ", ", p==0.8))), col=c("grey20"), lwd=c(4), bty="n")
axis(1)

plot(0:1, dbinom(0:1,1,p=0.5), type="h", ylim=c(0,1), lwd=4, ann=FALSE, axes=FALSE, col="grey20")
#title("Probability density function")
legend("top", legend=c(expression(paste(n==1, ", ", p==0.5))), col=c("grey20"), lwd=c(4), bty="n")
axis(1)

plot(0:1, dbinom(0:1,1,p=0.2), type="h", ylim=c(0,1), lwd=4, ann=FALSE, axes=FALSE, col="grey20")
#title("Probability density function")
legend("top", legend=c(expression(paste(n==1, ", ", p==0.2))), col=c("grey20"), lwd=c(4), bty="n")
axis(1)


## ----beta, fig.width=6, fig.height=3.5, echo=FALSE, dev="png", results='hide'----
par(mar=c(4,0,1,0))
## k=1.5
## mu=25
## p = k/(k+mu)
## n = mu*p/(1-p)

beta.mean <- function(shape1,shape2) {
    return(shape1/(shape1+shape2))
    }
beta.var <- function(shape1,shape2) {
    return((shape1*shape2)/(((shape1 + shape2)^2)*(shape1 + shape2 + 1)))
    }
beta.shape1 <- function(mean,shape2) {
    return(-1*((mean*shape2^2)/(mean - 1)))
}
beta.shape2 <- function(mean,shape1) {
    return(shape1*((1/mean) - 1))
    }
beta.shapes <- function(mu,var) {
    alpha=((1-mu)/var-1/mu)*mu^2
    beta=alpha* (1/mu-1)
    return(list(shape1=alpha,shape2=beta))
}
beta.params <- function(shape1,shape2) {
    return(list(mean=beta.mean(shape1,shape2), var=beta.var(shape1,shape2)))
}
     
beta.params(5,5)
beta.shapes(0.5,0.022727272)
x=seq(0,1,len=100)
plot(x, dbeta(x,shape1=5,shape2=5), type="l", ylim=c(0,7), lwd=4, ann=FALSE, axes=FALSE, col="grey90")
shapes = beta.shapes(0.2,0.02)
params = beta.params(1,5)
lines(x, dbeta(x,shape1=1, shape2=5), col="grey60", lwd=4)
#scale=beta.scale(mean=15,var=60)
                                        #shape=beta.shape(scale=scale,mean=15)
params = beta.params(5,1)
lines(x, dbeta(x,shape1=5, shape2=1), col="grey40", lwd=4)
params = beta.params(0.5,0.5)
lines(x, dbeta(x,shape1=0.5, shape2=0.5), col="grey20", lwd=4)

title("Probability density function")
legend("topright", legend=c(expression(paste(mu==0.5,", ",sigma^2==0.023, " (", a==5,", ", b==5,")")),
                       expression(paste(mu==0.167,", ",sigma^2==0.019, " (", a==1,", ", b==5,")")),
                       expression(paste(mu==0.833,", ",sigma^2==0.019, " (", a==5,", ", b==1,")")),
                       expression(paste(mu==0.5,", ",sigma^2==0.125, " (", a==0.5,", ", b==0.5,")"))
  ), col=c("grey90","grey60","grey40","grey20"), lwd=c(4,4,4,4), bty="n")
axis(1, at=seq(0,1,l=5))



## ----OLS10, echo=FALSE, fig.keep="last", fig.width=8, fig.height=6, fig.cap="", out.width='500px'----
set.seed(1)
x <- sample(c(7.5,9,10.5,11, 12))
ols <- function(x,mu) {
  sum((x-mu)^2)
}
est <- seq(6,14,l=100)
x.ols <-NULL
for (i in est) {
  x.ols <-c(x.ols,ols(x,i))
}
nf <- layout(matrix(c(1,2), 2, 1, byrow=TRUE), respect=F, height=c(6,4))
op <- par(mar=c(0,2,4,0))
plot(x.ols~est,ann=FALSE, axes=FALSE,xlim=c(6,14), type="l",ylim=c(0,max(x.ols)))
axis(3, pos=max(x.ols))
mtext("Sum of squares",2, line=0)
for (i in seq(6,14,by=.5)) segments(i,0, i,ols(x,i), col="gray80", lty=2)
text(11,8, expression(paste(mu,"=10")),cex=2)
mtext("Parameter estimates",3, line=2)
arrows(10,0,10,ols(x,10), col="black", length=.1, lty=1)
lines(c(6,6),c(max(x.ols),0))
polygon(c(6,6.1,5.9),c(0, 5,5),col="black", border=F)
#arrows(7,0,7,ols(x,7), col="gray40", length=.1, lty=1)
#arrows(8,0,8,ols(x,8), col="gray40", length=.1, lty=1)
op <- par(mar=c(4,2,.5,0),xpd=T)
plot(x,1:5, ann=FALSE, axes=FALSE, pch=16, xlim=c(6,14),ylim=c(0,6))
axis(1,las=1)
#box(bty="l")
x.lm <- lm(x~1)
segments(seq(6,14,by=.5),0,seq(6,14,by=.5),9, col="gray80",lty=2)
lines(c(10,10),c(0,6))
#points(x,(1:5)+0.4, pch=16, col="gray40")
#lines(c(7,7),c(0,9),col="grey40")
#segments(x,(1:5)+0.4,7,(1:5)+0.4, col="grey40")

#points(x,(1:5)+0.6, pch=16, col="gray40")
#lines(c(8,8),c(0,9),col="grey40")
#segments(x,(1:5)+0.6,8,(1:5)+0.6, col="grey40")

points(x,(1:5), pch=16)
segments(x,1:5,x.lm$fitted,1:5)
mtext("Parameter estimates",1, line=3)


## ----EstimationML, results='markdown', eval=TRUE, echo=FALSE------------------
nf <- layout(matrix(c(1,2), 2, 1, byrow=TRUE), respect=F, height=c(6,3))
obs <- c(7.5,9,10.5,11, 12)
op <- par(mar=c(0,2,4,0))
ll <- function(mean=10) sum(stats::dnorm(obs, mean,1, log=T))
liks<-NULL
for (i in seq(6,14,l=100)) liks <- c(liks,ll(i))
plot(seq(6,14,l=100), liks, type="l", axes=F, xlab="",ylab="",xlim=c(6,14), ylim=c(-55,-9))
#arrows(6,-9,6,-52, length=.1)
#arrows(6,-9,14,-9, length=.1)
axis(3, pos=-9)
mtext("Log-likelihood",2, line=0)
for (i in seq(6,14,by=.5)) segments(i,-100, i,ll(i), col="gray90", lty=2)

segments(6,-9,6,-55, length=.1)
polygon(c(6,6.1,5.9),c(-55,-53,-53),col="black", border=F)


#lines(c(7,7),c(100,ll(7)), col="gray")
arrows(7,-100,7,ll(7), col="gray", length=.1, lty=2)
#segments(7,-100,7,ll(7), col="gray", length=.1, lty=2)
#polygon(c(7,7.1,6.9),c(ll(7),ll(7)-2, ll(7)-2),col="gray", border=F)

#polygon(c(10,10.1,9.9),c(ll(10),ll(10)-2, ll(10)-2),col="black", border=F)
arrows(10,-100,10,ll(10), col="black", length=.1, lty=2)
#segments(10,-100,10,ll(10), col="black", length=.1, lty=2)

arrows(13,-100,13,ll(13), col="gray", length=.1, lty=2)
#segments(13,-100,13,ll(13), col="gray", length=.1, lty=2)
#points(13,ll(13), pch=17, col="gray")
#polygon(c(13,13.1,12.9),c(ll(13),ll(13)-2, ll(13)-2),col="gray", border=F)
text(11,-30, expression(paste(mu,"=10")),cex=2)
mtext("Parameter estimates",3, line=2)


op <- par(mar=c(4,2,.5,0),xpd=T)
plot(seq(6,14,l=1000), dnorm(seq(6,14,l=1000), mean=7), type="l", axes=F, xlab="", ylab="", col="gray")
for (i in seq(6,14,by=.5)) lines(seq(6,14,l=1000), dnorm(seq(6,14,l=1000), mean=i), col="gray90")
segments(seq(6,14,by=.5),0,seq(6,14,by=.5),100, col="gray90", lty=2)

lines(seq(6,14,l=1000), dnorm(seq(6,14,l=1000), mean=7), type="l", axes=F, xlab="", ylab="", col="gray")
points(obs,rep(0, 5),pch=1)
axis(1)
#mtext("Parameter estimates",1,line=2)
lines(c(7,7),c(0,100), col="gray", lty=2)
#plot(seq(6,14,l=1000), dnorm(seq(6,14,l=1000), mean=10), type="l", axes=F, xlab="parameter estimate", ylab="")
lines(seq(6,14,l=1000), dnorm(seq(6,14,l=1000), mean=10), type="l")
#points(obs,rep(0, 5),pch=16)
lines(c(10,10),c(0,100), col="black", lty=2)
axis(1)

lines(seq(6,14,l=1000), dnorm(seq(6,14,l=1000), mean=13), type="l", col="gray")
#points(obs,rep(0, 5),pch=16)
lines(c(13,13),c(0,100), col="gray", lty=2)
axis(1)
mtext("Parameter estimates",1,line=3)


## ----bruteForce, results='markdown', eval=TRUE, fig.width=4, fig.height=4, echo=FALSE, out.width = '300px'----
LL.gaus = function(theta, x) {
    m=theta[1]
    s=theta[2]
    ll = -(length(x)/2)*(log(2*pi*s^2)) + (-1/(2*s^2)) * sum((x-m)^2)
    ##OR
    ## ll = sum(dnorm(x, mean=m, sd=s, log=TRUE))
    return(-ll)
}
mu = seq(15,40,len=100)
sigma=seq(10,20,len=100)
theta = expand.grid(mu=mu, sigma=sigma)
theta$LL=apply(theta, 1, LL.gaus, x=dat$y)
ggplot(data=theta,aes(y=mu, x=sigma, fill=LL)) +
    geom_tile(show.legend=FALSE) + geom_contour(aes(z=LL)) +
    geom_point(data=theta[which(theta$LL==min(theta$LL)),], aes(y=mu, x=sigma), fill='black') +
    scale_fill_gradientn(colors=terrain.colors(12)) +
    scale_x_continuous(expand=c(0,0)) +
    scale_y_continuous(expand=c(0,0))
theta[which(theta$LL==min(theta$LL)),]


## ----bruteForceMean, results='markdown', eval=TRUE, echo=FALSE----------------
paste('Mean=',mean(dat$y),' SD=',sd(dat$y))


## ----simplex, results='markdown', eval=TRUE-----------------------------------
optim(par=c(20,12), LL.gaus, x=dat$y)


## ----NM, results='markdown', eval=TRUE----------------------------------------
nlm(LL.gaus, c(20,12), x=dat$y, hessian=TRUE, gradtol=1e-03)


## ----SANN, results='markdown', eval=TRUE--------------------------------------
optim(par=c(20,12), LL.gaus, x=dat$y, method='SANN')


## ----glm, results='markdown', eval=TRUE---------------------------------------
glm(y~1, data=dat)

