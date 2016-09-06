
#' Calculate carbon in SWDS for the Stock Change Method
#'
#' Column names with only letters come from Calc sheet, otherwise sheet is specified (need to change names)
#'
#' Calculates carbon in SWDS with production approach
#' @return Either a data frame of values from Calculation spreadsheet or total carbon output
#' @export
#'
#' @examples
calculatedumpcarbonproduction <- function(Years = yrs, totalcarbonstockchange = FALSE){
  usa <- calcUSAproduction()
  c <- calcplacediu(approach = "Production")
  swp <- swpcarbontotal(Yrs = Years)

  CalcUSA <- data.frame(Years = Years )

  for (y in Years){
    if (y == minyr){
      CalcUSA$CA[1] <- exp(-log(2)/PRP10)*(usa$`Production Approach-C Input from Paper Products(Calc BU)`[y - (minyr-1)])
    }
    else{
      CalcUSA$CA[y-(minyr-1)] <- exp(-log(2)/PRP10)*(usa$`Production Approach-C Input from Paper Products(Calc BU)`[y - (minyr-1)]+
                                                    CalcUSA$CA[y-minyr])
    }
  }

  for(y in Years){
    if (y == minyr){
      CalcUSA$CB[y-(minyr-1)] <- usa$`Production Approach-C Input from Paper Products(Calc BU)`[y - (minyr-1)] -
                CalcUSA$CA[y-(minyr-1)]
    }
    else{
      CalcUSA$CB[y-(minyr-1)] <- CalcUSA$CA[y-minyr]+usa$`Production Approach-C Input from Paper Products(Calc BU)`[y - (minyr-1)]-
                            CalcUSA$CA[y-(minyr-1)]
    }
  }

  CalcUSA$ParamResults_V <- paperToLandFills[Years-(minyr-1),]

  CalcUSA$ParamResults_P <- CalcUSA$ParamResults_V * PRI96

  CalcUSA$CI <- CalcUSA$ParamResults_P * CalcUSA$CB

  CalcUSA$CS <- (1-PRM46) * CalcUSA$CI

  CalcUSA$CU <- PRM46 * CalcUSA$CI

  for(year in Years){
    if (year==minyr)
      CalcUSA$CV[1] <-  (1/(1+PRM51))*CalcUSA$CU[year-(minyr-1)]
    else
      CalcUSA$CV[year-(minyr-1)] <- (1/(1+PRM51))*(CalcUSA$CV[year-minyr]+CalcUSA$CU[year-(minyr-1)])
  }

  CalcUSA$CX <- sapply(Years, function(y){
    if(y == minyr){
      return(0)
    }
    else{
      return(CalcUSA$CV[y-(minyr-1)] - CalcUSA$CV[y-minyr])
    }
  })

  CalcUSA$ParamResults_Q <- woodToDumps[Years-(minyr-1),1]

  CalcUSA$Dumps_S <- PRM57 * CalcUSA$CB * CalcUSA$ParamResults_Q

  ###P+R 'O200' column, woodTolandfills is data linked to another site, not sure how it's calculated.
  CalcUSA$ParamResults_O <- woodToLandFills[Years-(minyr-1),] * PRJ96

  for(year in Years){
    if (year==minyr)
      CalcUSA$Dumps_T[1] <-  (1/(1+PRM61))*CalcUSA$Dumps_S[year-(minyr-1)]
    else
      CalcUSA$Dumps_T[year-(minyr-1)] <- (1/(1+PRM61))*(CalcUSA$Dumps_T[year-minyr]+CalcUSA$Dumps_S[year-(minyr-1)])
  }

  CalcUSA$Dumps_V <- sapply(Years, function(year){
    if(year == minyr){
      return(CalcUSA$Dumps_T[year-(minyr-1)])
    }
    else{
      return(CalcUSA$Dumps_T[year-(minyr-1)]-CalcUSA$Dumps_T[year-minyr])
    }
  })

  CalcUSA$TotalCarbonOutput <- sapply(Years, function(year){
    if(year == minyr){
      return(c[year-(minyr-1)]-swpcarbontotal(Yrs=year,lumberpre = FALSE))
    }
    else{
      return((swp[year-minyr] + c[year-(minyr-1)]) -
        (swp[year-(minyr-1)]))
    }
  })

  CalcUSA$CM <- PRM45 * CalcUSA$ParamResults_O * CalcUSA$TotalCarbonOutput * PRO17

  for(i in Years){
    if (i==minyr)
      CalcUSA$CN[1] <-  (1/(1+PRM50))*CalcUSA$CM[i-(minyr-1)]
    else
      CalcUSA$CN[i-(minyr-1)] <- (1/(1+PRM50))*(CalcUSA$CN[i-minyr]+CalcUSA$CM[i-(minyr-1)])
  }

  CalcUSA$Dumps_N <- PRM57* CalcUSA$TotalCarbonOutput * PRO17 * CalcUSA$ParamResults_Q

  for(i in Years){
    if (i==minyr)
      CalcUSA$Dumps_O[1] <-  (1/(1+PRM60))*CalcUSA$Dumps_N[i-(minyr-1)]
    else
      CalcUSA$Dumps_O[i-(minyr-1)] <- (1/(1+PRM60))*(CalcUSA$Dumps_O[i-minyr]+CalcUSA$Dumps_N[i-(minyr-1)])
  }

  CalcUSA$BX <- CalcUSA$TotalCarbonOutput*PRO17

  CalcUSA$CH <- CalcUSA$ParamResults_O*CalcUSA$BX

  CalcUSA$CK <- (1-PRM45)*CalcUSA$CH

  for (i in Years){
    if(i == minyr)
      CalcUSA$CL[1] <- CalcUSA$CK[i-(minyr-1)]
    else
      CalcUSA$CL[i-(minyr-1)] <- CalcUSA$CL[i-minyr] + CalcUSA$CK[i-(minyr-1)]
  }

  for(i in Years){
    if(i == minyr)
      CalcUSA$CT[1] <- CalcUSA$CS[i-(minyr-1)]
    else
      CalcUSA$CT[i-(minyr-1)] <- CalcUSA$CT[i-minyr] + CalcUSA$CS[i-(minyr-1)]
  }

  CalcUSA$C_SWP_StockChange_LFDumps <- sapply(Years, function(y){
    if (y == 1900){
      return((1-PRM45)*CalcUSA$ParamResults_O[y-(minyr-1)] *CalcUSA$TotalCarbonOutput[y-(minyr-1)] *
               PRO17 + (CalcUSA$CM[y-(minyr-1)] ) + CalcUSA$Dumps_O[y-(minyr-1)] )
    }
    else{
      return((1-PRM45)*CalcUSA$ParamResults_O[y-(minyr-1)] *CalcUSA$TotalCarbonOutput[y-(minyr-1)] * PRO17 +
               (CalcUSA$CN[y-(minyr-1)] -CalcUSA$CN[y-minyr]) + (CalcUSA$Dumps_O[y-(minyr-1)] -
                                                                   CalcUSA$Dumps_O[y-minyr]))
    }
  })

  CalcUSA$C_PAPER_StockChange_LFDumps <- CalcUSA$CS+CalcUSA$CX+CalcUSA$Dumps_V

  CalcUSA$TotalC_StockChange_SWDSProduction  <- CalcUSA$C_PAPER_StockChange_LFDumps +
                    CalcUSA$C_SWP_StockChange_LFDumps


  if(totalcarbonstockchange == TRUE){
    return(CalcUSA$TotalC_StockChange_SWDSProduction)
  }
  CalcUSA
}


##########







##############


###########
###########



###########

#########
#########

####

###########


#########


########################################
########################################
########################################
#####################################
#####################################

