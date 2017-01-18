#' Estimates U.S. HWP contribution to annual greenhouse gas removals.
#'
#' Uses formulas described in WOODCARB II paper to calculate contribution contribution
#' with the HWP variables.
#'
#' Decay type and half life options allow for analysis of contribution levels under
#' different circumstances.
#'
#' The Production Approach focuses on estimating annual carbon stock change in HWP and
#' forests where the carbon is from trees harvested in the reporting country.
#'
#' The Stock Change Approach focuses on estimating annual carbon stock change in HWP and
#' forests in a country regardless of wood origin.
#'
#' The Atmospheric Flow Approach focuses on estimating annual carbon fluxes between
#' the atmosphere and forests/HWPs within a country.
#'
#' @param Years years to return carbon totals for
#' @param approach The approach used to calculate carbon contribution.
#' "Production" approach corresponds to `06 IPCC Tables`$R9 in the WOODCARB II spreadsheet
#' "Stock Change" approach corresponds to `06 IPCC Tables`$P9 in the WOODCARB II spreadsheet
#' "Atmospheric Flow" approach corresponds to `06 IPCC Tables`$Q9 in the WOODCARB II spreadsheet
#' @param decaytype Type of decay method to use
#' @param plot if true, returns a simple plot of time vs. carbon contribution.
#' @param halflives data frame of half lives to use. Must have a column associated with each
#' one of 13 end uses and half life values for 1900 until the maximum year of interest.
#' @return A vector of carbon contributions for all Years. Plot returned is optional
#' All units returned are in Thousand metric tons CO2 Equivalent.
#' @export
#'
#' @examples
#' finalCarbonContribution()
#' finalCarbonContribution(approach = "Stock Change")
#' finalCarbonContribution(approach = "Production",
#'                          decaytype ="Exponential")
finalCarbonContribution <- function(Years = 1990:2015,approach = c("Production",
                                                                   "Stock Change",
                                                                   "Atmospheric Flow"),
                                    decaytype = c("Exponential",
                                                  "K=2"), plot = FALSE,
                                    halflives = halfLives){
  if (missing(approach)){
    approach = "Production"
  }
  approachtype <- match.arg(approach)
  decay<- match.arg(decaytype)

  fvs <- finalVariables(Years, decay, halflives)

  switch(approach,
         Production = (-1*fvs[,"Var2A"]-fvs[,"Var2B"])*44/12,
         `Stock Change` = (-1*fvs[,"Var1A"]-fvs[,"Var1B"])*44/12,
         `Atmospheric Flow` = ((-1*fvs[,"Var1A"]-fvs[,"Var1B"])*44/12)+(fvs[,"Var3"]-fvs[,"Var4"])*44/12
  )

}

#' Calculates the 7 HWP Variables.
#'
#' Returns variables needed to calculate overall contribution.
#'
#' All units are in Gg Carbon
#' Var1A = Annual Change in stock of HWP in use form consumption
#' Var1B = Annual Change in stock of HWP in SWDS from consumption
#' Var2A = Annual Change in stock of HWP in use produced from domestic harvest
#' Var2B = Annual Change in stock of HWP in SWDS produced from domestic harvest
#' Var3 = Annual Imports of wood, paper products, wood fuel, pulp, recovered paper, roundwood/chips
#' Var4 = Annual Exports of wood, paper products, wood fuel, pulp, recovered paper, roundwood/chips
#' Var5 = Annual Domestic Harvest
#' Var6 = Annual release of carbon to the atmosphere from HWP consumption (from fuelwood & products
#' in use and products in SWDS)
#' Var 7 = Annual release of carbon to the atmosphere from HWP (including fuelwood) where wood came from
#' domestic harvest (from products in use and products in SWDS)
#'
#' @param Years years to calculate
#' @param decaydistribution decay distribution to use. Defaults to exponential distribution.
#' @param halflives data frame of half lives to use. Must have a column associated with each
#' one of 13 end uses and half life values for 1900 until the maximum year of interest.
#'
#' @return a data frame with nine columns (Variables 1 and 2 have two parts each).
#' If the decay distribution is exponential then the data frame returned will correspond
#' to table containing final variables: `06 IPCC Tables` in the WOODCARB II spreadsheet.
#' @export
#'
#' @examples
#' finalVariables(Years = 1950:2000)
#' finalVariables(halflives = halfLives * 1.25)
finalVariables <- function(Years = 1990:2015,
                           decaydistribution = c("Exponential", "K=2"),
                           halflives = halfLives){
  decay <- match.arg(decaydistribution)

  Var1A <- (swp_carbon_stockchange(Years, approach = "Stock Change",
                                   decaydistribution = decay,
                                   halflives = halflives) +
              paper_carbon_stockchange(Years,
                                       approach = "Stock Change")) * 1000
  Var1B <- carbonfromdumps(Years, approach = "Stock Change")  * 1000
  Var2A <- (swp_carbon_stockchange(Years, approach = "Production",
                                   decaydistribution = decay,
                                   halflives = halflives) +
              paper_carbon_stockchange(Years,
                                       approach = "Production")) * 1000
  Var2B <- carbonfromdumps(Years, approach = "Production") *  1000
  Var3  <- calcP_IM(Years, var = TRUE)
  Var4  <- calcP_EX(Years, var = TRUE)
  Var5 <- annualDomesticHarvest(Years, onlyvar = TRUE)

  df <- data.frame(Var1A, Var1B,
                   Var2A, Var2B,
                   Var3, Var4,
                   Var5)

}

