#' Carbon Stock Change of Solidwood Products
#'
#' @param year the year to calculate stock change for
#' @param distribution the decay distribution to be used in the calculation
#'
#' @return Stock changes for years
#'
#'
#' @examples
Var2_C_SWP_STOCKCHANGE <- function(years,
                                   decaydistribution = c("Exponential",
                                                         "Gamma")){
  decay <- match.arg(decaydistribution)
  c <- numeric(length(years))
  for(i in years){
    c[i-(min(years)-1)] <- (swpcarbontotal(Yrs = i, distribution = decay) -
                              swpcarbontotal(Yrs = (i-1), distribution = decay)) * PRO17
  }
  return(c)
}

#' Title
#'
#' @param year
#' @param decaydistribution
#'
#' @return
#'
#'
#' @examples
Var1_C_SWP_STOCKCHANGE <- function(years,
                                   decaydistribution = c("Exponential",
                                                          "Gamma")){
  decay <- match.arg(decaydistribution)
  c <- numeric(length(years))
  for(year in years){
    c[year-(min(years)-1)] <- (swpcarbontotal(Yrs = year, distribution = decay, approach = "Stock Change") -
                              swpcarbontotal(Yrs = (year-1), distribution = decay,
                                             approach = "Stock Change")) * PRO17
  }
  return(c)
}


#' swpcarbontotal
#'
#' Calculates carbon per end use and total carbon in solidwood products.
#'
#' @param Yrs years to calculate carbon totals for
#' @param distribution type of decay distribution
#' @param THETA
#' @param K
#'
#' @return
#' @export
#'
#' @examples
swpcarbontotal <- function(Yrs = 1990:2015, distribution = c("Exponential", "Gamma"), THETA, K,
                           onlytotal=TRUE, lumberpre = TRUE, approach = c("Production",
                                                                          "Stock Change"),
                           halflives = halfLives){
  type <- match.arg(distribution)
  approachtype <- match.arg(approach)
  placeIU <- calcplacediu(total = FALSE, approach = approachtype)

  g <- function(x){ ##gamma functionf
    ((x^(THETA - 1)) * (exp(-x/K))) / (gamma(THETA) * (K^THETA))
  }
minyr <- 1900
  Var2_totalC_SWP <- data.frame(Years = Yrs)
  totalEUs <- c(4,9,13) ##these are totals

  for(year in Yrs){
    yearrange <- 1:(year - minyr + 1) #number of years from 1900 to year
    for (eu in 1:16) {
      if (type == "Exponential") {
        decays <- exp(-log(2)/halflives[yearrange,eu]*rev(yearrange))
      }

      if (type == "Gamma") {
        p<-0 #not exactly sure what this is

        decays <- numeric(length(yearrange))
        for (i in yearrange){
          if (missing(K)){
            K <- findKorTHETAforGamma(halflife = halflives[i - 1899, eu], theta = THETA)
          }

          if(missing(THETA)) {
            THETA <- findKorTHETAforGamma(halflife = halflives[i - 1899, eu], k = K)
          }

          p[i+1]<-p[i]+1 ##this part still confused about, why not just use i instead of setting first val to 0. Signifies no years passed?
          decays[i]<- 1 - integrate(g, lower=0, upper=p[i])$value
        }
      }
      Var2_totalC_SWP[Var2_totalC_SWP$Year == year, paste("EU",eu,sep="")] <- ifelse(eu %in% totalEUs, 0,
                                                                                     sum(placeIU[yearrange,(eu+1)]*decays
                                                                                         *(1 - lossIU[yearrange, eu])))
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


