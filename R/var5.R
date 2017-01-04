#' Variable 5
#'
#' @param years
#' @param onlyvar
#'
#' @return
#' @export
#'
#' @examples
var5 <- function(years, onlyvar = FALSE){
  usa <- data.frame(Years = years)

  usa$usa_C <- sapply(years, function(year){
    if (year < 1950){
      return((h3(year, 5)* InceV5 + h3(year, 6) * InceW5)*1000)
    }
    if (year > 1949 && year < 1965){
      return((u5(year, 4) * InceV5 + u6(year, 4) * InceW5) *1000)
    }
    if (year > 1964 && year < 2014){
      return((h6(year, 3) * InceV5 + h7(year, 3) * InceW5) * 1000)
    }
    if (year > 2013 && year < 2051){
      ((Ince3(year, 10)* InceV5) + Ince3(year, 9) * InceW5) *1000
    }
  })

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
    if (year > 1949 && year < 1965){
      return(u5(year, 4)*InceV5 + u6(year, 4)*InceW5)
    }
    if (year > 1964 && year < 2021){
      return(h6(year, 3)*InceV5 + h7(year, 3)*InceW5)
    }
    if (year > 2020 && year < 2051){
      return(Ince3(year,10)*InceV5) +(Ince3(year,9) * InceW5)
    }
  })

  usa$Calc_DI <- PRO17*usa$usa_C

  usa$usa_G <- 1000 * sapply(years, function(year){
    if (year < 1950){
      return((u5(year, 27)*InceV5+ u6(year,27) *InceW5) / ((u5(year, 27)+ u6(year, 27) * h3(year, 38))))
    }
    if (year < 1965){
      return(u5(year, 27) * InceV5 + u6(year, 27) * InceW5)
    }
    if (year < 2014){
      return(h6(year, 24) * InceV5 + h7(year, 24)* InceW5)
    }
    else{
      0
    }
  })

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
