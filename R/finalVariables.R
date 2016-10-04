#' Calculate final carbon contribution to AFOLU.
#' All units returned are in Thousand metric tons CO2 Equivalent
#'
#' The "Production" approach corresponds to `06 IPCC Tables`$R9 in the WOODCARB spreadsheet
#' The "Stock Change" approach corresponds to `06 IPCC Tables`$P9 in the WOODCARB spreadsheet
#'
#' The plot argument returns a simple plot of time vs. carbon contribution.
#'
#' @param Years years to return carbon totals for
#' @param approach The approach used to calculate carbon contribution.
#' @param decaytype Type of decay method to use
#' @param plot whether to return a plot or not
#' @param halflives data frame of half lives to use
#'
#' @return A vector of carbon contributions for all Years. Plot returned is optional
#' @export
#'
#' @examples
#' finalCarbonContribution()
#' finalCarbonContribution(approach = "Stock Change")
#' finalCarbonContribution(approach = "Production",
#'                          decaytype ="Exponential")
finalCarbonContribution <- function(Years = 1990:2015,approach = c("Production",
                                                                   "Stock Change"),
                                    decaytype = c("Exponential",
                                                  "K=2"), plot = FALSE,
                                    halflives = halfLives){
  approachtype <- match.arg(approach)
  decay<- match.arg(decaytype)

  if(approachtype == "Production" | approachtype == "Stock Change"){

    vara <-  (SWP_CARBON_STOCKCHANGE(Years, approach = approachtype,
                                     decaydistribution = decay,
                                     halflives = halflives) +
                PAPER_CARBON_STOCKCHANGE(Years,
                                         approach = approachtype)) * 1000

    varb <- carbonfromdumps(Years, approach = approachtype)  * 1000

    CarbonContribution <- (-1*vara-varb)*44/12

    if(plot == TRUE){
      #gdf <- data.frame(Years = Years, CarbonContribution = (-1*var2a-var2b)*44/12)
      #ggplot(gdf, aes(x=Years, y = CarbonContribution)) + geom_line()

      plot(Years,  CarbonContribution, type = "l", col = "red",
           main = paste("Hwp Contribution to AFOLU Using",approachtype, "Approach"),
           ylab = "CarbonContribution(Gg CO2/Yr)")
      return(CarbonContribution)
    }
    return(CarbonContribution)
  }

}


SWP_CARBON_STOCKCHANGE <- function(years, approach = c("Production", "Stock Change"),
                                   decaydistribution = c("Exponential",
                                                         "K=2"),
                                   halflives = halfLives){
  approach <- match.arg(approach)
  decay <- match.arg(decaydistribution)

  if(min(years) == minyr){
    index <- minyr:max(years)
  }
  else{
    index <- (min(years)-1):max(years)
  }

  totals <- swpcarbontotal(Yrs = index, approach = approach, distribution = decay,
                           halflives = halflives)
  #return(totals)
  changeinstock <- (totals[2:length(totals)] - totals[1:length(totals)-1])*PRO17
  return(changeinstock)
}

PAPER_CARBON_STOCKCHANGE <- function(years, approach = c("Production", "Stock Change")){
  USA <- calcUSApaper()
  approach = match.arg(approach)
  calcpaper <- function(years, CarbonInputFlowFromPaper){

    papercarbon <- numeric(length(minyr:max(years)))
    for(year in minyr:max(years)){ #Total carbon in paper for year y in Tg C/yr
      if(year == minyr){
        papercarbon[year-(minyr-1)] <- exp(-log(2)/PRP10)*CarbonInputFlowFromPaper[year-(minyr-1)]
      }
      else{
        papercarbon[year-(minyr-1)] <- exp(-log(2)/PRP10)*(CarbonInputFlowFromPaper[year-(minyr-1)]+
                                                             papercarbon[year-1900])
      }
    }
    #return(papercarbon)
    if(min(years) == minyr){
      index <- minyr:max(years)
    }
    else{
      index <- (min(years)-1):max(years)
    }

    totals <- papercarbon[index-(minyr-1)]

    return(totals[2:length(totals)] - totals[1:length(totals)-1])
  }

  if (approach == "Production"){
    return(calcpaper(years, USA$`Production Approach-C Input from Paper Products(Calc BU)`))
  }

  if (approach == "Stock Change"){
    return(calcpaper(years, USA$CarbonInputFlowPaperStockChange))
  }
}



