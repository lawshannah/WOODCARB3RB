## ----echo=FALSE, message=FALSE-------------------------------------------
knitr::opts_chunk$set(collapse = T, comment = NA)
library(WOODCARB3R)

## ------------------------------------------------------------------------
#finalCarbonContribution()

## ------------------------------------------------------------------------
#finalCarbonContribution(Years = 1945:2017, approach = "Stock Change")

## ------------------------------------------------------------------------
#finalCarbonContribution(decaytype = "K=2", halflives = halfLives * 1.2)

## ---- fig.width=6, fig.height=4------------------------------------------
#finalCarbonContribution(plot = TRUE)

## ------------------------------------------------------------------------
swpcarbontotal(c(1990,2015), onlytotal = FALSE) 

## ------------------------------------------------------------------------
swpcarbontotal(approach = "Stock Change")

## ------------------------------------------------------------------------
swpcarbontotal(lumberpre = FALSE)

## ------------------------------------------------------------------------
swpcarbontotal(halflives = halfLives * 1.5)

