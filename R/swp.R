#' Solidwood products statistics
#'
#' Various production, imports and export data for different wood product types.
#' 21 columns in SWPcalcdata that are used to calculate production and stock change approach.
#'
#' @return Data frame of Roundwood and solidwood production, imports and exports
#' corresponds to columns in `SWPcalcdata` spreadsheet.
calculateswpdata <- function() {
    swpcalcdata <- data.frame(Years = yrs)
    yrs <- swpcalcdata$Years

    swpcalcdata$`Other Products Production` <- sapply(yrs, function(y) {
        if (y < 1950) {
            return(h3(y, 37) * InceN5 * 1000)
        }
        if (y < 1965) {
            return(u4(y, 19) * InceN5 * 1000)
        }
        if (y < 2021) {
            return(h5(y, 19) * InceN5 * 1000)
        }
    })
    pOther <- function(y) {
        # other products exports, swpcalcP
        return(0)
    }
    swpcalcdata$`Other Products Exports` <- 0
    swpcalcdata$`Sawnwood Production` <- sapply(yrs, function(y) {
        ### CHECK THIS, why are errors x*10^-8? shouldnt error be 10^16
        cavg <- (h8(1904, 2) - h8(1899, 2))/5
        davg <- (h8(1904, 3) - h8(1899, 3))/5
        if (y < 1904) {
            return((((h8(1899, 2) + ((y - 1899) * cavg)) * InceF5) +
                (h8(1899, 3) + (y - 1899) * davg) * InceG5) * 1000)
        }
        if (y < 1950) {
            return((h8(y, 2) * InceF5 + h8(y, 3) * InceG5) * 1000)
        }
        if (y < 1965) {
            return((u29(y, 1) * 1000 * (((u29(y, 2)/u29(y, 1)) * InceF5) +
                ((u29(y, 3)/u29(y, 1)) * InceG5))) * 1000)
        }
        if (y < 2021) {
            return((h28(y, 1) * 1000 * (((h28(y, 2)/h28(y, 1)) * InceF5) +
                ((h28(y, 3)/h28(y, 1)) * InceG5))) * 1000)
        }
    })
    swpcalcdata$`Sawnwood Imports` <- sapply(yrs, function(year) {
        if (year < 1918) {
            return(h8(year, 4) * InceF5 * 1000)
        }
        if (year < 1950) {
            return((((h8(year, 5) + h8(year, 7)) * InceF5) + (h8(year, 6) * InceG5)) *
                1000)
        }
        if (year < 1965) {
            return(((u29(year, 5) * 1000 * InceF5) + (u29(year, 6) * InceG5 *
                1000)) * 1000)
        }
        if (year < 2021) {
            return(((h28(year, 5) * 1000 * InceF5) + (h28(year, 6) * InceG5 *
                1000)) * 1000)
        }
        # if(year< 2051){
        # return(((i1(year,4)*InceF5)+(i1(year,5)*InceG5))*1000) }
    })

    swpcalcdata$`Sawnwood Exports` <- sapply(yrs, function(year) {
        if (year < 1911) {
            return(h8(year, 13) * InceF5 * 1000)
        }
        if (year < 1950) {
            return((((h8(year, 14) + h8(year, 16)) * InceF5) + (h8(year, 15) *
                InceG5)) * 1000)
        }
        if (year < 1965) {
            return((((u29(year, 8) * 1000 * InceF5) + (u29(year, 9) * 1000 *
                InceG5)) * 1000))
        }
        if (year < 2021) {
            return(((h28(year, 8) * 1000 * InceF5) + (h28(year, 9) * 1000 *
                InceG5)) * 1000)
        }
    })
    swpcalcdata$`Roundwood consumed for lumber and panels` <- sapply(yrs,
        function(year) {
            if (year < 1950)
                {
                  return((h3(year, 28) + h3(year, 31)) * (InceV5 * 0.8 + InceW5 *
                    0.2) * 1000)
                }  #sawlog domestic prod + veneer logs domestic production

            if (year < 1965)
                {
                  # u5$j, u5$o...u6$j, u6$o
                  return(1000 * ((u5(year, 7) + u5(year, 11)) * InceV5 + (u6(year,
                    7) + u6(year, 11)) * InceW5))
                }  #J,O.. Lumber Production + plywood/veneer production, for HW and SW
            if (year < 2021) {
                return(1000 * ((h6(year, 7) + h6(year, 11)) * InceV5 + (h7(year,
                  7) + h7(year, 11)) * InceW5))
            }
        })

    swpcalcdata$`Log Exports (tons)` <- sapply(yrs, function(year) {
        if (year < 1965) {
            return((h3(year, 8) * InceV5 + h3(year, 10) * InceW5) * 1000)
        }
        if (year < 2021) {
            return((h6(year, 21) * InceV5 + h7(year, 21) * InceW5) * 1000)
        }
    })
    swpcalcdata$`Imported logs for lumber and panels (1000 tons)` <- sapply(yrs,
        function(year) {
            if (year < 1950) {
                return(0)
            }
            if (year < 1965) {
                # u5$Y, u6$z
                return(1000 * (u5(year, 20) * InceV5 + u6(year, 20) * InceW5))
            }
            if (year < 2021) {
                return(1000 * (h6(year, 20) * InceV5 + h7(year, 20) * InceW5))
            }
        })
    swpcalcdata$SP.Production <- sapply(yrs, function(year) {
        if (year < 1950) {
            # softwood plywood million ft^2
            return(((inc1(year, 1) * InceB5)) * 1000)
        }
        if (year < 1965) {

            return(((u36(year, 2) * InceB5)) * 1000)
        }
        if (year < 1980) {
            return(((h37(year, 2) * InceB5)) * 1000)
        }
        if (year < 2021) {
            return(((h37(year, 2) * InceB5) + (h38(year, 3) * InceC5)) * 1000)
        }
    })
    swpcalcdata$SP.Imports <- sapply(yrs, function(year) {
        if (year < 1950) {
            return(0)
        }
        if (year < 1965) {
            return((u36(year, 5) * InceB5) * 1000)
        }
        if (year < 1980) {
            return((h37(year, 5) * InceB5) * 1000)
        }
        if (year < 2021) {
            return(((h37(year, 5) * InceB5) + (h38(year, 6) * InceC5)) * 1000)
        }
        # if(year<2051){
        # return(((inc1(year,1)*InceB5)+(inc1(year,2)*InceC5))*1000) }
    })

    swpcalcdata$SP.Exports <- sapply(yrs, function(year) {
        if (year < 1927) {
            return(0)
        }
        if (year < 1950) {
            return(((h3t20(year, 7)/1000 * InceB5)) * 1000)
        }
        if (year < 1965) {
            return(((u36(year, 8) * InceB5)) * 1000)
        }
        if (year < 1991) {
            return(((h37(year, 8) * InceB5)) * 1000)
        }
        if (year < 2021) {
            return(((h37(year, 8) * InceB5) + (h38(year, 9) * InceC5)) * 1000)
        }
    })
    swpcalcdata$NSP.Production <- sapply(yrs, function(year) {
        if (year < 1950) {
            return(((inc1(year, 4) * InceE5) + (inc1(year, 9) * InceJ5) +
                (inc1(year, 13) * InceO5)) * 1000)
        }
        if (year < 1965) {
            return(((u36(year, 3) * InceE5) + (u52(year, 2) * InceI5) + (u54(year,
                1) * InceJ5) + (u53(year, 1) * InceO5)) * 1000)
        }
        if (year < 2021) {
            return(((h37(year, 3) * InceE5) + (h53(year, 2) * InceI5) + (h56(year,
                1) * InceJ5) + (h53(year, 3) * InceK5) + h55(year, 1) * InceQ5) *
                1000)
        }
    })
    swpcalcdata$NSP.Imports <- sapply(yrs, function(year) {
        if (year < 1927) {
            return(0)
        }
        if (year < 1935) {
            return(((h3t21(year, 1)/1000) * InceR5) * 1000)
        }
        if (year < 1950) {
            return((((h3t20(year, 3) * InceE5) + (h3t21(year, 1) * InceR5))/1000) *
                1000)
        }
        if (year < 1954) {
            return(u36(year, 6) * InceE5 * 1000)
        }
        if (year < 1963) {
            return(((u36(year, 6) * InceE5) + (u54(year, 2) * InceJ5) + (u53(year,
                2) * InceO5)) * 1000)
        }
        if (year < 1965) {
            return(((u36(year, 6) * InceE5) + (u52(year, 4) * InceI5) + (u54(year,
                2) * InceJ5) + (u53(year, 2) * InceO5)) * 1000)
        }
        if (year < 2021) {
            return(((h37(year, 6) * InceE5) + (h53(year, 4) * InceI5) + (h56(year,
                2) * InceJ5) + (h55(year, 2) * InceQ5)) * 1000)
        }
    })

    swpcalcdata$NSP.Exports <- sapply(yrs, function(year) {
        ## lNSP
        if (year < 1916) {
            return(0)
        }
        if (year < 1925) {
            return((u54(year, 3) * InceJ5) * 1000)
        }
        if (year < 1927) {
            return(((u54(year, 3) * InceJ5) + (u53(year, 3) * InceO5)) * 1000)
        }
        if (year < 1935) {
            return((((h3t20(year, 8) * InceE5 + h3t21(year, 4) * InceR5)/1000) +
                (u54(year, 3) * InceJ5) + (u53(year, 3) * InceO5)) * 1000)
        }
        if (year < 1950) {
            return((((h3t20(year, 8) + h3t21(year, 4))/1000 * InceE5) + (u54(year,
                3) * InceJ5) + (u53(year, 3) * InceO5)) * 1000)
        }
        if (year < 1965) {
            return(((u36(year, 9) * InceE5) + (u54(year, 3) * InceJ5) + (u53(year,
                3) * InceO5)) * 1000)
        }
        if (year < 2021) {
            return(((h37(year, 9) * InceE5) + (h53(year, 5) * InceI5) + (h56(year,
                3) * InceJ5) + h55(year, 3) * InceQ5) * 1000)
        }
    })
    ######################
    swpcalcdata$`Other Products Production Special` <- swpcalcdata$`Other Products Production` -
        (1 - a5) * swpcalcdata$`Other Products Exports`
    swpcalcdata$`Sawnwood Prod Special` <- (swpcalcdata$`Sawnwood Production` -
        (1 - a5) * swpcalcdata$`Sawnwood Exports`) * ((swpcalcdata$`Roundwood consumed for lumber and panels` +
        swpcalcdata$`Log Exports (tons)` * a5 - swpcalcdata$`Imported logs for lumber and panels (1000 tons)` *
        PRP62)/swpcalcdata$`Roundwood consumed for lumber and panels`)
    swpcalcdata$`SP Prod Special` <- (swpcalcdata$SP.Production - (1 -
        a5) * swpcalcdata$SP.Exports) * ((swpcalcdata$`Roundwood consumed for lumber and panels` +
        a5 * swpcalcdata$`Log Exports (tons)` - swpcalcdata$`Imported logs for lumber and panels (1000 tons)` *
        PRP62)/swpcalcdata$`Roundwood consumed for lumber and panels`)
    swpcalcdata$`NSP Prod Special` <- (swpcalcdata$NSP.Production -
        (1 - a5) * swpcalcdata$NSP.Exports) * ((swpcalcdata$`Roundwood consumed for lumber and panels` +
        a5 * swpcalcdata$`Log Exports (tons)` - swpcalcdata$`Imported logs for lumber and panels (1000 tons)` *
        PRP62)/swpcalcdata$`Roundwood consumed for lumber and panels`)

    # these used for variable 1a
    swpcalcdata$`Sawnwood Consumption` <- swpcalcdata$`Sawnwood Production` +
        swpcalcdata$`Sawnwood Imports` - swpcalcdata$`Sawnwood Exports`

    swpcalcdata$SP.Consumption <- swpcalcdata$SP.Production + swpcalcdata$SP.Imports -
        swpcalcdata$SP.Exports

    swpcalcdata$NSP.Consumption <- swpcalcdata$NSP.Production + swpcalcdata$NSP.Imports -
        swpcalcdata$NSP.Exports

    swpcalcdata

}
###############

