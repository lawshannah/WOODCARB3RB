#' Statistics needed for variable 3
#' Calculates intermediate calculations for variable 3:
#' Annual Imports of Wood, and paper products + wood fuel,
#' pulp, recovered paper, roundwood/chips.
#' @param years years to calculate for
#' @param var if true, returns variable 3. if false, returns statistics necessary to calculate variable 3
#' @return if var = FALSE, necessary intermediate calculations for Variable 3
#'         if var = TRUE, returns values for Variable 3 for selected years
calcP_IM <- function(years = 1990:2020, var = FALSE){
  var3 <- data.frame(Years = years)

  uspaper <- calcUSApaper(years)

  var3$usa_O <- 1000 * sapply(years, function(year){
    if (year < 1950){
      return( h3(year, 'LogChipImports.SW') * InceS5 +
              h3(year, 'LogChipImports.HW') * InceT5)
    }
    if (year < 1965){#Y, Z
      return( u5(year, 'Logs.Imports') * InceS5 +
              u6(year, 'Ind.RW.Logs.Imports') * InceT5)
    }
    if (year < 1983){
      return( h6(year, 'Ind.RW.Logs.Imports') * InceS5 +
              h7(year, 'Ind.RW.Logs.Exports') * InceT5)
    }
    if (year < 2021){
      return( h6(year, 'Ind.RW.Logs.Imports') * InceS5 +
              h7(year, 'Ind.RW.Logs.Imports') * InceT5 +
              h6(year, 'Ind.RW.Pulpchip.Imports') * InceS5 +
              h7(year, 'Ind.RW.Pulpchip.Imports') * InceT5)
    }
  })

  var3$Calc_AX <- PRO17 * var3$usa_O

  var3$usa_I <- 1000 * sapply(years, function(year){
    if (year < 1918){
      return(h8(year, 'Imports.Tot') * InceF5)
    }
    if (year < 1950){
      return( (h8(year, 'Imports.SW') + h8(year, 'Imports.Mixed')) * InceF5 +
                (h8(year, 'Imports.HW') * InceG5) )
    }
    if (year < 1965){
      return( (u29(year, 'Imports.SW') * 1000 * InceF5) +
                (u29(year, 'Imports.HW') * 1000 * InceG5))
    }
    if (year < 2021){
      return( (h28(year, 'Imports.SW') * 1000 * InceF5) +
               (h28(year, 'Imports.HW') * 1000 * InceG5))
    }
  })

  var3$Calc_AY <- PRO17 * var3$usa_I

  var3$usa_L <- 1000 * sapply(years, function(year){
    if (year < 1927) {
      return(0)
    }
    if (year < 1935) {
      return( h3t21(year, 'Imports.Tot')/1000 * InceR5)
    }
    if (year < 1950) {
      return( h3t20(year, 'HW.Imports.Tot') * InceE5 +
              h3t21(year, 'Imports.Tot') * InceR5/1000)
    }
    if (year < 1954) {
      return( u36(year, 'Imports.SW') * InceB5 +
               u36(year, 'Imports.HW') * InceE5)
    }
    if (year < 1956) {
      return( u36(year, 'Imports.SW') * InceB5 +
              u36(year, 'Imports.HW') * InceE5 +
              u54(year, 'Hardboard.Import') * InceJ5 +
              u53(year, 'InsulatingBoard.Import') * InceO5)
    }
    if (year < 1963) {
      if (year == 1956 | year == 1959)
        return( u36(year, 'Imports.HW') * InceE5 +
                u54(year, 'Hardboard.Import') * InceJ5 +
                u53(year, 'InsulatingBoard.Import') * InceO5)
      else
        return( u36(year, 'Imports.SW') * InceB5 +
                u36(year, 'Imports.HW') * InceE5 +
                u54(year, 'Hardboard.Import') * InceJ5 +
                u53(year, 'InsulatingBoard.Import') * InceO5)
    }
    if (year < 1965) {
      return( u36(year, 'Imports.SW') * InceB5 +
              u36(year, 'Imports.HW') * InceE5 +
              u52(year, 'Imports') * InceI5 +
              u54(year, 'Hardboard.Import') * InceJ5 +
              u53(year, 'InsulatingBoard.Import') * InceO5)
    }
    if (year < 1980) {
      return(h37(year, 'Imports.SW') * InceB5 +
               h37(year, 'Imports.HW') * InceE5 +
               h53(year, 'Particle_MDF.Imports') * InceI5 +
               h56(year, 'Hardboard.Imports') * InceJ5 +
               h55(year, 'Insulboard.Imports') * InceQ5)###InceP23 doesnt make sense**, Q5 does.
    }
    if (year < 2021) {#these dont match up - formulas for 2019 and 2020 in spreadsheet dont make sense.
      return( h37(year, 'Imports.SW') * InceB5 +
              h38(year, 'Imports.OSP') * InceC5 +
              h37(year, 'Imports.HW') * InceE5 +
              h53(year, 'Particle_MDF.Imports') * InceI5 +
              h56(year, 'Hardboard.Imports') * InceJ5 +
              h55(year, 'Insulboard.Imports') * InceQ5)
    }
  })


  var3$Calc_AZ <- PRO17 * var3$usa_L


  var3$usa_T <- 1000 * IncePaper[years-(minyr-2), 'Paper.Board.Imports'] * InceL5


  var3$Calc_BA <- PRO18 * var3$usa_T * uspaper$`Percent of Wood Pulp For Paper`###SUBSET THIS FOR APPROPRIATE YEARS


  var3$usa_AU <- sapply(years, function(year){
    if (year < 1965)
      return(apiTotal(year, 'WastePaper.Estimated.Imports'))
    if (year < 2021)
      return(h47(year, 'RecPap.Imports') * 1000)
  })


  var3$usa_AQ <- sapply(years, function(year){
    if (year < 1998)
      return(0)
    if (year < 2014)
      return(FibPulp_USA(year,"Imports.Quantity")*.90718)
    if (year < 2021)
      return(FibPulp_USA(2007,"Imports.Quantity")*.90718)
  })


  var3$usa_AX <- uspaper$`Wood Pulp for Paper Imports` + var3$usa_AU + var3$usa_AQ


  var3$Calc_BB <- PRO18 * var3$usa_AX


  var3$variable3 <- 1000 * (var3$Calc_AX+var3$Calc_AY
                + var3$Calc_AZ+var3$Calc_BA + var3$Calc_BB)


  if(var == TRUE){
    return(var3$variable3[var3$Years %in% years])
  }
  else{
    var3[var3$Years %in% years, ]
  }
}

