
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


