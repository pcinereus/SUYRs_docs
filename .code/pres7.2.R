## ----setup, include=FALSE,warning=FALSE, message=FALSE------------------------
knitr::opts_chunk$set(echo = TRUE, warning=FALSE, message=FALSE,
                      fig.path='resources/pres7.2-', dev='png', fig.ext='png')
options(tinytex.engine = 'xelatex')
library(tidyverse)



## ----dataA, echo=FALSE--------------------------------------------------------
set.seed(1)
DATA <- data.frame(Y=c(3, 2.5, 6.0, 5.5, 9.0, 8.6, 12), X1=round(runif(7,20,30),1), X2=round(rnorm(7,0.8,0.2),1))
#library(pander)
                                        #pandoc.table(DATA, justify="centre", style="simple")
DATA %>% knitr::kable()


## ----Centering1, echo=FALSE, fig.cap='', width=8,height=5, out.width='350px'----
set.seed(3)
y.mean <- 20
y.var <- 5
x1.mean <- 50
x1.var <- 10
x2.mean <- 100
x2.var <- 20

cor.yx1 <- 0.9
cov.yx1 <- cor.yx1*sqrt(y.var*x1.var)

cor.yx2 <- 0.1
cov.yx2 <- cor.yx2*sqrt(y.var*x2.var)
cor.x1x2 <- 0.1
cov.x1x2 <- cor.x1x2*sqrt(x1.var*x2.var)
sigma <- matrix(c(y.var,cov.yx1,cov.yx2,
                  cov.yx1,x1.var,cov.x1x2,
				  cov.yx2,cov.x1x2,x2.var),3,3)
library(mvtnorm)
x <- rmvnorm(n=20, mean=c(y.mean,x1.mean,x2.mean), sigma=sigma)
data <- data.frame(y=x[,1],x1=x[,2],x2=x[,3])

opar <- par(mar=c(4,5,0,0))
plot(y~x1, data,ann=FALSE, axes=FALSE, type="n", ylim=c(-25,25), xlim=c(0,60))
points(y~x1, data,pch=16, col="black")
#points(fitted(lm(y~x))~x, col="red", pch=16)
axis(1,pos=-25,lwd=2)
mtext("x", 1, line=2,font=2, cex=1.5)
axis(2,las=1,pos=0,lwd=2)
mtext("y", 2, line=2,font=2,las=1, cex=1.5)
abline(lm(y~x1, data),lwd=2)
#dev.off()
#system("convert -resize 100% images/pres_9_3a_Centering1.pdf images/pres_9_3a_Centering1.png") 


## ----Centering2, echo=FALSE, fig.cap='', fig.width=6, fig.height=5, out.width='500px'----
plot(data$x1,rep(1,length(data$x1)), axes=FALSE, ann=FALSE, type='n',ylim=c(0,1))
points(data$x1,rep(1,length(data$x1)), pch=16)
axis(1, pos=0.5, at=46:55)


## ----Centering3, echo=FALSE, fig.cap='', fig.width=6, fig.height=5,out.width='500px'----
plot(data$x1,rep(1,length(data$x1)), axes=FALSE, ann=FALSE, type='n',ylim=c(0,1))
points(data$x1,rep(1,length(data$x1)), pch=16)
axis(1, pos=0.5, at=46:55)
mm <- mean(data$x1)
abline(v=mm, lty=2)
pcx1 <- pretty(data$cx1)


## ----Centering4, echo=FALSE, fig.cap='', fig.width=6, fig.height=5, results='hide', out.width='500px'----
plot(data$x1,rep(1,length(data$x1)), axes=FALSE, ann=FALSE, type='n',ylim=c(0,1))
points(data$x1,rep(1,length(data$x1)), pch=16)
axis(1, pos=0.5, at=46:55)
mm <- mean(data$x1)
abline(v=mm, lty=2)
pcx1 <- pretty(data$cx1)
axis(1, at=-4:5+mm, lab=-4:5, pos=0)


## ----centering5, echo=FALSE, fig.width=8, fig.height=5.07, out.width='600px', comment=NA----
data$cx1 <- as.numeric(scale(data$x1,scale=FALSE))
data$cx2 <- as.numeric(scale(data$x2,scale=FALSE))

