#' Calculate total carbon in solidwood products.
#'
#' Calculates total carbon and carbon by end use in solidwood products. Capable of
#' calculating carbon totals with different approaches, halflives, and decay distributions.
#'
#' All units returned are in od tons of wood fiber.
#'
#' @param Yrs years to calculate totals for.
#' @param distribution type of decay distribution.
#' @param onlytotal
#' if false, total carbon is returned for each one of the 13 end uses.
#' if true, one total is summed and returned
#' @param lumberpre if false, carbon from lumber before 1900 is excluded from totals
#' @param approach approach type to use to calculate.
#' If onlytotal is false then the data returned won't correspond to data in WOODCARB II
#' If onlytotal is true:
#' For production approach, the data returned corresponds to the `SWCalcP$H4389` column in WOODCARB II.
#' For stock change approach, the data returned corresponds to the `SWCalc$H4389` column in WOODCARB II.
#' @param halflives data frame of half lives for end uses. Default half lives are used but
#' a data frame with 13 columns with half lives for the appropriate years can be used.
#'
#' @return Output is either a data frame with 13 columns or 1 column based on the onlytotal argument
#' @export
#'
#' @examples
#' swpcarbontotal(onlytotal=FALSE)
#' swpcarbontotal(1950:1975, approach = "Stock Change")
swpcarbontotal <- function(Yrs = 1990:2015, distribution = c("Exponential", "K=2"),
                           onlytotal=TRUE, lumberpre = TRUE, approach = c("Production",
                                                                          "Stock Change"),
                           halflives = halfLives){

  type <- match.arg(distribution)
  approachtype <- match.arg(approach)
  placeIU <- calcplacediu(total = FALSE, approach = approachtype)


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
                                                                                  *(1 - lossIU[yearrange,eu]))


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


