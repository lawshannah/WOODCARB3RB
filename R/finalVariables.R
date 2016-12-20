#' Calculate final carbon contribution to AFOLU.
#' All units returned are in Thousand metric tons CO2 Equivalent
#'
#' The 'Production' approach corresponds to `06 IPCC Tables`$R9 in the WOODCARB spreadsheet
#' The 'Stock Change' approach corresponds to `06 IPCC Tables`$P9 in the WOODCARB spreadsheet
#'
#' The plot argument returns a simple plot of time vs. carbon contribution.
#'
#' @param Years years to return carbon totals for
#' @param approach The approach used to calculate carbon contribution.
#' @param decaytype Type of decay method to use
#' @param plot whether to return a plot or not
#' @param halflives data frame of half lives to use
#'
#' @return A vector of carbon contributions for all Years. Plot returned is optional
#' @export
#'
#' @examples
#' finalCarbonContribution()
#' finalCarbonContribution(approach = 'Stock Change')
#' finalCarbonContribution(approach = 'Production',
#'                          decaytype ='Exponential')
finalCarbonContribution <- function(Years = 1990:2015, approach = c("Production", 
    "Stock Change"), decaytype = c("Exponential", "K=2"), plot = FALSE, 
    halflives = halfLives) {
    approachtype <- match.arg(approach)
    decay <- match.arg(decaytype)
    
    if (approachtype == "Production" | approachtype == "Stock Change") {
        
        vara <- (SWP_CARBON_STOCKCHANGE(Years, approach = approachtype, 
            decaydistribution = decay, halflives = halflives) + PAPER_CARBON_STOCKCHANGE(Years, 
            approach = approachtype)) * 1000
        
        varb <- carbonfromdumps(Years, approach = approachtype) * 1000
        
        CarbonContribution <- (-1 * vara - varb) * 44/12
        
        if (plot == TRUE) {
            # gdf <- data.frame(Years = Years, CarbonContribution =
            # (-1*var2a-var2b)*44/12) ggplot(gdf, aes(x=Years, y =
            # CarbonContribution)) + geom_line()
            
            plot(Years, CarbonContribution, type = "l", col = "red", 
                main = paste("Hwp Contribution to AFOLU Using", approachtype, 
                  "Approach"), ylab = "CarbonContribution(Gg CO2/Yr)")
            return(CarbonContribution)
        }
        return(CarbonContribution)
    }
    
}

#' Values for final 7 variables.
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
#' @param Variable variable to return
#' @param decaydistribution decay distribution to use (if necessary)
#' @param halflives half-lives for calculation (if necessary)
#'
#' @return a numeric vector of values for the selected variable for `Years`
#' @export
#'
#' @examples
#' finalVariables(Variable = 'Var1A')
#' finalVariables(Variable = 'Var2B')
finalVariables <- function(Years = 1990:2015, Variable = paste("Var", 
    c("1A", "1B", "2A", "2B", "3", "4", "5", "6", "7"), sep = ""), decaydistribution = c("Exponential", 
    "K=2"), halflives = halfLives) {
    decay = match.arg(decaydistribution)
    switch(Variable, Var1A = (SWP_CARBON_STOCKCHANGE(Years, approach = "Stock Change", 
        decaydistribution = decay, halflives = halflives) + PAPER_CARBON_STOCKCHANGE(Years, 
        approach = "Stock Change")) * 1000, Var1B = carbonfromdumps(Years, 
        approach = "Stock Change") * 1000, Var2A = (SWP_CARBON_STOCKCHANGE(Years, 
        approach = "Production", decaydistribution = decay, halflives = halflives) + 
        PAPER_CARBON_STOCKCHANGE(Years, approach = "Production")) * 
        1000, Var2B = carbonfromdumps(Years, approach = "Production") * 
        1000)
    
}

#' Calculates changes in carbon stock from solid wood products.
#' Units are in Tg Carbon.
#' For production approach, values correspond to `Calculation$BY` in the spreadsheet.
#' For stock change approach, values correspond to `Calculation$H` in the spreadsheet.
#'
#' @param years years to return carbon totals for
#' @param approach The approach used to calculate carbon contribution.
#' @param decaydistribution Type of decay method to use
#' @param halflives data frame of half lives to use
#'
#' @return A vector of swp carbon stock changes for `years`
#' @export
#'
#' @examples
#' \dontrun{
#' SWP_CARBON_STOCKCHANGE(1990:2000)
#' SWP_CARBON_STOCKCHANGE(1950:1975, approach = 'Stock Change', decaydistribution = 'K=2')
#' }
SWP_CARBON_STOCKCHANGE <- function(years, approach = c("Production", 
    "Stock Change"), decaydistribution = c("Exponential", "K=2"), halflives = halfLives) {
    approach <- match.arg(approach)
    decay <- match.arg(decaydistribution)
    
    if (min(years) == minyr) {
        index <- minyr:max(years)
    } else {
        index <- (min(years) - 1):max(years)
    }
    
    totals <- swpcarbontotal(Yrs = index, approach = approach, distribution = decay, 
        halflives = halflives)
    # return(totals)
    changeinstock <- (totals[2:length(totals)] - totals[1:length(totals) - 
        1]) * PRO17
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
#' @export
#'
#' @examples
#' \dontrun{
#' PAPER_CARBON_STOCKCHANGE(1990:2000)
#' PAPER_CARBON_STOCKCHANGE(1950:1975, approach = 'Stock Change')
#' }
PAPER_CARBON_STOCKCHANGE <- function(years, approach = c("Production", 
    "Stock Change")) {
    USA <- calcUSApaper()
    approach = match.arg(approach)
    calcpaper <- function(years, CarbonInputFlowFromPaper) {
        
        papercarbon <- numeric(length(minyr:max(years)))
        for (year in minyr:max(years)) {
            # Total carbon in paper for year y in Tg C/yr
            if (year == minyr) {
                papercarbon[year - (minyr - 1)] <- exp(-log(2)/PRP10) * 
                  CarbonInputFlowFromPaper[year - (minyr - 1)]
            } else {
                papercarbon[year - (minyr - 1)] <- exp(-log(2)/PRP10) * 
                  (CarbonInputFlowFromPaper[year - (minyr - 1)] + papercarbon[year - 
                    1900])
            }
        }
        # return(papercarbon)
        if (min(years) == minyr) {
            index <- minyr:max(years)
        } else {
            index <- (min(years) - 1):max(years)
        }
        
        totals <- papercarbon[index - (minyr - 1)]
        
        return(totals[2:length(totals)] - totals[1:length(totals) - 
            1])
    }
    
    if (approach == "Production") {
        return(calcpaper(years, USA$`Production Approach-C Input from Paper Products(Calc BU)`))
    }
    
    if (approach == "Stock Change") {
        return(calcpaper(years, USA$CarbonInputFlowPaperStockChange))
    }
}