opar <- par(mar=c(4,5,0,0))
plot(y~cx1, data,ann=FALSE, axes=FALSE, type="n", ylim=c(15,25), xlim=c(-4,4))
points(y~cx1,data,pch=16, col="black")
##points(fitted(lm(y~x))~x, col="red", pch=16)
axis(1,pos=15,lwd=2, line=-4)
mtext("cx1", 1, line=2,font=2, cex=1.5)
axis(2,las=1,pos=-4,lwd=2)
mtext("y", 2, line=2,font=2,las=1, cex=1.5)
abline(lm(y~cx1,data),lwd=2)
#text(2,3,expression(paste('y=2+1.5x+',epsilon)), pos=4,cex=2.5,font=2)
lines(c(0,0),c(-5,predict(lm(y~cx1,data), newdata=data.frame(cx1=0))), lty=2)
lines(c(0,-4),c(predict(lm(y~cx1,data), newdata=data.frame(cx1=0)),predict(lm(y~cx1,data), newdata=data.frame(cx1=0))), lty=2)


## ---- echo=FALSE--------------------------------------------------------------
set.seed(4)
n     = 100
intercept = 5
temp   = runif(n)
nitro = runif(n) + 0.8*temp
int.eff=2
temp.eff <- 0.85
nitro.eff <- -5.5
res = rnorm(n, 0, 1)
coef <- c(int.eff, temp.eff, nitro.eff,int.eff)
mm <- model.matrix(~temp*nitro)

y <- t(coef %*% t(mm)) + res
data <- data.frame(y,x1=temp, x2=nitro, cx1=scale(temp,scale=F), cx2=scale(nitro,scale=F))


## ---- results="markup"--------------------------------------------------------
library(car)
# additive model - scaled predictors
vif(lm(y ~ scale(x1) + scale(x2), data))


## ---- results="markup"--------------------------------------------------------
library(car)
# additive model - scaled predictors
vif(lm(y ~ scale(x1) + scale(x2), data))


## ---- results="markup"--------------------------------------------------------
# multiplicative model - raw predictors
vif(lm(y ~ x1 * x2, data))


## ---- results="markup"--------------------------------------------------------
# multiplicative model - raw predictors
vif(lm(y ~ x1 * x2, data))


## ---- results="markup"--------------------------------------------------------
# multiplicative model - scaled predictors
vif(lm(y ~ scale(x1) * scale(x2), data))


## ---- results="markup"--------------------------------------------------------
data.add.lm <- lm(y~scale(x1)+scale(x2), data)



## ---- results="markup"--------------------------------------------------------
data.add.lm <- lm(y~scale(x1)+scale(x2), data)


## ---- results="markup"--------------------------------------------------------
data.mult.lm <- lm(y~scale(x1)+scale(x2)+scale(cx1):scale(x2), data)
#OR
data.mult.lm <- lm(y~scale(x1)*scale(x2), data)


## ----diagPlot1, echo=2:3, fig.cap="", results='hide',width=8,height=5, out.width='600px'----
opar <- par(mfrow=c(2,2),mar=c(4,5,2,0))
plot(data.add.lm)


## ----diagPlot2, results="hide", echo=2:3, width=8,height=5, out.width='600px'----
opar <- par(mfrow=c(2,2),mar=c(4,5,2,0))
plot(data.mult.lm)


## ---- results="markup"--------------------------------------------------------
summary(data.add.lm)


## ---- results="markup"--------------------------------------------------------
confint(data.add.lm)


## ---- results="markup"--------------------------------------------------------
summary(data.mult.lm)


## ----EffectsPlot1, results="hide", width=8,height=5, out.width='400px'--------
library(effects)
plot(effect("x1",data.add.lm, residuals=TRUE))


## ----EffectsPlot2, results="hide", fig.width=8,fig.height=4, out.width='600px', eval=TRUE----
library(effects)
plot(allEffects(data.add.lm, residuals=TRUE))


## ----EffectsPlot3, results="hide", fig.width=8,fig.height=4, out.width='600px',eval=TRUE----
library(effects)
plot(allEffects(data.mult.lm, residuals=TRUE))


## ---- results='markup'--------------------------------------------------------
AIC(data.add.lm, data.mult.lm)
library(MuMIn)
AICc(data.add.lm, data.mult.lm)


## ---- echo=FALSE--------------------------------------------------------------
options(width=80)

