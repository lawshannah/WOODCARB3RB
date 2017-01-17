#' Annual Domestic Harvest
#'
#' Various statistics and intermediate calculations to solve for
#' Variable 5, Annual Domestic Harvest (H)
#' @param years years to calculate statistics for
#' @param onlyvar If true, only the variable 5 will be returned.
#' If false, other calculations needed to produce variable 5 will be returned
#'
#' @return Depends on onlyvar, either data frame of intermediate calculations or a vector
#' of values for Annual Domestic Harvest
annualDomesticHarvest <- function(years, onlyvar = FALSE){
  usa <- data.frame(Years = years)

  usa$usa_BO <- 1000 * sapply(years, function(year){
    if (year < 1950){
      return(h3(year, 5)* InceV5)
    }
    if (year > 1949 && year < 1965){
      return(u5(year, 4) * InceV5)
    }
    if (year > 1964 && year < 2014){
      return(h6(year, 3) * InceV5)
    }
    if (year > 2013 && year < 2051){
      return(Ince3(year, 10)* InceV5)
    }
  })

  usa$usa_C <- 1000 * sapply(years, function(year){
    if (year < 1950){
      return(h3(year, 5)*InceV5 + h3(year, 6) * InceW5)
    }
    if (year < 1965){
      return(u5(year, 4)*InceV5 + u6(year, 4)*InceW5)
    }
    if (year < 2021){
      return(h6(year, 3)*InceV5 + h7(year, 3)*InceW5)
    }
    if (year < 2051){
      return(Ince3(year,10)*InceV5) +(Ince3(year,9) * InceW5)
    }
  })

  usa$Calc_DI <- PRO17*usa$usa_C

  usa$usa_G <-  1000 * sapply(years, function(year){

    if (year < 1950){
      #AB,AB,AB,AB,AM
      return((u5(1950, "Fuelwood.ProdandConsump")*InceV5+ u6(1950,"FuelWood.ProdAndConsumption") *InceW5) / ((u5(1950, "Fuelwood.ProdandConsump")+ u6(1950, "FuelWood.ProdAndConsumption") * h3(year, "FuelWood.ApparentConsumption"))))
    }
    if (year < 1965){
      return(u5(year, "Fuelwood.ProdandConsump") * InceV5 + u6(year, "FuelWood.ProdAndConsumption") * InceW5)
    }
    if (year < 2014){
      return(h6(year, 24) * InceV5 + h7(year, 24)* InceW5)
    }
    else{
      0
    }
  })
  #print(usa)

  usa$Calc_DO <- PRO17*usa$usa_G

  usa$usa_BP <- usa$usa_C- usa$usa_BO

  usa$Calc_DN <- PRO17*(PRM19 * usa$usa_BO + PRM20 * usa$usa_BP)

  usa$Var5 <- (usa$Calc_DI+usa$Calc_DO
               + usa$Calc_DN)*1000
  if(onlyvar == TRUE){
    return(usa$Var5)
  }
  else{
    return(usa)
  }
}