#' Statistics for variable 4
#' @param years years to calculate
#' @param var If true, return only variable 4. If false, return intermediate statistics needed for variable 4
#' @return if var = FALSE, necessary calculations for Variable 4 for selected years
#'         if var = TRUE, returns values for Variable 4 for selected years
calcP_EX <- function(years = 1990:2020, var = FALSE){
  var4 <- data.frame(Years = years)

  uspaper <- calcUSApaper(years)

  ##2008 later refers to empty cells in spreadsheet
  ##these are treated as zeros but could possibly use better estimate of data than zero? howard7a column N
  var4$usa_E <- 1000 * sapply(years, function(year){

    if (year < 1950) {
      return( h3(year, 'LogChipExports.SW') * InceS5 +
              h3(year, 'LogChipExports.HW') * InceT5)
    }

    if (year < 1965) {
      return( u5(year, 'Logs.Exports') * InceS5 +
              u6(year, 'Ind.RW.Logs.Exports') * InceT5)
    }

    if (year < 1990) {
      return( h6(year, 'Ind.RW.Logs.Exports') * InceS5 +
              h7(year, 'Ind.RW.PlyandVen.Exports') * InceT5 +
              h5(year, 'PulpwoodChip.Exports') * InceS5 * (154/(154+117)) +
              h5(year, 'PulpwoodChip.Exports') * InceT5 * (117/(154+117)))
    }

    if (year < 2021) {
      #V, N, X, X
      return( h6(year, 'Ind.RW.Logs.Exports') * InceS5 +
              h7(year, 'Ind.RW.PlyandVen.Exports') * InceT5 +
              h6(year, 'Ind.RW.Pulpchip.Exports') * InceS5 +
              h7(year, 'Ind.RW.Pulpchip.Exports') * InceT5)
      }
  })

  var4$usa_J <- 1000 * sapply(years, function(year){
    if (year == 1900) {
      return((h8(year, 'Exports.Tot') * InceF5))
    }

    if (year < 1950) {
      return( (h8(year, 'Exports.SW') + h8(year,'Exports.Mixed') * InceF5) +
               h8(year, 'Exports.HW') * InceG5)
    }

    if (year < 1965) {
      return( 1000 * (u29(year, 'Exports.SW') * InceF5 +
              u29(year, 'Exports.HW') * InceG5))
    }

    if (year < 2021) {
      return( 1000 * (h28(year, 'Exports.SW') * InceF5 +
              h28(year, 'Exports.HW') * InceG5))
    }

  })

  var4$usa_M <- 1000 * sapply(years, function(year){
    if (year < 1916) {
      return(0)
    }

    if (year < 1925) {
      return(u54(year, 'Hardboard.Exports') * InceJ5)
    }

    if (year == 1925 || year == 1926) {
      return( u54(year, 'Hardboard.Exports') * InceJ5 +
              u53(year, 'InsulatingBoard.Exports') * InceO5)
    }

    if (year < 1940) {
      return( h3t20(year, 'SW.Exports')/1000 * InceB5 +
              (h3t20(year, 'HW.Exports') * InceE5 +
                  h3t21(year, 'Exports.Tot') * InceR5)/1000 +
              u54(year, 'Hardboard.Exports') * InceJ5 +
              u53(year, 'InsulatingBoard.Exports') * InceO5)
    }

    if (year < 1950) {
      return( h3t20(year, 'SW.Exports')/1000 * InceB5 +
                (h3t20(year, 'HW.Exports') +
                     h3t21(year, 'Exports.Tot'))/1000 * InceE5 +
              u54(year, 'Hardboard.Exports') * InceJ5 +
              u53(year, 'InsulatingBoard.Exports') * InceO5)
    }

    if (year < 1965) {
      return( u36(year, 'Exports.SW') * InceB5 +
              u36(year, 'Exports.HW') * InceE5 +
              u54(year, 'Hardboard.Exports') * InceJ5 +
              u53(year, 'InsulatingBoard.Exports') * InceO5)
    }

    if (year < 1991) {
      return( h37(year, 'Exports.SW') * InceB5 +
              h37(year, 'Exports.HW') * InceE5 +
              h53(year, 'Particle_MDF.Exports') * InceI5 +
              h56(year, 'Hardboard.Exports') * InceJ5 +
              h55(year, 'Insulboard.Exports') * InceQ5)
    }

    if (year < 2019) {
      return( h37(year, 'Exports.SW')*InceB5 +
              h38(year, 'Exports.OSP')*InceC5 +
              h37(year, 'Exports.HW')*InceE5 +
              h53(year, 'Particle_MDF.Exports') * InceI5 +
              h56(year, 'Hardboard.Exports') * InceJ5 +
              h55(year, 'Insulboard.Exports') * InceQ5)
    }

    if (year < 2021) {
      return( h37(year, 'Exports.SW') * InceB5 +
              h38(year, 'Exports.OSP') * InceC5 +
              h37(year, 'Exports.HW') * InceE5)
    }

  })

  var4$usa_U <- 1000 * InceL5 * IncePaper[years-(minyr-2),"Paper.Board.ApparentConsumption"]

  var4$usa_AK <- sapply(years, function(year){
    if(year < 1965) {
      return(apiTotal(year, 'Rags.Estimated.Exports'))
    }

    if(year < 2014) {
      return(1000 * h46(year, 'RagsOther.Exports.Estimated'))
    }

    if(year < 2021) {
      return(1000 * h46(2007, 'RagsOther.Exports.Estimated'))
    }
  })

  var4$usa_AO <- sapply(years, function(year){
    if(year < 1965){
      return( apiTotal(year, 'Woodpulp.Exports') +
              apiTotal(year, 'Rags.Estimated.Exports'))
    }

    if(year < 2021){
      return(1000*(h49(year, 'Woodpulp.Exports') +
                     h46(year, 'RagsOther.Exports.Estimated')))
    }
  })

  var4$usa_AF <- var4$usa_AO - var4$usa_AK

  var4$usa_AV <- sapply(years, function(year){
    if(year > 1899 && year < 1965){
      return(apiTotal(year,8))
    }

    if(year > 1964 && year < 2021){
      return(1000*(h47(year,4)))
    }
  })

  #var4$usa_AV[var4$Years %in% 1900:1964] <- apiTotalWoodPulp[years[(years %in% 1900:1964)]-1895, 'WastePaper.Estimated.Exports']
  #var4$usa_AV[var4$Years %in% 1965:2020] <- 1000 * howard47[years[(years %in% 1965:2020)]-1964, 'RecPap.Exports']

  var4$usa_AR <- sapply(years, function(year) {
    if(year < 1998){
      return(0)
    }

    if(year < 2014){
      return(0.90718 * FibPulp_USA(year, 'Exports.Quantity'))
    }

    if(year < 2021){
      return(0.90718 * FibPulp_USA(2007, 'Exports.Quantity'))
    }
  })

  var4$usa_Y <- var4$usa_AF + var4$usa_AV + var4$usa_AR

  var4$Variable4 <- 1000 * (PRO17 * var4$usa_E + PRO17 * var4$usa_J +
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
#' @return Depends on onlyvar, either data frame of intermediate calculations or a vector
#' of values for Annual Domestic Harvest
annualDomesticHarvest <- function(years, onlyvar = FALSE){
  usa <- data.frame(Years = years)

  usa$usa_BO <- 1000 * sapply(years, function(year){
    if (year < 1950){
      return(h3(year, 'Prod.SW') * InceV5)
    }
    if (year < 1965){
      return(u5(year, 'Tot.Imports') * InceV5)
    }
    if (year < 2014){
      return(h6(year, 'Ind.RW.Tot.Prod') * InceV5)
    }
    if (year > 2013 && year < 2051){
      #Why are they using US pop for this?
      return(Ince3(year, 'U.S.Population')* InceV5)
    }
  })

  usa$usa_C <- 1000 * sapply(years, function(year){
    if (year < 1950){
      return( h3(year, 'Prod.SW') * InceV5 +
              h3(year, 'Prod.HW') * InceW5)
    }
    if (year < 1965){
      return( u5(year, 'Tot.Imports') * InceV5 +
              u6(year, 'Ind.RW.Tot.Imports') * InceW5)
    }
    if (year < 2021){
      return( h6(year, 'Ind.RW.Tot.Prod') * InceV5 +
              h7(year, 'Ind.RW.Tot.Prod') * InceW5)
    }
    if (year < 2051){
      return( Ince3(year, 'U.S.Population') * InceV5 +
              Ince3(year, 'Recovered.Paper.Utilization.Rate(AF&PA)') * InceW5)
    }
  })

  usa$Calc_DI <- PRO17 * usa$usa_C

  usa$usa_G <-  1000 * sapply(years, function(year){

    if (year < 1950) {
      return( (u5(1950, "Fuelwood.ProdandConsump") * InceV5 +
                u6(1950,"FuelWood.ProdAndConsumption") * InceW5) / ((u5(1950, "Fuelwood.ProdandConsump") +
                                                                       u6(1950, "FuelWood.ProdAndConsumption") * h3(year, "FuelWood.ApparentConsumption"))))
    }
    if (year < 1965) {
      return( u5(year, "Fuelwood.ProdandConsump") * InceV5 +
              u6(year, "FuelWood.ProdAndConsumption") * InceW5)
    }
    if (year < 2014){
      return( h6(year, 'FuelWood.ProdAndConsumption') * InceV5 +
              h7(year, 'FuelWood.ProdAndConsumption') * InceW5)
    }
    else{
      0
    }
  })

  usa$Calc_DO <- PRO17 * usa$usa_G

  usa$usa_BP <- usa$usa_C - usa$usa_BO

  usa$Calc_DN <- PRO17 * (PRM19 * usa$usa_BO + PRM20 * usa$usa_BP)

  usa$Var5 <- 1000 * (usa$Calc_DI + usa$Calc_DO + usa$Calc_DN)

  if(onlyvar == TRUE){
    return(usa$Var5)
  }
  else{
    return(usa)
  }
}

