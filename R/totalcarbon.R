#' Calculates total carbon left in Yrs
#'
#' Calculates carbon per end use and total carbon in solidwood products.
#'
#' ALl units returned are in od tons of wood fiber.
#' If "onlytotal" is false, total carbon is returned for each one of the 13 end uses.
#' If "onlytotal" is true, the totals are summed up and one total is returned. test
#'
#' This corresponds to the `SWCalcP$H4389` column in the WOODCARB spreadsheet.
#' @param Yrs years to calculate carbon totals for
#' @param distribution type of decay distribution
#' @param onlytotal return total carbon or totals by end uses
#' @param lumberpre whether to include carbon from lumber before 1900 in totals
#' @param approach approach type to use to calculate
#' @param halflives data frame of half lives for end uses. Default half lives are used but
#' a data frame with 13 columns with half lives for the appropriate years can be used.
#'
#' @return returns either only total for all end uses or total by enduses with option of lumberpre1900
#' @export
#'
#' @examples
#' swpcarbontotal(onlytotal=FALSE)
#' swpcarbontotal(1950:1975, approach = "Stock Change")
swpcarbontotal <- function(Yrs = 1990:2015, distribution = c("Exponential", "K=2"),
                           onlytotal=TRUE, lumberpre = TRUE, approach = c("Production",
                                                                          "Stock Change"),
                           halflives = halfLives){
  type <- match.arg(distribution)#test
  approachtype <- match.arg(approach)
  placeIU <- calcplacediu(total = FALSE, approach = approachtype)



  g <- function(x){ ##gamma functionf
    ((x^(THETA - 1)) * (exp(-x/K))) / (gamma(THETA) * (K^THETA))
  }

  Var2_totalC_SWP <- data.frame(Years = Yrs)

  if (type == "K=2"){
    decayarray <- calculatedecay()
  }
  for(year in Yrs){
    yearrange <- 1:(year - minyr + 1) #number of years from 1900 to year
    for (eu in 1:13) {
      if (type == "Exponential") {
        decays <- exp(-log(2)/halflives[yearrange,eu]*rev(yearrange))
      }

      if (type == "K=2"){

        decays <- decayarray[2,eu,yearrange,year - minyr + 1]

      }
      Var2_totalC_SWP[Var2_totalC_SWP$Year == year, paste("EU",eu,sep="")] <- sum(placeIU[yearrange,eu]*decays
                                                                                  *(1 - lossIU[yearrange,1]))

    }
  }

  Var2_totalC_SWP[,"LumberPre1900"] <- lumberpre1900[Yrs - minyr + 1,]
  Var2_totalC_SWP[,"Total Carbon"] <- rowSums(Var2_totalC_SWP[,-1])
  if(onlytotal == TRUE && lumberpre == FALSE){
    return(Var2_totalC_SWP$`Total Carbon` - Var2_totalC_SWP$LumberPre1900)
  }
  else if (onlytotal == TRUE){
    return(Var2_totalC_SWP$`Total Carbon`)
  }
  else{
    Var2_totalC_SWP
  }
}


