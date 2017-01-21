## ----echo=FALSE, message=FALSE-------------------------------------------
knitr::opts_chunk$set(collapse = T, comment = NA)
library(WOODCARB3R)

## ------------------------------------------------------------------------
finalCarbonContribution()

## ------------------------------------------------------------------------
finalCarbonContribution(Years = 1945:2017, approach = "Atmospheric Flow", halflives = halfLives* 1.2)

## ---- fig.width=6, fig.height=4------------------------------------------
finalCarbonContribution(plot = TRUE)

## ------------------------------------------------------------------------
finalVariables()

## ------------------------------------------------------------------------
swpcarbontotal(c(1990,2015), onlytotal = FALSE, lumberpre = FALSE,
               approach = "Stock Change", halflives = halfLives * .9) 