## ---- results="markup", eval=TRUE---------------------------------------------
library(MuMIn)
data.mult.lm <- lm(y~scale(x1)*scale(x2), data, na.action=na.fail)
dredge(data.mult.lm, rank="AICc", trace=TRUE)


## ---- results="markup",eval=TRUE----------------------------------------------
library(MuMIn)
data.dredge<-dredge(data.mult.lm, rank="AICc")
model.avg(data.dredge, subset=delta<20)


## ---- echo=FALSE, results="rmarkdown"-----------------------------------------
#response
Y <- c(2,3,4,6,7,8,10,11,12)
#Factor A
A <- gl(3,3,9,lab=c("G1","G2","G3"))
library(pander)
dat <- data.frame(Y,A)
mm <- model.matrix(~-1+A)
colnames(mm) <- paste0('dummy',1:3)
#dat <- cbind(dat, NA,NA,NA,mm)
dat <- cbind(dat, mm)
pandoc.table(dat, justify="centre", style="simple")
#pandoc.table(data.frame(Y,A), justify="centre", style="rmarkdown")
#calculate the group means
#tapply(Y, A, mean)


## ---- echo=FALSE, results="rmarkdown"-----------------------------------------
#response
Y <- c(2,3,4,6,7,8,10,11,12)
#Factor A
A <- gl(3,3,9,lab=c("G1","G2","G3"))
library(pander)
dat <- data.frame(Y,A)
mm <- cbind(1,model.matrix(~-1+A))
colnames(mm) <- c('Intercept',paste0('dummy',1:3))
#dat <- cbind(dat, NA,NA,mm)
dat <- cbind(dat, mm)
pandoc.table(dat, justify="centre", style="simple")
#pandoc.table(data.frame(Y,A), justify="centre", style="rmarkdown")
#calculate the group means
#tapply(Y, A, mean)


## ---- echo=FALSE, results="rmarkdown"-----------------------------------------
#response
Y <- c(2,3,4,6,7,8,10,11,12)
#Factor A
A <- gl(3,3,9,lab=c("G1","G2","G3"))
library(pander)
dat <- data.frame(Y,A)
mm <- model.matrix(~-1+A)
colnames(mm) <- paste0('dummy',1:3)
dat <- cbind(dat, mm)
pandoc.table(dat, justify="centre", style="simple") 


## ----meansParam, results="markup"---------------------------------------------
summary(lm(Y~-1+A))$coef


## ---- echo=FALSE, results="rmarkdown"-----------------------------------------
#response
Y <- c(2,3,4,6,7,8,10,11,12)
#Factor A
A <- gl(3,3,9,lab=c("G1","G2","G3"))
library(pander)
dat <- data.frame(Y,A)
mm <- model.matrix(~A)
colnames(mm) <- c('alpha',paste0('dummy',2:3))
dat <- cbind(dat, mm)
pandoc.table(dat, justify="centre", style="simple") 


## ----TreatmentContrasts, results="markup"-------------------------------------
contrasts(A) <-contr.treatment
contrasts(A)
summary(lm(Y~A))$coef


## ----TreatmentContrasts1, results="markup"------------------------------------
summary(lm(Y~A))$coef


## ----UserContrasts1a, results="markup"----------------------------------------
contrasts(A) <- cbind(c(0,1,-1),c(1, -0.5, -0.5))
contrasts(A)



## ----UserContrasts1d, results="markup"----------------------------------------
contrasts(A) <- cbind(c(0,1,-1),c(1, -0.5, -0.5))
contrasts(A)


## ----UserContrasts1b, results="markup"----------------------------------------
contrasts(A) <- cbind(c(0,1,-1),c(1, -0.5, -0.5))
contrasts(A)
crossprod(contrasts(A))
summary(lm(Y~A))$coef


## ----UserContrasts1c, results="markup"----------------------------------------
contrasts(A) <- cbind(c(1, -0.5, -0.5),c(1,-1,0))
contrasts(A)
crossprod(contrasts(A))


## ---- results="markup"--------------------------------------------------------
anova(lm(Y~A))


## ----bonferoni, results="markup"----------------------------------------------
summary(lm(Y~A))$coef
0.05/3


## ----tukey, results="markup"--------------------------------------------------
library(emmeans)
data.lm<-lm(Y~A)
emmeans(data.lm, pairwise~A)


