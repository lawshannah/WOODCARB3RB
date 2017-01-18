#' Statistics needed for variable 3
#' Calculates intermediate calculations for variable 3:
#' Annual Imports of Wood, and paper products + wood fuel,
#' pulp, recovered paper, roundwood/chips.
#'
#' @param years years to calculate for
#' @param var if true, returns variable 3. if false, returns statistics necessary to calculate variable 3
#'
#' @return if var = FALSE, necessary intermediate calculations for Variable 3
#'         if var = TRUE, returns values for Variable 3 for selected years
calcP_IM <- function(years = 1990:2020, var = FALSE){
  var3 <- data.frame(Years = yrs)

  uspaper <- calcUSApaper()

  var3$usa_O <- sapply(yrs, function(year){
    if (year < 1950){
      return((h3(year,7)*InceS5+h3(year,9)*InceT5)*1000)
    }
    if (year < 1965){#Y, Z
      return((u5(year,20)*InceS5+u6(year,20) * InceT5) * 1000)
    }
    if (year < 1983){
      return((h6(year,20)*InceS5+h7(year,21) * InceT5) * 1000)
    }
    if (year < 2021){
      return((h6(year,20)*InceS5+h7(year,20)*InceT5+h6(year,22) * InceS5 + h7(year,22) * InceT5) * 1000)
    }
  })

  var3$Calc_AX <- PRO17 * var3$usa_O

  var3$usa_I <- sapply(yrs, function(year){
    if (year < 1918){
      return(h8(year, 4) * InceF5 * 1000)
    }
    if (year < 1950){
      return(((h8(year,5) + h8(year,7)) * InceF5 + (h8(year,6) * InceG5)) * 1000)
    }
    if (year < 1965){
      return(((u29(year, 5) * 1000*InceF5) + (u29(year, 6) * 1000 * InceG5)) * 1000)
    }
    if (year < 2021){
      ((h28(year, 5)*1000*InceF5)+(h28(year, 6)*1000*InceG5))*1000
    }
  })

  var3$Calc_AY <- PRO17 * var3$usa_I

  var3$usa_L <- sapply(yrs, function(year){
    if (year < 1927)
      return(0)
    if (year < 1935)
      return((h3t21(year,1)/1000)*InceR5*1000)
    if (year < 1950)
      return(((h3t20(year,3)*InceE5 +h3t21(year,1)*InceR5)/1000)*1000)
    if (year < 1954)
      return(((u36(year, 5)*InceB5)+(u36(year, 6)*InceE5))*1000)
    if (year < 1956)
      return(((u36(year, 5) * InceB5) + (u36(year,6) * InceE5) + (u54(year,2) * InceJ5) + (u53(year,2) * InceO5)) * 1000)
    if (year < 1963)
      if (year == 1956 | year == 1959)
        return(((u36(year, 6)*InceE5)+(u54(year, 2)*InceJ5)+(u53(year, 2)*InceO5))*1000)
      else ##
        return(((u36(year, 5)*InceB5)+(u36(year, 6)*InceE5)+(u54(year, 2)*InceJ5)+(u53(year, 2)*InceO5))*1000)
    if (year < 1965)
      return(((u36(year, 5)*InceB5)+(u36(year, 6)*InceE5)+(u52(year, 4)*InceI5)+(u54(year, 2)*InceJ5)+(u53(year, 2)*InceO5))*1000)
    if (year < 1980)
      return(((h37(year,5)*InceB5)+(h37(year,6)*InceE5)+(h53(year,4)*InceI5)+(h56(year,2)*InceJ5)+h55(year,2)*InceQ5)*1000)###InceP23 doesnt make sense**, Q5 does.
    if(year < 2021)#these dont match up - formulas for 2019 and 2020 in spreadsheet dont make sense.
      return(((h37(year,5)*InceB5)+(h38(year,6)*InceC5)+(h37(year, 6)*InceE5)+(h53(year,4)*InceI5)+(h56(year,2)*InceJ5)+h55(year, 2)*InceQ5)*1000)
  })

  var3$Calc_AZ <- PRO17 * var3$usa_L

  var3$usa_T <- IncePaper[yrs-(minyr-2),2]*1000*InceL5


  var3$Calc_BA <- PRO18* var3$usa_T * uspaper$`Percent of Wood Pulp For Paper`


  var3$usa_AU <- sapply(yrs, function(year){
    if (year < 1965)
      return(apiTotal(year,7))
    if (year < 2021)
      return(h47(year,5)*1000)
  })


  var3$usa_AQ <- sapply(yrs, function(year){
    if (year < 1998)
      return(0)
    if (year < 2014)
      return(FibPulp_USA(year,"Imports.Quantity")*.90718)
    if (year < 2021)
      return(FibPulp_USA(2007,"Imports.Quantity")*.90718)
  })

  var3$usa_AX <- uspaper$`Wood Pulp for Paper Imports`+
    var3$usa_AU+var3$usa_AQ

  var3$Calc_BB <- PRO18 * var3$usa_AX

  var3$variable3 <- (var3$Calc_AX+var3$Calc_AY
                + var3$Calc_AZ+var3$Calc_BA + var3$Calc_BB)*1000
  #return(var3$usa_L[var3$Years %in% 2015:2020])
  if(var == TRUE){
    return(var3$variable3[var3$Years %in% years])
  }
  else{
    var3[var3$Years %in% years, ]
  }
}

