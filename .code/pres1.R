## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)


## ----base-r, cache=TRUE,echo=FALSE--------------------------------------------
system("convert -resize 650x ../resources/base-r.pdf ../resources/base-r.png")
system("mv ../resources/base-r-0.png ../resources/base-r.png") 


## ----rstudio-ide, cache=TRUE,echo=FALSE---------------------------------------
system("convert -resize 650x ../resources/rstudio-ide.pdf ../resources/rstudio-ide.png")
system("mv ../resources/rstudio-ide-0.png ../resources/rstudio-ide.png") 


## ----installing, results='markdown', eval=FALSE-------------------------------
## install.packages("tidyverse")


## ----library, results='markdown', eval=TRUE-----------------------------------
library("dplyr")


## ----library1, results='markdown', eval=TRUE----------------------------------
library("tidyverse")


## ----library1a, results='markdown', eval=FALSE--------------------------------
## install.packages("car")         # for regression diagnostics
## install.packages("ggfortify")   # for model diagnostics
## install.packages("DHARMa")      # for model diagnostics
## install.packages("see")         # for model diagnostics
## install.packages("lindia")      # for diagnostics of lm and glm
## install.packages("broom")       # for consistent, tidy outputs
## install.packages("knitr")       # for knitting documents and code
## install.packages("glmmTMB")     # for model fitting
## install.packages("effects")     # for partial effects plots
## install.packages("ggeffects")   # for partial effects plots
## install.packages("emmeans")     # for estimating marginal means
## install.packages("modelr")      # for auxillary modelling functions
## install.packages("performance") # for model diagnostics
## install.packages("datawizard")  # for data properties
## install.packages("insight")     # for model information
## install.packages("sjPlot")      # for outputs


## ----library1b, results='markdown', eval=FALSE--------------------------------
## install.packages("report")      # for reporting methods/results
## install.packages("easystats")   # framework for stats, modelling and visualisation
## install.packages("MuMIn")       # for AIC and model selection
## install.packages("MASS")        # for old modelling routines
## install.packages("patchwork")   # for combining multiple plots together
## install.packages("gam")         # for GAM(M)s
## install.packages("gratia")      # for GAM(M) plots
## install.packages("modelbased")  # for model info
## install.packages("broom.mixed") # for tidy outputs from mixed models


## ----namespaces, results='markdown', eval=FALSE-------------------------------
## stats::filter()
## dplyr::filter()


## ----polymorphism, results='markdown', eval=TRUE------------------------------
mean


## ----polymorphism1, results='markdown', eval=TRUE-----------------------------
base:::mean.default


## ----rmarkdown, cache=FALSE, echo=FALSE---------------------------------------
system("convert -resize 650x ../resources/rmarkdown.pdf ../resources/rmarkdown.png")
system("mv ../resources/rmarkdown-0.png ../resources/rmarkdown.png")

