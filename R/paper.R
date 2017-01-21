#' Calculates paper statistics
#'
#' Uses anonymous functions to calculate columns from `USA` sheet in WOODCARB spreadsheet.
#'
#' @param years years to calculate data for
#' @return A data frame with necessary intermediate calculations to calculate carbon from paper.
#' Corresponds with necessary columns from the `USA` sheet in the WOODCARB spreadsheet (list them?)
calcUSApaper <- function(years = yrs){

  USA <- data.frame(Years = years)

  ##api includes calculations from estimates/averages

  USA$`apiTotalWP_L` <- sapply(years, function(year){
    if (year < 1957){
      #F, H, B, F
      return((apiFiber(year,3)+apiFiber(year,5))*(apiTotal(year,1)/apiTotal(year,5)))
    }
    if (year >1956){
      #G, B, F
      return(apiFiber(year,4)*(apiTotal(year,1)/apiTotal(year,5)))
    }
  })

  USA$`Recovered Fibre Pulp Exports Quantity` <- sapply(years, function(year){
    if (year > 1997 && year < 2014){
      return(usaFiberPulp[[year-1997,3]])
    }
    else{
      0
    }
  })

  USA$`Paper+Paperboard Production` <- IncePaper[years-(minyr-2),1]*1000*InceL5

  USA$`Paper+Paperboard Exports` <- IncePaper[years-(minyr-2),3]*1000*InceL5

  USA$`Pulp for Paper Production` <- sapply(years, function(year){
    if (year < 1965){
      return(apiTotal(year,1)+USA$`apiTotalWP_L`[year-(minyr-1)])
    }
    if (year < 2021){
      return((h49(year,1)+h46(year,5)*(h46(year,1)/h46(year,2)))*1000)
    }
    if (year > 2020){
      return(USA$`Pulp for Paper Production`[[USA$Years == 2002]]) #2002 value
    }
  })

  USA$`Pulp for Paper Imports` <- sapply(years, function(year){
    if (year < 1965){
      return(apiTotal(year,2)+USA$`apiTotalWP_L`[year-(minyr-1)]*(apiTotal(year,2)/apiTotal(year,1)))
    }
    if (year < 2021){
      return((h49(year,2)+h46(year,5)*(h49(year,3)/100))*1000)
    }
    if (year > 2020){
      return(USA$`Pulp for Paper Imports`[[USA$Years == 2002]])#2002 value
    }
  })

  USA$`Pulp for Paper Exports` <- sapply(years, function(year){
    if (year < 1965){
      return(apiTotal(year,3)+USA$`apiTotalWP_L`[year-(minyr-1)]*(apiTotal(year,3)/apiTotal(year,1)))
    }
    if (year < 2021){
      return((h49(year,4)+h46(year,5)*(h46(year,1)/h46(year,2))*(h49(year,5)/100))*1000)
    }
    if (year > 2020){
      return(USA$`Pulp for Paper Exports`[[USA$Years == 2002]])
    }
  })


  USA$`Other Fibre Pulp Production` <- sapply(years, function(year){
    if (year < 1965){
      return(USA$`apiTotalWP_L`[year-(minyr-1)])
    }
    if (year < 2014){
      return(h46(year,5)*(h46(year,1)/h46(year,2))*1000)
    }
    if (year < 2021){
      return(h46(2007,5)*(h46(2007,1)/h46(2007,2))*1000)#uses 2007 value
    }
    if (year > 2020){
      return(h46(2002,5)*(h46(2002,1)/h46(2002,2))*1000)#uses value from 2002
    }
  })



  USA$`Other Fibre Pulp Imports` <- sapply(years, function(year){
    if(year < 1965){
      return(USA$`apiTotalWP_L`[year-(minyr-1)]*(apiTotal(year,2)/apiTotal(year,1)))
    }
    if (year < 2014){
      return(h46(year,5)*(h49(year,3)/100)*1000)
    }
    if (year < 2021){
      return(h46(2007,5)*(h49(2007,3)/100)*1000) #uses 2007
    }
    if (year > 2020){
      return(h46(2002,5)*(h49(2002,3)/100)*1000)#uses 2002
    }
  })

  USA$`Other Fibre Pulp Exports` <- sapply(years, function(year){
    if(year < 1965){
      return(USA$`apiTotalWP_L`[year-(minyr-1)]*(apiTotal(year,3)/apiTotal(year,1)))
    }
    if (year < 2014){
      return(h46(year,5)*(h46(year,1)/h46(year,2))*(h49(year,5)/100)*1000)
    }
    if (year < 2021){
      return(h46(2007,5)*(h46(2007,1)/h46(2007,2))*(h49(2007,5)/100)*1000) #uses 2007 value
    }
    if (year > 2020){
      return(h46(2002,5)*(h46(2002,1)/h46(2002,2))*(h49(2002,5)/100)*1000) #uses 2002 value
    }
  })
  #return(USA$`Other Fibre Pulp Production`)
  USA$`Wood Pulp for Paper Production` <- USA$`Pulp for Paper Production`-USA$`Other Fibre Pulp Production`

  USA$`Wood Pulp for Paper Imports` <- USA$`Pulp for Paper Imports`-USA$`Other Fibre Pulp Imports`

  USA$`Wood Pulp for Paper Exports` <- USA$`Pulp for Paper Exports`-USA$`Other Fibre Pulp Exports`

  USA$`Recovered Fibre Pulp Exports` <- sapply(years, function(year){
    if (year <1998){
      return(0)
    }
    if (year < 2014){
      return(as.numeric(USA$`Recovered Fibre Pulp Exports Quantity`[USA$Years == year])*0.90718)#recov exports qty
    }
    if (year < 2021){
      return(as.numeric(USA$`Recovered Fibre Pulp Exports Quantity`[USA$Years == 2007])*0.90718) #2007 value
    }
  })

  USA$`Recovered Paper Exports` <- sapply(years, function(year){
    if (year < 1965){
      return(apiTotal(year,8))##calculation
    }
    if (year < 2021){
      return(h47(year,4)*1000)
    }
  })

  USA$`Total Roundwood Consumed For Paper` <- sapply(years, function(year){
    if (year < 1950){
      return(h3(year,34)*((u5(1950,16)*InceV5+u6(1950,15)*InceW5)/(u5(1950,15)+u6(1950,15)))) #1950 value
    }
    if (year < 1965){
      #u6`T`
      return(u5(year,16)*InceV5+u6(year,15)*InceW5)
    }
    if (year < 2021){
      return(h6(year,15)*InceV5+h7(year,15)*InceW5)
    }
  })

  USA$`Imported Pulpwood Chips` <- sapply(years, function(year){
    if (year > 1988 && year < 2021){
      return(h6(year,22)*InceV5+h7(year,22)*InceW5)
    }
    if (year > 1964){
      return(h5(year,22)*((h6(1989,22)*InceV5+h7(1989,22)*InceW5)/(h5(1989,22)))) #1989 value
    }
    else{
      return(0)
    }
  })

  USA$`Chip Exports (tons)` <- sapply(years, function(year){
    if (year < 1965){
      return(0)
    }
    if (year < 2021){
      return((h6(year,23)*InceV5+h7(year,23)*InceW5)*1000)
    }
    if (year > 2020){
      return(USA$`Chip Exports (tons)`[[USA$Years == 1999]]) #1999 value
    }
  })


  USA$`Paper+Paperbaord Imports` <- IncePaper[years-(1899-1),2]*1000*InceL5

  USA$`Paper+Paperboard Consumption` <- USA$`Paper+Paperboard Production` +
    USA$`Paper+Paperbaord Imports`-
    USA$`Paper+Paperboard Exports`


  USA$`Percent of Wood Pulp For Paper`<- ((USA$`Pulp for Paper Production`+USA$`Pulp for Paper Imports`-
                                             USA$`Pulp for Paper Exports`)-
                                            (USA$`Other Fibre Pulp Production`+USA$`Other Fibre Pulp Imports`-
                                               USA$`Other Fibre Pulp Exports`))/(USA$`Pulp for Paper Production`+USA$`Pulp for Paper Imports`-
                                                                                   USA$`Pulp for Paper Exports`)


  USA$CarbonInputFlowPaperStockChange <- PRO18*USA$`Paper+Paperboard Consumption`*USA$`Percent of Wood Pulp For Paper`





  USA$`Nonwood Fiber Percent of Total Pulp Consumption` <-
    (USA$`Other Fibre Pulp Production`+USA$`Other Fibre Pulp Imports`
     -USA$`Other Fibre Pulp Exports`)/(USA$`Pulp for Paper Production`
                                       +USA$`Pulp for Paper Imports`-USA$`Pulp for Paper Exports`)

  USA$`Imported Woodpulp as a Percent of Total WoodPulp Consumption` <-
    USA$`Wood Pulp for Paper Imports`/(USA$`Wood Pulp for Paper Production` +
                                         USA$`Wood Pulp for Paper Imports`-USA$`Wood Pulp for Paper Exports`)


  USA$`Production Approach-C Input from Paper Products(Calc BU)` <- PRO18*((USA$`Paper+Paperboard Production`+
                                                                              USA$`Paper+Paperboard Exports`*(a5-1))*
                                                                             (1-USA$`Nonwood Fiber Percent of Total Pulp Consumption`*PRP62)*
                                                                             (1-USA$`Imported Woodpulp as a Percent of Total WoodPulp Consumption`*PRP62)*
                                                                             ((USA$`Total Roundwood Consumed For Paper`-
                                                                                 USA$`Imported Pulpwood Chips`+USA$`Chip Exports (tons)`/1000)/
                                                                                USA$`Total Roundwood Consumed For Paper`)+
                                                                             (USA$`Recovered Fibre Pulp Exports`+USA$`Recovered Paper Exports`+
                                                                                USA$`Pulp for Paper Exports`)*a5)

  USA
}