#' Statistics for variable 4
#'
#' @param years years to calculate
#' @param var If true, return only variable 4. If false, return intermediate statistics needed for variable 4
#'
#' @return if var = FALSE, necessary calculations for Variable 4 for selected years
#'         if var = TRUE, returns values for Variable 4 for selected years
calcP_EX <- function(years = 1990:2020, var = FALSE){
  var4 <- data.frame(Years = yrs)

  uspaper <- calcUSApaper()

  ##2008 later refers to empty cells in spreadsheet
  ##these are treated as zeros but could possibly use better estimate of data than zero? howard7a column N
  var4$usa_E <- sapply(yrs, function(year){
    if(year < 1950){
      return(1000 *((h3(year, 8) * InceS5) + (h3(year, 10) * InceT5)))
    }

    if(year < 1965){
      return(1000 * ((u5(year, 21) * InceS5) + (u6(year, 22) * InceT5)))}

    if(year < 1990){
      return(1000 * ((h6(year, 21)*InceS5) + (h7(year, 13) * InceT5)
                     + ((h5(year, 23)*InceS5)*(154/(154+117)))
                     + ((h5(year, 23)*InceT5)*(117/(154+117)))))}

    if(year < 2021){
      return(1000 * ((h6(year, 21)*InceS5) + (h7(year, 13) * InceT5)
                     + ((h6(year, 23)*InceS5))
                     + ((h7(year, 23)*InceT5))))}
  })

  var4$usa_J <- sapply(yrs, function(year){
    if (year == 1900){
      return(1000*(h8(year, 13) * InceF5))}

    if(year >1900 && year < 1950){
      return(1000*(((h8(year, 14) + (h8(year,16))) * InceF5) + (h8(year,15) * InceG5)))
    }

    if(year > 1949 && year < 1965){
      return(1000*((u29(year, 8) * 1000 * InceF5) + (u29(year, 9) * 1000 * InceG5)))}

    if(year > 1964 && year < 2021){
      return(1000*((h28(year, 8) * 1000 * InceF5) + (h28(year, 9) * 1000 * InceG5)))}

  })

  var4$usa_M <- sapply(yrs, function(year){
    if(year < 1916){
      return(0)
    }

    if(year < 1925){
      return(1000*u54(year, 3)*InceJ5)
    }

    if(year == 1925 || year == 1926){
      return(((u54(year, 3)*InceJ5)+(u53(year, 3)*InceO5))*1000)
    }

    if(year < 1940){
      return(1000*((h3t20(year, 7)/1000*InceB5) + (((h3t20(year,8)*InceE5) + (h3t21(year,4)*InceR5))/1000) + (u54(year,3)*InceJ5) + (u53(year,3)*InceO5)))
    }

    if(year < 1950){
      return(1000*(((h3t20(year, 7)/1000)*InceB5) + (((h3t20(year,8) + (h3t21(year,4)))/1000)*InceE5) + (u54(year, 3)*InceJ5) + (u53(year,3)*InceO5)))
    }

    if(year < 1965){
      return(1000*((u36(year, 8)*InceB5) + (u36(year, 9)*InceE5) + (u54(year, 3)*InceJ5) + (u53(year, 3)*InceO5)))
    }

    if(year < 1991){
      return(1000*((h37(year, 8)*InceB5) + (h37(year, 9)*InceE5) + (h53(year, 5)*InceI5) + (h56(year, 3)*InceJ5) + (h55(year, 3)*InceQ5)))
    }

    if(year < 2019){
      return(1000*((h37(year, 8)*InceB5) + (h38(year, 9)*InceC5) + (h37(year, 9)*InceE5) + (h53(year, 5)*InceI5) + (h56(year, 3)*InceJ5) + (h55(year, 3)*InceQ5)))
    }

    if(year < 2021){
      return(1000*((h37(year, 8)*InceB5) + (h38(year, 9)*InceC5) + (h37(year, 9)*InceE5)))
    }

  })

  var4$usa_U <- 1000 * InceL5 * IncePaper[yrs-(minyr-2),"Paper.Board.ApparentConsumption"]

  var4$usa_AK <- sapply(yrs, function(year){
    if(year >1899 && year <1965){
      return(apiTotal(year,11)) #was year - 1
    }

    if(year > 1964 && year < 2014){
      return(1000*h46(year,13))
    }

    if(year > 2013 && year < 2021){
      return(1000*h46(2007,13))
    }
  })

  var4$usa_AO <- sapply(yrs, function(year){
    if(year > 1899 && year < 1965){
      return(apiTotal(year,3) + apiTotal(year,11))
    }

    if(year > 1964 && year < 2021){
      return(1000*(h49(year,4) + h46(year,13)))
    }
  })

  var4$usa_AF <- var4$usa_AO - var4$usa_AK

  # var4$usa_AV <- sapply(yrs, function(year){
  #   if(year > 1899 && year < 1965){
  #     return(apiTotal(year,8))
  #   }
  #
  #   if(year > 1964 && year < 2021){
  #     return(1000*(h47(year,4)))
  #   }
  # })

  var4$usa_AV[var4$Years %in% 1900:1964] <- apiTotalWoodPulp[(1900:1964)-1895,8]
  var4$usa_AV[var4$Years %in% 1965:2020] <- 1000 * howard47[(1965:2020)-1964,4]

  var4$usa_AR <- sapply(yrs, function(year){
    if(year < 1998){return(0)}

    if(year > 1997 && year < 2014){
      return(0.90718 * FibPulp_USA(year, 3))
    }
    if(year > 2013 && year < 2021){
      return(0.90718 * FibPulp_USA(2007, 3))
    }
  })

  var4$usa_Y <- var4$usa_AF + var4$usa_AV + var4$usa_AR
  #return(var4[var4$Years %in% years, c("usa_Y", "usa_E", "usa_J", "usa_M", "usa_U")])
  var4$Variable4 <- 1000 * (PRO17*var4$usa_E + PRO17 * var4$usa_J +
                                    PRO17 * var4$usa_M + PRO18 * var4$usa_U * uspaper$`Percent of Wood Pulp For Paper` +
                                    PRO18 * var4$usa_Y)
  if(var == TRUE){
    return(var4$Variable4[var4$Years %in% years])
  }
  else{
    var4[var4$Years %in% years, ]
  }
}

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

