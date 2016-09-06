
#' Calculate final carbon contribution to AFOLU.
#'
#' @param Years years to return carbon totals for
#' @param approach The approach used to calculate carbon contribution.
#' @param decaytype Type of decay method to use
#'
#' @return A vector of carbon contributions for all Years. Plot returned is optional
#' @export
#'
#' Will incorporate decay array function so decay values arent calculated with this
#' @examples
#' finalCarbonContribution()
#' finalCarbonContribution(Years = 2000:202 approach = "Stock Change")
#' finalCarbonContribution(Years = 2000:202 approach = "Production",
#'                          decaytype ="Exponential")
finalCarbonContribution <- function(Years = 1990:2015,approach = c("Production",
                                                                    "Stock Change"),
                                    decaytype = c("Exponential",
                                                   "Gamma"), plot = FALSE,
                                    halflives = halfLives){
  library(ggplot2)
  approachtype <- match.arg(approach)
  decay<- match.arg(decaytype)
  if(approachtype == "Production"){
    #(-1*2a - 2b)*44/12
    #2a = calcCF * 1000
    #2b = calcDC * 1000
    var2a <-  (Var2_C_SWP_STOCKCHANGE(Years, decaydistribution = decay) +
                 sapply(Years, Var2_C_PAPER_STOCKCHANGE)) * 1000

    var2b <- calculatedumpcarbonproduction(totalcarbonstockchange = TRUE)[Years-(minyr-1)]  *
                    1000
  #return(var2a)
    if(plot == TRUE){
      gdf <- data.frame(Years = Years, CarbonContribution = (-1*var2a-var2b)*44/12)
      #ggplot(gdf, aes(x=Years, y = CarbonContribution)) + geom_line()
      CarbonContribution <- (-1*var2a-var2b)*44/12
      plot(Years,  CarbonContribution, type = "l", col = "red",
           main = "Hwp Contribution to AFOLU Using Production Approach",
           xlab = "CarbonContribution(Gg CO2/Yr)")
      return((-1*var2a-var2b)*44/12)
    }
    return((-1*var2a-var2b)*44/12)
  }
  else if(approachtype == "Stock Change"){
    var1a <- (sapply(Years, Var1_C_SWP_STOCKCHANGE, decaydistribution = decay) +
                sapply(Years, Var1_C_PAPER_STOCKCHANGE, decaydistribution = decay)) * 1000

    var1b <- calculatedumpcarbonstockchange(totalcarbonstockchange = TRUE)[Years-(minyr-1)] *
      1000
    if(plot == TRUE){
      gdf <- data.frame(Years = Years, CarbonContribution = (-1*var1a-var1b)*44/12)
      #ggplot(gdf, aes(x=Years, y = CarbonContribution)) + geom_line()
      CarbonContribution <- (-1*var1a-var1b)*44/12
      plot(Years,  CarbonContribution, type = "l", col = "red",
           main = "Hwp Contribution to AFOLU Using Stock Change Approach",
           xlab = "CarbonContribution(Gg CO2/Yr)")
      return((-1*var1a-var1b)*44/12)
    }
    return((-1*var1a-var1b)*44/12)
  }
}



#' @return
#' @export
#'
#' @examples
calculate2A <- function(Yrs = 1990:2015){
  Var2a_STOCKCHANGE_TOTAL <- function(y){
    return((Var2_C_SWP_STOCKCHANGE(y) + Var2_C_PAPER_STOCKCHANGE(y))*1000)
  }
  FinalVariable <- data.frame(Years = Yrs)
  FinalVariable$`2A` <- sapply(Yrs, function(y){
    return((Var2_C_SWP_STOCKCHANGE(y) + Var2_C_PAPER_STOCKCHANGE(y))*1000)
  })
  FinalVariable$`2A`
}
####
#'VAR #2b
#'Annual Change in stock of HWP in SWDS produced from domestic harvest
#'Output in Gg C/yr
Var2b_C_STOCKCHANGE_TOTAL_2B <- function(y){
  return(1000*(C_SWP_StockChange_LFDumps(y) + C_PAPER_StockChange_LFDumps(y)))
}
###
HWP_AFOLU_Prod_Approach <- function(y){
  if (y < 1900 || y > 2050){
    return(0)
  }
  else{
    return((-1*Var2_C_STOCKCHANGE_TOTAL_2A(y)-Var2_C_STOCKCHANGE_TOTAL_2B(y))*(44/12))# + "Gg C/yr in emmissions/removals")
  }

}
