#' Calculates total carbon left in Yrs
#'
#' Calculates carbon per end use and total carbon in solidwood products.
#'
#' @param Yrs years to calculate carbon totals for
#' @param distribution type of decay distribution
#' @param THETA optional value for other decay (will update with decay array next)
#' @param K optional value for other decay (will update with decay array next)
#'
#' @return returns either only total for all end uses or total by enduses with option of lumberpre1900
#' @export
#'
#' @examples
#' swpcarbontotal(onlytotal=FALSE)
#' swpcarbontotal(1950:1975, approach = "Stock Change")
swpcarbontotal <- function(Yrs = 1990:2015, distribution = c("Exponential", "Gamma"), THETA, K,
                           onlytotal=TRUE, lumberpre = TRUE, approach = c("Production",
                                                                          "Stock Change"),
                           halflives = halfLives){
  type <- match.arg(distribution)
  approachtype <- match.arg(approach)
  placeIU <- calcplacediu(total = FALSE, approach = approachtype)

  #if(type == "Gamma")

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


