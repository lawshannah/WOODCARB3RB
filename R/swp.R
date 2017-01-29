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

    swpcalcdata$`Other Products Production` <- 1000 * InceN5 * sapply(yrs, function(y) {
        if (y < 1950) {
            return(h3(y, 'Other.ApparentConsumption'))
        }
        if (y < 1965) {
            return(u4(y, 'OtherIndProducts.ProdandConsump'))
        }
        if (y < 2021) {
            return(h5(y, 'OtherIndProductsandConsump'))
        }
    })
    pOther <- function(y) {
        # other products exports, swpcalcP
        return(0)
    }
    swpcalcdata$`Other Products Exports` <- 0

    swpcalcdata$`Sawnwood Production` <- 1000 * sapply(yrs, function(y) {
        ### CHECK THIS, why are errors x*10^-8? shouldnt error be 10^16
        cavg <- (h8(1904, 'Prod.SW') - h8(1899, 'Prod.SW')) / 5
        davg <- (h8(1904, 'Prod.HW') - h8(1899, 'Prod.HW')) / 5
        if (y < 1904) {
            return((((h8(1899, 2) + ((y - 1899) * cavg)) * InceF5) +
                (h8(1899, 3) + (y - 1899) * davg) * InceG5))
        }
        if (y < 1950) {
            return((h8(y, 2) * InceF5 + h8(y, 3) * InceG5))
        }
        if (y < 1965) {
            return((u29(y, 1) * 1000 * (((u29(y, 2)/u29(y, 1)) * InceF5) +
                ((u29(y, 3)/u29(y, 1)) * InceG5))))
        }
        if (y < 2021) {
            return((h28(y, 1) * 1000 * (((h28(y, 2)/h28(y, 1)) * InceF5) +
                ((h28(y, 3)/h28(y, 1)) * InceG5))))
        }
    })

    swpcalcdata$`Sawnwood Imports` <- 1000 * sapply(yrs, function(year) {
        if (year < 1918) {
            return(InceF5 * h8(year, 'Imports.Tot'))
        }
        if (year < 1950) {
            return(InceF5 * (h8(year, 'Imports.SW') + h8(year, 'Imports.Mixed'))  +
                      InceG5 * h8(year, 'Imports.HW'))
        }
        if (year < 1965) {
            return(1000 * (InceF5 * u29(year, 'Imports.SW')
                           + InceG5 * u29(year, 'Imports.HW')))
        }
        if (year < 2021) {
            return(1000 * (InceF5 * h28(year, 'Imports.SW')
                           + InceG5 * h28(year, 'Imports.HW')))
        }
        # if(year< 2051){
        # return(((i1(year,4)*InceF5)+(i1(year,5)*InceG5))*1000) }
    })

    swpcalcdata$`Sawnwood Exports` <- 1000 * sapply(yrs, function(year) {
        if (year < 1911) {
            return(InceF5 * h8(year, 'Exports.Tot'))
        }
        if (year < 1950) {
            return(InceF5 * (h8(year, 'Exports.SW') + h8(year, 'Exports.Mixed')) +
                     InceG5 * h8(year, 'Exports.HW'))
        }
        if (year < 1965) {
            return(1000 * (InceF5 * u29(year, 'Exports.SW') +
                             InceG5 * u29(year, 'Exports.HW')))
        }
        if (year < 2021) {
            return(1000 * (InceF5 * h28(year, 'Exports.SW') +
                             InceG5 * h28(year, 'Exports.HW')))
        }
    })

    swpcalcdata$`Roundwood consumed for lumber and panels` <- 1000 * sapply(yrs,
        function(year) {
            if (year < 1950) {
                  return((0.8 * InceV5 + 0.2 * InceW5) * (h3(year, 'SawLogs.Dom.Prod') +
                                                            h3(year, 'VeneerLogs.Dom.Prod')))
            }
            if (year < 1965) {
                  # u5$j, u5$o...u6$j, u6$o
                  return((InceV5 * (u5(year, 7) + u5(year, 11))  +
                            InceW5 * (u6(year,7) +u6(year, 11))))
                }  #J,O.. Lumber Production + plywood/veneer production, for HW and SW
            if (year < 2021) {
                return(InceV5 * (h6(year, 7) + h6(year, 11)) +
                          InceW5 * (h7(year, 7) + h7(year, 11)))
            }
        })

    swpcalcdata$`Log Exports (tons)` <- 1000 * sapply(yrs, function(year) {
        if (year < 1965) {
            return(InceV5 * h3(year, 8) +
                     InceW5 * h3(year, 10))
        }
        if (year < 2021) {
            return(InceV5 * h6(year, 21)  +
                     InceW5 * h7(year, 21))
        }
    })
    swpcalcdata$`Imported logs for lumber and panels (1000 tons)` <- 1000 * sapply(yrs,
        function(year) {
            if (year < 1950) {
                return(0)
            }
            if (year < 1965) {
                # u5$Y, u6$z
                return(InceV5 * u5(year, 20) +
                        InceW5 * u6(year, 20))
            }
            if (year < 2021) {
                return(InceV5 * h6(year, 20) +
                         InceW5 * h7(year, 20))
            }
        })

    swpcalcdata$SP.Production <- 1000 * sapply(yrs, function(year) {
        if (year < 1950) {
            # softwood plywood million ft^2
            return(InceB5 * inc1(year, 1))
        }
        if (year < 1965) {
            return(InceB5 * u36(year, 2))
        }
        if (year < 1980) {
            return(InceB5 * h37(year, 2))
        }
        if (year < 2021) {
            return(InceB5 * h37(year, 2) + InceC5 * h38(year, 3))
        }
    })

    swpcalcdata$SP.Imports <- 1000 * sapply(yrs, function(year) {
        if (year < 1950) {
            return(0)
        }
        if (year < 1965) {
            return(InceB5 * u36(year, 5))
        }
        if (year < 1980) {
            return(InceB5 * h37(year, 5))
        }
        if (year < 2021) {
            return(InceB5 * h37(year, 5) + InceC5 * h38(year, 6))
        }
        # if(year<2051){
        # return(InceB5 * inc1(year, 1) + InceC5 * inc1(year, 2))
        #}
    })

    swpcalcdata$SP.Exports <- 1000 * sapply(yrs, function(year) {
        if (year < 1927) {
            return(0)
        }
        if (year < 1950) {
            return(InceB5 * h3t20(year, 7) / 1000)
        }
        if (year < 1965) {
            return(InceB5 * u36(year, 8))
        }
        if (year < 1991) {
            return(InceB5 * h37(year, 8))
        }
        if (year < 2021) {
            return(InceB5 * h37(year, 8) + InceC5 * h38(year, 9))
        }
    })

    swpcalcdata$NSP.Production <- 1000 * sapply(yrs, function(year) {
        if (year < 1950) {
            return(InceE5 * inc1(year, 4) + InceJ5 * inc1(year, 9) +
                      InceO5 * inc1(year, 13))
        }
        if (year < 1965) {
            return(InceE5 * u36(year, 3) + InceI5 * u52(year, 2)
                    + InceJ5 * u54(year,1) + InceO5 * u53(year, 1))
        }
        if (year < 2021) {
            return(InceE5 * h37(year, 3) + InceI5 * h53(year, 2) +
                      InceJ5 * h56(year, 1) + InceK5 * h53(year, 3) + InceQ5 * h55(year, 1))
        }
    })

    swpcalcdata$NSP.Imports <- 1000 * sapply(yrs, function(year) {
        if (year < 1927) {
            return(0)
        }
        if (year < 1935) {
            return(InceR5 * h3t21(year, 1) / 1000)
        }
        if (year < 1950) {
            return((InceE5 * h3t20(year, 3) +
                       InceR5 * h3t21(year, 1))/1000)
        }
        if (year < 1954) {
            return(InceE5 * u36(year, 6))
        }
        if (year < 1963) {
            return(InceE5 * u36(year, 6) + InceJ5 * u54(year, 2) +
                      InceO5 * u53(year, 2))
        }
        if (year < 1965) {
            return(InceE5 * u36(year, 6) + InceI5 * u52(year, 4) +
                       InceJ5 * u54(year, 2) + InceO5 * u53(year, 2))
        }
        if (year < 2021) {
            return(InceE5 * h37(year, 6) + InceI5 * h53(year, 4) +
                      h56(year, 2) * InceJ5 + h55(year, 2) * InceQ5)
        }
    })

    swpcalcdata$NSP.Exports <- 1000 * sapply(yrs, function(year) {
        ## lNSP
        if (year < 1916) {
            return(0)
        }
        if (year < 1925) {
            return((InceJ5 * u54(year, 3)))
        }
        if (year < 1927) {
            return(InceJ5 * u54(year, 3) +
                      InceO5 * u53(year, 3))
        }
        if (year < 1935) {
            return((InceE5 * h3t20(year, 8) + InceR5 * h3t21(year, 4)) / 1000 +
                 InceJ5 * u54(year, 3)  + InceO5 * u53(year, 3))
        }
        if (year < 1950) {
            return(InceE5 * (h3t20(year, 8) + h3t21(year, 4)) / 1000 +
                      InceJ5 * u54(year, 3) + InceO5 * u53(year, 3))
        }
        if (year < 1965) {
            return(InceE5 * u36(year, 9) + InceJ5 * u54(year, 3) +
                      InceO5 * u53(year, 3))
        }
        if (year < 2021) {
            return(InceE5 * h37(year, 9) + InceI5 * h53(year, 5) +
                     InceJ5 * h56(year, 3) + InceQ5 * h55(year, 3))
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