#' Total carbon placed in use in od tons of wood fiber
#'
#' Corresponds to B3147 column in SW Calc P and SW Calc spreadsheet for Production and Stock Change
#' approach respectively.
#'
#' @param Years years to calculate carbon placed in use for
#' @param approach The approach type to use. Fractions dont change but inflow does
#' @param total Whether to return total placed in use or seperate it by end uses.
#' @param fsp Fraction of structural panel products that go to each end use.
#' Default can be substituted with data with a column for each end use and row for years
#' from 1900 to latest year of interest.
#' @param fnsp Fraction of non-structural panel products that go to each end use.
#' Default can be substituted with data with a column for each end use and row for years
#' from 1900 to latest year of interest.
#' @param fsawn Fraction of sawnwood products that go to each end use.
#' Default can be substituted with data with a column for each end use and row for years
#' from 1900 to latest year of interest.
#'
#' @return a data frame of carbon placed in use for various end uses
calcplacediu <- function(Years = 1900:2020, approach = c("Production",
    "Stock Change"), total = TRUE, fsp = fracstrpanels,
                                   fnsp = fracnonstrpanels,
                                   fsawn = fracsawnwood) {
    approachtype <- match.arg(approach)
    swpcalcdata <- calculateswpdata()
    placeIU <- data.frame(Years = Years)

    if (approachtype == "Production") {
        placeIU[, 2:13] <- swpcalcdata[["Sawnwood Prod Special"]][Years -
            (minyr - 1)] * fsawn[Years - (minyr - 1), -13] +
            swpcalcdata[["SP Prod Special"]][Years - (minyr - 1)] *
                fsp[Years - (minyr - 1), -13] + swpcalcdata[["NSP Prod Special"]][Years -
            (minyr - 1)] * fnsp[Years - (minyr - 1), -13]
    } else if (approachtype == "Stock Change") {
        placeIU[, 2:13] <- swpcalcdata[["Sawnwood Consumption"]][Years -
            (minyr - 1)] * fsawn[Years - (minyr - 1), -13] +
            swpcalcdata[["SP.Consumption"]][Years - (minyr - 1)] * fsp[Years -
                (minyr - 1), -13] + swpcalcdata[["NSP.Consumption"]][Years -
            (minyr - 1)] * fnsp[Years - (minyr - 1), -13]
    }

    placeIU$`Other Industrial Products Production` <- swpcalcdata$`Other Products Production Special`[Years -
        (minyr - 1)]
    if (total == FALSE) {
        #placeIU[, -c(1, 5, 10, 14)]
        placeIU

    } else {
        #apply(placeIU[, -c(1, 5, 10, 14)], 1, sum)
         apply(placeIU[,-1], 1, sum)
    }
}


