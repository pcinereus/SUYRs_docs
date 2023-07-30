## ----setup, include=FALSE,warning=FALSE, message=FALSE------------------------
knitr::opts_chunk$set(echo = TRUE,warning=FALSE, message=FALSE, cache = TRUE, comment = "")
options(tinytex.engine = 'xelatex')
cleanRmdInput <- function(x) {
#x <- gsub("```\\{r","```markdown\n`r ''```\\{r",x)
x <- gsub("^```$","`` `",x)  # the Makefile will then change this back to ``` after pandoc
x
}
library(tidyverse)
library(pander)
FIG_PATH <- 'multivariate_models/figure-html/'


## ----libraries, results='markdown', eval=TRUE---------------------------------
library(tidyverse)
library(mvabund)
library(glmmTMB)
library(gllvm)
library(vegan)
library(ggvegan)


## ----readData spider, results='markdown', eval=TRUE---------------------------
data(spider)
glimpse(spider)


## ----prepareData spider, results='markdown', eval=TRUE------------------------
## Prepare data for algorithmic multivariate analyses
dat.spider <- spider$abund
## Prepare data for model-based multivariate analyses
dat.spider.1 <- dat.spider %>%
    as.data.frame() %>%
    mutate(Site = factor(1:n())) %>%
    pivot_longer(cols = -Site,
                 names_to = 'Species',
                 values_to = 'Abund')


## ----spider_MDS, results='markdown', eval=TRUE, results = 'hide'--------------
spider.mds <- metaMDS(dat.spider, k = 2)
fortify(spider.mds) %>%
    filter(Score == 'sites') %>%
    ggplot(aes(y = NMDS2, x = NMDS1)) +
    geom_text(aes(label = Label))


## ----spider_glmmTMB, results='markdown', eval=TRUE----------------------------
## spider.glmmTMB <- glmmTMB(Abund ~ Species + rr(Species + 0|Site, d = 2),
##                           family = nbinom2(),
##                           )
spider.glmmTMB <- glmmTMB(Abund ~ 1 + rr(Species + 0|Site, d = 2),
                          family = nbinom2(),
                          dat = dat.spider.1
                          )
spider.loadings <- spider.glmmTMB$obj$env$report(
                                              spider.glmmTMB$fit$parfull)$fact_load[[1]] %>%
                                                                        as.data.frame() %>%
                                                                        mutate(Species = colnames(dat.spider))
fit <-
    ranef(spider.glmmTMB)[[1]]$Site %>%
    mutate(Site = 1:n())

ggplot(fit, aes(y = SpeciesAlopcune, x = SpeciesAlopacce)) +
    geom_text(aes(label = Site)) +
    geom_text(data = spider.loadings, aes(y = V2, x = V1, label = Species), color = 'blue')



## ----spider_glmmTMB_fit1, eval = FALSE, results='markdown', cache = FALSE-----
## ##                           dat = dat.spider.1
## ## organize data into long format
## sppTot <- sort(colSums(spider$abund), decreasing = TRUE)
## tmp <- cbind(spider$abund, spider$x)
## tmp$id <- 1:nrow(tmp)
## spiderDat <- reshape(tmp,
##                      idvar = "id",
##                      timevar = "Species",
##                      times =  colnames(spider$abund),
##                      varying = list(colnames(spider$abund)),
##                      v.names = "abund",
##                      direction = "long")
## ## fit rank-reduced models with varying dimension
## fit_list <- lapply(2:10,
##                    function(d) {
##                        fit.rr <- glmmTMB(abund ~ Species + rr(Species + 0|id, d = d),
##                                          data = spiderDat)
##                    })
## ## compare fits via AIC
## aic_vec <- sapply(fit_list, AIC)
## aic_vec - min(aic_vec, na.rm = TRUE)
## fit_list[[1]] %>% summary()


## ----spider_glmmTMB_summary, eval = FALSE, results='markdown'-----------------
## fit_list[[1]] %>% summary()


## ----fit.rr1, results='markdown', eval=TRUE, eval = FALSE---------------------
## d = 2
## fit.rr <- glmmTMB(abund ~ Species +
##                       ## scale(soil.dry) +
##                       ## scale(bare.sand) +
##                       ## scale(fallen.leaves) +
##                       ## scale(moss) +
##                       ## scale(herb.layer) +
##                       ## scale(reflection) +
##                       rr(Species + 0|id, d = d),
##                   data = spiderDat,
##                   family = nbinom2())
## summary(fit.rr)
## 
## 
## fit <-
##     ranef(fit.rr)[[1]]$id %>%
##     mutate(Site = 1:n())
## 
## ggplot(fit, aes(y = SpeciesAlopcune, x = SpeciesAlopacce)) %>%
##     geom_text()
## 
## fit.rr <- glmmTMB(abund ~ 1 +
##                       rr(Species + 0|id, d = d),
##                   data = spiderDat,
##                   family = nbinom2())
## summary(fit.rr)


## ----fit.rr, results='markdown', eval=TRUE, eval = FALSE----------------------
## mod1 <- glmmTMB(abund ~ (0 + soil.dry | Species) + (1|Species:id),
##                 family = poisson(),
##                 data = spiderDat)
## summary(mod1)


## ----spider_mvabund_fit, results='markdown', eval=TRUE, cache = TRUE----------
spiddat <- mvabund(spider$abund)
X <- as.matrix(spider$x)
##To fit a log-linear model assuming counts are poisson:
## glm.spid <- manyglm(spiddat~X, family="negative.binomial")
glm.spid <- manyglm(spiddat~1, family="negative.binomial")
ecoCopula::cord(glm.spid)$scores %>%
                            as.data.frame() %>%
                            mutate(Site = factor(1:n())) %>%
                            ggplot(aes(y = Factor2, x = Factor1)) +
                            geom_text(aes(label = Site))


## ----gllvm_1, results='markdown', eval=TRUE-----------------------------------
mod2 <- gllvm(y = as.matrix(spider$abund), 
              family = "negative.binomial",
              num.lv = 2)
## summary(mod2)
gllvm::ordiplot(mod2, biplot = TRUE)
## coefplot(mod2)
## getLV(mod2)
## getLV(mod2, type = 'scaled')


## ----gllvm_2, results='markdown', eval=TRUE-----------------------------------
mod2 <- gllvm(y = as.matrix(spider$abund),
              as.matrix(spider$x),
              formula = ~ soil.dry + bare.sand + fallen.leaves + moss + herb.layer + reflection, 
              family = "negative.binomial",
              num.lv = 2)
gllvm::ordiplot(mod2, biplot = TRUE)
summary(mod2)
coefplot(mod2, mfrow = c(3,2), cex.ylab = 0.8)
## coefplot(mod2)
## getLV(mod2)
## getLV(mod2, type = 'scaled')

