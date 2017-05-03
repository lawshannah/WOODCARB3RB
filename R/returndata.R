##This removes "no visible binding" error from R CMD check
#solution from: http://stackoverflow.com/questions/9439256/how-can-i-handle-r-cmd-check-no-visible-binding-for-global-variable-notes-when
names <- c("hair1958","hair1963","hair1963t20",
           "hair1963t21","howard28","howard37",
           "howard38","howard46","howard47",
           "howard49","howard5","howard53",
           "ulrich29","ulrich36","ulrich4",
           "ulrich5","lossIU","lumberpre1900",
           "woodToLandFills","woodToDumps","paperToLandFills",
           "halfLives","IncePaper","apiFiberpulp",
           "apiTotalWoodPulp","usaFiberPulp","ince1",
           "howard55","howard56","howard6",
           "howard7", "ulrich52","ulrich53",
           "ulrich54", "ulrich6","fracsawnwood",
           "fracnonstrpanels", "fracstrpanels", "InceTable3",
           "woodToCarbon", "paperToCarbon", "swpSwdsNondegradable",
           "paperSwdsNondegradable", "paperLandfillDecay",
           "paperDumpDecay", "swpLandfillDecay", "swpDumpDecay",
           "paperHL")

for (i in seq(names)){
  utils::globalVariables(names[i])
}


#' Get import, export, production data for all product types.
#' Aggregates all intermediate calculations necessary for final calculations.
#' Returns data and intermediate calculations corresponding
#' to sheets in Woodcarb2. Includes relevant SWP and paper production and
#' trade time series for calculating final carbon contributions for
#' various approaches.
#'
#' @param years years to return data for
#'
#' @return data frame of intermediate calculations corresponding to appropriate table
#' in Excel spreadsheet.
#' @export
returnData<- function(years = 1950:2015){

    usa <- calculateswpdata(years)
    usapaper <- calcUSApaper(years)
    usadumps <- calculatedumpcarbonproduction(years)
    usadumps2 <- calculatedumpcarbonstockchange(years)
    return(Reduce(function(x, y) merge(x, y, all=TRUE), list(usa, usapaper, usadumps, usadumps2)))
}



###############################################################
##Functions used to access and return data for convenience in functions requiring
##several different formulas for one vector.
h8 <- function(y,c){
  return(hair1958[y-1898,c])
}

h3 <- function(y,c){
  return(hair1963[y-1899,c])
}

h3t20 <- function(y,c){
  return(hair1963t20[y-1926,c])
}

h3t21 <- function(y,c){
  return(hair1963t21[y-1926,c])
}

u4 <- function(y,c){
  return(ulrich4[y-1949,c])
}

u5 <- function(y,c){
  return(ulrich5[y-1949,c])
}

u6 <- function(y,c){
  return(ulrich6[y-1949,c])
}

u29 <- function(y,c){
  return(ulrich29[y-1949,c])
}

u36 <- function(y,c){
  return(ulrich36[y-1949,c])
}

u52 <- function(y,c){
  return(ulrich52[y-1949,c])
}

u53 <- function(y,c){
  return(ulrich53[y-1924,c])
}

u54 <- function(y,c){
  return(ulrich54[y-1915,c])
}

h5 <- function(y,c){
  return(howard5[y-1964,c])
}

h6 <- function(y,c){
  return(howard6[(y-1964),c])
}

h7 <- function(y,c){
  return(howard7[y-1964,c])
}

h28 <- function(y,c){
  return(howard28[y-1964,c])
}

h37 <- function(y,c){
  return(howard37[y-1964,c])
}

h38 <- function(y,c){
  return(howard38[y-1979,c])
}

h46 <- function(y,c){
  return(howard46[y-1964,c])
}

h47 <- function(y,c){
  return(howard47[y-1964,c])
}

h49 <- function(y,c){
  return(howard49[y-1964,c])
}

h53 <- function(y,c){
  return(howard53[y-1964,c])
}

h55 <- function(y,c){
  return(howard55[y-1964,c])
}

h56 <- function(y,c){
  return(howard56[y-1964,c])
}

inc1 <- function(y,c){
  return(ince1[y-1899,c])
}

getIncePap <- function(y,c){
  return(IncePaper[y-1898,c])
}

apiFiber <- function(y,c){
  return(apiFiberpulp[y-1899,c])
}

apiTotal <- function(y,c){
  return(apiTotalWoodPulp[y-1895,c])
}

FibPulp_USA<-function(y,c){
  return(usaFiberPulp[y-1997,c])
}

Ince3 <- function(y,c){
  return(InceTable3[y-1899,c])
}


