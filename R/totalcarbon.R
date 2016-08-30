
#' Title
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
swpcarbontotal <- function(Yrs = 1990:2015, distribution = c("exp", "k=2", "chisquared")){
  type <- match.arg(distribution)


  g <- function(x){ ##gamma function
    ((x^(THETA - 1)) * (exp(-x/K))) / (gamma(THETA) * (K^THETA))
  }

  minyr <- 1900

  Var2_totalC_SWP <- data.frame(Years = Yrs)
  totalEUs <- c(4,9,13) ##these are totals

  for(year in Yrs){
    yearrange <- 1:(year - minyr + 1) #number of years from 1900 to year
    for (eu in 1:16) {

      if (type == "exp") {
        decays <- decay_array[1,eu,, ]
      }

      if (type == "gamma") {
          decays <- 1 - integrate(g, lower=0, upper=p[i])$value
        }
      }

      Var2_totalC_SWP[Var2_totalC_SWP$Year == year, paste("EU",eu,sep="")] <- ifelse(eu %in% totalEUs, 0,
                                                                                     sum(placeIU[yearrange,(eu+1)]*decays*(1-lossIU[yearrange,eu])))

    }
  }
  Var2_totalC_SWP[,"LumberPre1900"] <- lumberpre1900[Yrs - minyr + 1,]
  Var2_totalC_SWP[,"Total Carbon"] <- rowSums(Var2_totalC_SWP[,-1])
  return(Var2_totalC_SWP)

}
