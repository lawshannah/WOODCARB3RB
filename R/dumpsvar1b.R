

#' Calculate carbon in SWDS for the Stock Change Method
#'
#' @param Years
#' @param totalcarbonstockchange Whether to return data frame of intermedate calculations or
#'  just totals
#'
#' @return Either a data frame of calculations if totalcarbonstockchange is false, or
#'  a numeric vector of stockchange totals if that argument is true
#' @export
#'
#' @examples
#' calculatedumpcarbonstockchange()
#' calculatedumpcarbonstockchange(totalcarbonstockchange = TRUE)
calculatedumpcarbonstockchange <- function(Years = yrs, totalcarbonstockchange = FALSE){
  usa <- calcUSAproduction()
  c <- calcplacediu(approach = "Stock Change")
  swp <- swpcarbontotal(Yrs = Years,approach = "Stock Change")

  CalcUSA <- data.frame(years = Years )

  CalcUSA$TotalCarbonOutputStockChange <- sapply(Years, function(year){
    if(year == minyr){
      return(c[year-(minyr-1)]-swpcarbontotal(Yrs=year,lumberpre = FALSE,
                                              approach = "Stock Change"))
    }
    else{
      return((swp[year-minyr] + c[year-(minyr-1)]) -
               (swp[year-(minyr-1)]))
    }
  })

  CalcUSA$ParamResults_Q <- woodToDumps[Years-(minyr-1),1]

  CalcUSA$Dumps_C <- PRM57*CalcUSA$TotalCarbonOutputStockChange*PRO17*
                      CalcUSA$ParamResults_Q


  for(i in 1900:2020){
    if (i==1900)
      CalcUSA$Dumps_D[1] <-  (1/(1+PRM60))*CalcUSA$Dumps_C[i-(minyr-1)]
    else
      CalcUSA$Dumps_D[i-1899] <- (1/(1+PRM60))*(CalcUSA$Dumps_D[i-1900]+
                                                  CalcUSA$Dumps_C[i-(minyr-1)])
  }

  CalcUSA$Q <- woodToLandFills[Years-(minyr-1),1]*PRJ96*
                CalcUSA$TotalCarbonOutputStockChange*PRO17



  for(y in 1900:2020){
    if(y == 1900){
      CalcUSA$Dumps_F[y-(minyr-1)] <- CalcUSA$Dumps_D[y-(minyr-1)]
    }
    else{
      CalcUSA$Dumps_F[y-(minyr-1)] <- CalcUSA$Dumps_D[y-(minyr-1)]-CalcUSA$Dumps_D[y-minyr]
    }
  }

   CalcUSA$X <- PRM45*CalcUSA$Q
  #
  #  <- sapply(Years, function(y){
  #   if(y<1901){
  #     return(0.0)
  #   }
  #   if(y>1900){
  #     return((1/(1+PRM50))*(CalcUSA$Y[y-(minyr)]+CalcUSA$X[y-(minyr-1)]))
  #   }
  # })
  for(y in 1900:2020){
    if(y == 1900){
      CalcUSA$Y[y-(minyr-1)] <- (1/(1+PRM50))*CalcUSA$X[y-(minyr-1)]
    }
    else{
      CalcUSA$Y[y-(minyr-1)] <- (1/(1+PRM50))*(CalcUSA$Y[y-(minyr)]+CalcUSA$X[y-(minyr-1)])
    }
  }
  #return(CalcUSA$X)
  CalcUSA$AA<-sapply(Years, function(y){
    if(y == 1900){
      return(CalcUSA$Y[y-(minyr-1)])
    }
    return(CalcUSA$Y[y-(minyr-1)]-CalcUSA$Y[y-minyr])
  })
#return(CalcUSA$Y)
  CalcUSA$V <- (1-PRM45)*CalcUSA$Q

  CalcUSA$D <- PRO18*usa$`Percent of Wood Pulp For Paper`[Years-(minyr-1)]*
                  usa$`Paper+Paperboard Consumption`

  # CalcUSA$J <- sapply(Years, function(y){
  #   if (y<1901){
  #     return((exp(-log(2)/PRP10))*(CalcUSA$D[y-(minyr-1)]))
  #   }
  #   if (y>1900){
  #     return((exp(-log(2)/PRP10))*(CalcUSA$D[y-(minyr-1)]+CalcUSA$J[y-minyr]))
  #   }
  # })

  for(y in 1900:2020){
    if(y == 1900){
      CalcUSA$J[y-(minyr-1)] <- (exp(-log(2)/PRP10))*(CalcUSA$D[y-(minyr-1)])
    }
    else{
      CalcUSA$J[y-(minyr-1)] <- (exp(-log(2)/PRP10))*(CalcUSA$D[y-(minyr-1)]+CalcUSA$J[y-minyr])
    }
  }


  # CalcUSA$K <- sapply(Years, function(y){
  #   if (y<1901){
  #     return(CalcUSA$D[y-(minyr-1)]-CalcUSA$J[y-(minyr-1)])
  #   }
  #   if(y>1900){
  #     return(CalcUSA$J[y-(minyr)]+CalcUSA$D[y-(minyr-1)]-CalcUSA$J[y-(minyr-1)])
  #   }
  # })

  for(y in 1900:2020){
    if(y == 1900){
      CalcUSA$K[y-(minyr-1)] <- CalcUSA$D[y-(minyr-1)]-CalcUSA$J[y-(minyr-1)]
    }
    else{
      CalcUSA$K[y-(minyr-1)] <- CalcUSA$J[y-(minyr)]+CalcUSA$D[y-(minyr-1)]-CalcUSA$J[y-(minyr-1)]
    }
  }


  CalcUSA$Dumps_H <- PRM57*CalcUSA$K*woodToDumps[Years-(minyr-1),1]

  # CalcUSA$Dumps_I <- sapply(Years, function(y){
  #   if(y<1901){
  #     return((1/(1+PRM61))*CalcUSA$Dumps_H[y-(minyr-1)])
  #   }
  #   if (y>1900){
  #     return((1/(1+PRM61))*(CalcUSA$Dumps_I[y-minyr]+CalcUSA$Dumps_H[y-(minyr-1)]))
  #   }
  # })

  for(y in 1900:2020){
    if(y == 1900){
      CalcUSA$Dumps_I[y-(minyr-1)] <- (1/(1+PRM61))*CalcUSA$Dumps_H[y-(minyr-1)]
    }
    else{
      CalcUSA$Dumps_I[y-(minyr-1)] <- (1/(1+PRM61))*(CalcUSA$Dumps_I[y-minyr]+CalcUSA$Dumps_H[y-(minyr-1)])
    }
  }
  #return(CalcUSA$Dumps_I)

  CalcUSA$R <- CalcUSA$K * paperToLandFills[Years-(minyr-1),1] * PRI96

  CalcUSA$AG <- (1-PRM46) * CalcUSA$R

  # CalcUSA$Dumps_K <- sapply(Years, function(y){
  #   if(y<1901){
  #     return(CalcUSA$Dumps_I[y-(minyr-1)])
  #   }
  #   if(y>1900){
  #     return(CalcUSA$Dumps_I[y-(minyr-1)]-CalcUSA$Dumps_I[y-(minyr)])
  #   }
  # })

  for(y in 1900:2020){
    if(y == 1900){
      CalcUSA$Dumps_K[y-(minyr-1)]<- CalcUSA$Dumps_I[y-(minyr-1)]
    }
    else{
      CalcUSA$Dumps_K[y-(minyr-1)]<-CalcUSA$Dumps_I[y-(minyr-1)]-CalcUSA$Dumps_I[y-(minyr)]
    }
  }


  CalcUSA$AI <- PRM46*CalcUSA$R

  # CalcUSA$AJ <- sapply(Years, function(y){
  #   if (y<1901){
  #     return((1/(1+PRM51))*CalcUSA$AI[y-(minyr-1)])
  #   }
  #   if(y>1900){
  #     return((1/(1+PRM51))*(CalcUSA$AJ[y-minyr]+CalcUSA$AI[y-(minyr-1)]))
  #   }
  # })

  for(y in 1900:2020){
    if(y == 1900){
      CalcUSA$AJ[y-(minyr-1)]<- (1/(1+PRM51))*CalcUSA$AI[y-(minyr-1)]
    }
    else{
      CalcUSA$AJ[y-(minyr-1)]<-(1/(1+PRM51))*(CalcUSA$AJ[y-minyr]+CalcUSA$AI[y-(minyr-1)])
    }
  }


  CalcUSA$AL <- sapply(Years, function(y){
    if (y<1901){
      return(CalcUSA$AJ[y-(minyr-1)])
    }
    if (y>1900){
      return(CalcUSA$AJ[y-(minyr-1)]-CalcUSA$AJ[y-minyr])
    }
  })
#return(CalcUSA$Dumps_F)
  CalcUSA$Total_swpstock_change_LD <- CalcUSA$AA+CalcUSA$V+CalcUSA$Dumps_F
#return(CalcUSA)

  CalcUSA$Total_paper_stock_change_LD<-CalcUSA$AG+CalcUSA$AL+CalcUSA$Dumps_K


  CalcUSA$Var1b_STOCKCHANGE_TOTAL<-(CalcUSA$Total_swpstock_change_LD+CalcUSA$Total_paper_stock_change_LD)

  if(totalcarbonstockchange == TRUE){
    return(CalcUSA$Var1b_STOCKCHANGE_TOTAL)
  }
  else{
    CalcUSA
  }
}









#this caclulates calcAm



#Calc_AJ<-function(y){
# return((1/(1+PRM51))*(Calc_AJ(y)+Calc_AI(y)))
#}


















#this calculates Calc AB












#for(i in 1900:1910){
# if (i==1900)
#  print((1/(1+PRM60))*Dumps_C(i))
#else
# print((1/(1+PRM60))*(dumpDtable[i-1900]+Dumps_C(i)))
#}


#calculates SWCALC G
# Var1_outputs<-function(y){
#   return(Var1_totalC_Output(y)*PRO17)
# }