#' Calculates changes in carbon stock from solid wood products.
#' Units are in Tg Carbon.
#' For production approach, values correspond to `Calculation$BY` in the spreadsheet.
#' For stock change approach, values correspond to `Calculation$H` in the spreadsheet.
#'
#' @param years years to return carbon totals for
#' @param approach approach type used to calculate
#' @param decaydistribution type of decay distribution to use
#' @param halflives data frame of half lives to use. Must have a column associated with each
#' one of 13 end uses and half life values for 1900 until the maximum year of interest.
#'
#' @return A vector of swp carbon stock changes for `years`
#'
#' @examples
#' \dontrun{
#' swp_carbon_stockchange(1990:2000)
#' swp_carbon_stockchange(1950:1975, approach = "Stock Change", decaydistribution = "K=2")
#' }
swp_carbon_stockchange <- function(years, approach = c("Production", "Stock Change"),
                                   decaydistribution = c("Exponential",
                                                         "K=2"),
                                   halflives = halfLives){
  approach <- match.arg(approach)
  decay <- match.arg(decaydistribution)

  if(min(years) == minyr){
    index <- minyr:max(years)
  }
  else{
    index <- (min(years)-1):max(years)
  }

  totals <- swpcarbontotal(Yrs = index, approach = approach, distribution = decay,
                           halflives = halflives)
  #return(totals)
  changeinstock <- (totals[2:length(totals)] - totals[1:length(totals)-1])*PRO17
  return(changeinstock)

}

#' Calculates changes in carbon stock from paper.
#' Units are in Tg Carbon.
#' For production approach, values correspond to `Calculation$CC` in the spreadsheet.
#' For stock change approach, values correspond to `Calculation$L` in the spreadsheet.
#'
#' @param years years to return carbon totals for
#' @param approach The approach used to calculate carbon contribution.
#'
#' @return A vector of paper carbon stock changes for `years`
#'
#' @examples
#' \dontrun{
#' paper_carbon_stockchange(1990:2000)
#' paper_carbon_stockchange(1950:1975, approach = "Stock Change")
#' }
paper_carbon_stockchange <- function(years, approach = c("Production", "Stock Change")){
  USA <- calcUSApaper()
  approach = match.arg(approach)
  calcpaper <- function(years, CarbonInputFlowFromPaper){

    papercarbon <- numeric(length(minyr:max(years)))
    for(year in minyr:max(years)){ #Total carbon in paper for year y in Tg C/yr
      if(year == minyr){
        papercarbon[year-(minyr-1)] <- exp(-log(2)/PRP10)*CarbonInputFlowFromPaper[year-(minyr-1)]
      }
      else{
        papercarbon[year-(minyr-1)] <- exp(-log(2)/PRP10)*(CarbonInputFlowFromPaper[year-(minyr-1)]+
                                                             papercarbon[year-1900])
      }
    }
    #return(papercarbon)
    if(min(years) == minyr){
      index <- minyr:max(years)
    }
    else{
      index <- (min(years)-1):max(years)
    }

    totals <- papercarbon[index-(minyr-1)]

    return(totals[2:length(totals)] - totals[1:length(totals)-1])
  }

  if (approach == "Production"){
    return(calcpaper(years, USA$`Production Approach-C Input from Paper Products(Calc BU)`))
  }

  if (approach == "Stock Change"){
    return(calcpaper(years, USA$CarbonInputFlowPaperStockChange))
  }
}
