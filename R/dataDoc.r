#' @name hair1958
#' @title hair1958
#' @aliases hair1958
#' @docType data
#' @description
#' Production, imports, exports, and new supply of lumber in US between 1799 and 1958.
#' All units are in Million Board Ft, unless otherwise specified. All vectors are numeric.
#' @format A data frame with 58 observations on 23 variables:
#' \itemize{
#' \item Prod.Tot. Production Total
#' \item Prod.SW. Production of Softwoods
#' \item Prod.HW. Production of Hardwoods
#' \item Imports.Tot. Total Imports
#' \item Imports.SW. Imports for Softwood
#' \item Imports.HW. Imports for Hardwoods
#' \item Imports.Mixed. Imports for Mixed Woods
#' \item Imports.Mixed.PercOfTot. Mixed Woods Percent of Total Imports
#' \item Imports.SW.PerOfTot. Softwoods Percent of Total Imports
#' \item Imports.HW.PercOfTot. Hardwoods Percent of Total Imports
#' \item Imports.Estimated.SW. Estimated Softwood Imports
#' \item Imports.Estimated.HW. Estimated Hardwood Imports
#' \item Exports.Tot. Total Exports
#' \item Exports.SW. Softwood Exports
#' \item Exports.HW. Hardwood Exports
#' \item Exports.Mixed. Mixed Woods Exports
#' \item Exports.Mixed.PercOfTot. Mixed Woods Percent of Total Exports
#' \item Exports.SW.PercOfTot. Softwoods Percent of Total Exports
#' \item Exports.HW.PercOfTot. Hardwoods Percent of Total Exports
#' \item Exports.Estimated.SW. Estimated Softwood Exports
#' \item Exports.Estimated HW. Estimated Hardwood Exports
#' \item NewSupply. New Supply
#' \item PerCapita. Per Capita Use, in Board ft.
#' }
#' @source USFS Estimations and Bureau of Census Data
#' @keywords hair1958
"hair1958"

###############################
#' @name hair1963
#' @title hair1963
#' @aliases hair1963
#' @docType data
#' @description
#' Estimated production, net imports, and apparent consumption of timber products in the US, 1900-1962
#' Most data is for products in the Industrial Roundwood Class. Each column except the first two and the last one
#' are in this category.
#' \itemize{
#' \item Dom.Prod.Tot. Total Domestic Production
#' \item ApparentConsumption. Apparent Consumption
#' \item Dom.Prod. Domestic Production, Total Ind RW
#' \item Imports. Net Imports, Total Ind RW
#' \item Prod.SW Softwood Production, Total Ind RW
#' \item Prod.HW Hardwood Production , Total Ind RW
#' \item LogChipImports.SW Softwood Log and Chip Imports, Total Ind RW
#' \item LogChipExports.SW Softwood Log and Chip Exports, Total Ind RW
#' \item LogChipImports.HW Hardwood Log and Chip Imports, Total Ind RW
#' \item LogChipExports.HW Hardwood Log and Chip Exports, Total Ind RW
#' \item SW.PctOfProd Softwoods as Percent of Production, Total Ind RW
#' \item Exports.SW.PctOfProd Softwood Exports as Percent of Production, Total Ind RW
#' \item Exports.HW.PctOfProd Hardwood Exports as Percent of Production, Total Ind RW
#' \item Imports.SW.PctOfConsump Softwood Imports as Percent of Production, Total Ind RW
#' \item Imports.HW.PctOfConsump Hardwood Imports as Percent of Production, Total Ind RW
#' \item SW.Lumber.PctOfTotLumbProd Softwood Lumber as Percent of Total Lumber Production, Total Ind RW
#' \item DV.Exports.Log.PctOfProd Dollar Value of Log Exports as Percent of Production, Total Ind RW
#' \item DV.Imports.Log.PctOfConsump Dollar Value of Log Imports as Percent of Consumption, Total Ind RW
#' \item Estimated.Imports Estimated Imports, Total Ind RW
#' \item Estimated.Exports Estimated Exports, Total Ind RW
#' \item Adj.Imports Adjusted Imports, Total Ind RW
#' \item Adj.Exports Adjust Exports, Total Ind RW
#' \item Estimated.Imports(tons) Estimated Imports in tons, Total Ind RW
#' \item Estimated.Exports(tons) Estimated Exports in tons, Total Ind RW
#' \item Adj.Imports(tons) Adjusted Imports in tons, Total Ind RW
#' \item Adj.Exports(tons) Adjust Exports in tons, Total Ind RW
#' \item ApparentConsumption.Total Apparent Conusmption, Total Ind RW
#' \item SawLogs.Dom.Prod Domestic Production of Saw Logs
#' \item SawLogs.NetImports Net Imports of Saw Logs
#' \item SawLogs.ApparentConsumption Apparent Consumption of Saw Logs
#' \item VeneerLogs.Dom.Prod Domestic Production of Veneer Logs
#' \item VeneerLogs.NetImports Net Imports of Veneer Logs
#' \item VeneerLogs.ApparentConsumption Apparent Consumption of Veneer Logs
#' \item PulpWood.Dom.Prod Domestic Production of Pulpwood
#' \item PulpWood.NetImports Net Imports of Pulpwood
#' \item PulpWood.ApparentConsumption Apparent Consumption of Pulpwood
#' \item Other.ApparentConsumption Apparent Consumption of Other Products
#' \item FuelWood.ApparentConsumption Apparent Consumption of Fuelwood
#' }
#' @format A data frame with 85 observations on 38 variables
#' @source US Department of Commerce and Agriculture and USFS Estimations
#' @keywords hair1963
"hair1963"

###############################
#' @name hair1963t20
#' @title hair1963t20
#' @aliases hair1963t20
#' @docType data
#' @description
#' Imports and exports of plywood, by softwood and hardwood in the US between 1935 and 1962 (estimates of 1927-34)
#' All units are in Thousand Sq Ft. All vectors are numeric.
#' \itemize{
#' \item Imports.Tot Total Plywood Imports
#' \item SW.Imports Softwood Imports
#' \item HW.Imports.Tot Total Hardwood Imports
#' \item HW.Imports.Birch Birch Imports
#' \item HW.Imports.Other Other Hardwoods Imports
#' \item Exports.Tot Total Plywood Exports
#' \item SW.Exports Softwood Exports
#' \item HW.Exports Hardwood Exports
#' }
#' @format A data frame with 36 observations on 8 variables
#' @source US Department of Commerce, Bureau of the Census
#' @keywords hair1963t20
"hair1963t20"

###############################
#' @name hair1963t21
#' @title hair1963t21
#' @aliases hair1963t21
#' @docType data
#' @description
#' Imports and exports of veneer, by kind, in the US 1935-1962 (estimates of 1927-34).
#' All units are in 1000 Sq. Ft.
#' \itemize{
#' \item Imports.Tot. Total Veneer Imports
#' \item Imports.BirchMaple. Birch or Maple Veneer Imports
#' \item Imports.Other. Other Products Imports
#' \item Exports.Tot Total Veneer Exports
#' \item Exports.Fancy,Face,Figured,Special. Exports of fancy, face, figured and special Veneer Products
#' \item Exports.UtilityCommericalContainer. Exports of utility, commerical and container Veneer Products
#' }
#' @format A data frame with 36 observations on 6 variables
#' @source US Department of Commerce, Bureau of the Census
#' @keywords hair1963t21
"hair1963t21"

################################
#' @name howard28
#' @title howard28
#' @docType data
#' @description
#' Lumber production, imports, exports, and consumption, by softwoods and hardwoods, 1965-1999.
#' All units are in Billion Board ft. unless otherwise specified. All vectors are numeric.
#' \itemize{
#' \item Prod.Tot. Total Lumber Production
#' \item Prod.SW. Softwood Lumber Production
#' \item Prod.HW. Hardwood Lumber Production
#' \item Imports.Tot. Total Lumber Imports
#' \item Imports.SW. Softwood Lumber Imports
#' \item Imports.HW. Hardwood Lumber Imports
#' \item Consump.Tot. Total Lumber Consumption
#' \item Consump.SW Softwood Lumber Consumption
#' \item Consump.HW. Hardwood Lumber Consumption
#' \item PerCapConsump.Tot. Total Per Capita Consumption, in Board ft.
#' \item PerCapConsump.SW. Softwood Per Capita Consumption, in Board ft.
#' \item PerCapConsump.HW. Hardwood Per Capita Consumption, in Board ft.
#' }
#' @format A data frame with 56 observations of 15 variables
#' @source None Listed (need to find)
#' @keywords howard28
"howard28"

################################
#' @name howard37
#' @title howard37
#' @docType data
#' @description
#' Plywood production, imports, exports, and consumption, by softwoods and hardwoods, 1965-1999 (3/8-in. basis)
#' All units are in Million Square ft. except for Per Capita values.
#' \itemize{
#' \item Prod.Tot. Total Plywood Production
#' \item Prod.SW. Softwood Plywood Production
#' \item Prod.HW. Hardwood Plywood Production
#' \item Imports.Tot. Total Plywood Imports
#' \item Imports.SW. Softwood Plywood Imports
#' \item Imports.HW. Hardwood Plywood Imports
#' \item Consump.Tot. Total Plywood Consumption
#' \item Consump.SW Softwood Plywood Consumption
#' \item Consump.HW. Hardwood Plywood Consumption
#' \item PerCapConsump.Tot. Total Per Capita Consumption, in Square ft.
#' \item PerCapConsump.SW. Softwood Per Capita Consumption, in Square ft.
#' \item PerCapConsump.HW. Hardwood Per Capita Consumption, in Square ft.
#' }
#' @format A data frame with 56 observations of 15 variables
#' @source
#' US Dept. of Commerce, Bureau of Census, American Plywood Association
#' The Engineered Wood Association, US Dept. of Agriculture, Foreign Agriculture Service
#' @keywords howard37
"howard37"

################################
#' @name howard38
#' @title howard38
#' @docType data
#' @description
#' Production, imports, exports, and consumption of structural panel products, by type, 1980-1999
#' \itemize{
#' \item Prod.Tot. Total Production
#' \item Prod.SWPlywood. Softwood Plywood Production
#' \item Prod.OSP. Other Structural Panels Production
#' \item Imports.Tot. Total Imports
#' \item Imports.SWPlywood. Softwood Plywood Imports
#' \item Imports.OSP. Other Structual Panels Imports
#' \item Exports.Tot. Total Exports
#' \item Exports.SWPlywood. Softwood Plywood Exports
#' \item Exports.OSP. Other Structural Panels Exports
#' \item Consump.Tot Total Consumption
#' \item Consump.SWPlywood. Softwood Plywood Consumption
#' \item Consump.OSP. Other Structural Panels Consumption
#' }
#' @format A data frame with 41 observations and 21 variables
#' @source
#' American Plywood Association, US Dept. of Agriculture
#' Foreign Agricultural Service
#' @keywords howard38
"howard38"

#' Paper and board production and fibrous materials consumed in the manufacture of paper and board, 1965–1999
#'
#' Dataset containing consumption and production statistics for various board and paper products.
#' Units are specified below.
#'
#' \itemize{
#' \item Prod.PaperBoard. Paper and Paperboard Production, in 1000 Tons
#' \item Consump.Tot. Total Consumption of Fibrous Materials, in 1000 Tons
#' \item Consump.WoodPulp. Consumption of Woodpulp, in 1000 Tons
#' \item Consump.RecPaper. Consumption of Recovered Paper, in 1000 Tons
#' \item Consump.Other. Consumption of Other Fibrous Materials, in 1000 Tons
#' \item Consump.PerTonProd.Tot. Total Consumption of Fibrous Material per ton of Paper and Board Produced, in Tons
#' \item Consump.PerTonProd.WoodPulp. Consumption of Wood pulp per ton of Paper and Board Produced, in Tons
#' \item Consump.PerTonProd.RecPaper. Consumption of Recovered Paper per ton of Paper and Board Produced, in Tons
#' \item Consump.PerTonProd.Other. Consumption of Other Fibrous Materials per ton of Paper and Board Produced, in Tons
#' \item RagsOther.RecPaperUtiRatePerc. Rags and Other: Recovered Paper Utilization Rate Percent
#' \item RagsOther.Prod.Estimated. Rags and Other: Estimated Production, in Thousand Tons
#' \item RagsOther.Imports.Estimated. Rags and Other: Estimated Imports, in Thousand Tons
#' \item RagsOther.Exports.Estimated. Rags and Other: Estimated Exports, in Thousand Tons
#' }
#' @format A data frame with 56 observations of 19 variables
#' @source American Paper Institute, American Forest & Paper Association: Statistics of Paper, Paperboard & Wood Pulp
"howard46"

#' Paper and board new supply and recyclable paper consumption, exports,  imports, and total recovered, 1965–1999
#'
#' Dataset containing consumption and production statistics for various board and paper products.
#' All units are in thousand tons unless otherwise specified.
#' Recovery rate is the ratio of total recovered paper collected to new supply of paper and paperboard.
#'
#' \itemize{
#' \item PaperBoardNewSupply. New supply of Paper and Board
#' \item RecPap.ConsumedatPaperBoardMills. Recyclable Paper Consumed at Paper and Board Mills
#' \item RecPap.MoldedPulpInsulationandOther. Recyclable Paper for Molded pulp, insulation and other uses
#' \item RecPap.Exports Recyclable Paper Exports
#' \item RecPap.Imports Recyclable Paper Imports
#' \item RecPap.TotRecovered. Total Recyclable Paper Recovered
#' \item RecPap.RecoveryRate. Recyclable Paper Recovery Rate, as a percent.
#' \item NoName. Recylable Paper Totals for certain years
#' \item Ratio.ExportstoProduction. Ratio of Exports to Production
#' \item Ratio.ImportstoProduction. Ratio of Imports to Production
#' }
#'
#' @format A data frame with 56 observations of 19 variables
#' @source 1972-Present, American Forest and Paper Association, 1999 Annual Statistical Summary Recovered
#'  Paper Utilization, p. 81 (6). 1965-1971, American Forest and Paper Association (2,4,5).
"howard47"


#' Wood pulp production, imports, exports, and consumption, 1965-1999
#'
#' Dataset containing woodpulp statistics.
#' All units are in thousand pounds unless otherwise specified.
#' Consumption = Production + Imports - Exports
#'
#' \itemize{
#' \item Production. Wood pulp Production
#' \item Imports. Wood pulp Imports
#' \item Imports.PercConsump. Imports as Percent of Consumption
#' \item Exports. Wood pulp Exports
#' \item Exports.PercProd. Exports as Percent of Production
#' \item Consump.Tot. Total Consumption
#' \item Consump.PerCap(pounds). Per Capita Consumption in pounds
#' }
#'
#' @format A data frame with 56 observations of 15 variables
#' @source U.S. Department of Commerce, Bureau of the Census (52,56,57); American Forest
#' and Paper Association (2,4); United Nations, Food and Agriculture Organization (29).
#' 1993-1997 revised to include dissolving and special alpha pulps, which is consistent with earlier years.
#' American Paper Institute; American Forest & Paper Association: Statistics of Paper, Paperboard & Wood Pulp;
#'  1977, 1982, 1990, 1995, 1998, 1999 annual Statistics reports (4).
#'  1965-1967, 1970, 1973, 1977-1978, 1986-1988 & 1997 revised.
#'  1966, 1968, 1972, 1975, 1985-1987 & 1996-1997 revised.
"howard49"

#' Production, imports, exports, and consumption of timber products, by major product, 1965-1999
#'
#' Dataset containing statistics for various timber products.
#' Prior to 1989, pulpwood chips are not included in total production.
#' All units are in million cubic ft.
#'
#' \itemize{
#' \item AllProducts.Prod Production for all timber products
#' \item AllProducts.Consump. Consumption for all timber products
#' \item Tot.Prod. Total Production for Industrial Roundwood
#' \item Tot.Improts Total Imports for Industrial Roundwood
#' \item Tot.Exports Tota Exports for Industrial Roundwood
#' \item Tot.Consump. Total Consumption for Industrial Roundwood
#' \item Lumber.Prod Production for Lumber Products
#' \item Lumber.Imports. Imports for Lumber Products
#' \item Lumber.Exports. Exports for Lumber Products
#' \item Lumber.Consump. Consumption for Lumber Products
#' \item PlywoodVeneer.Prod. Production for Plywood and Veneer Products
#' \item PlywoodVeneer.Imports. Imports for Plywood and Veneer Products
#' \item PlywoodVeneer.Exports. Exports for Plywood and Veneer Products
#' \item PlywoodVeneer.Consump. Consumption for Plywood and Veneer Products
#' \item Pulpwood.Prod. Production for Pulpwood Products
#' \item Pulpwood.Imports. Imports for Pulpwood Products
#' \item Pulpwood.Exports. Exports for Pulpwood Products
#' \item Pulpwood.Consump. Consumption for Pulpwood Products
#' \item OtherIndProductsandConsump Other Industrial Products, production and consumption.
#' \item Logs.Imports. Log Imports
#' \item Logs.Exports. Log Exports
#' \item PulpwoodChip.Imports. Pulpwood chip Imports
#' \item PulpwoodChip.Exports. Pulpwood chip Exports
#' \item FuelwoodProdandConsump. Fuelwood production and consumption
#' }
#'
#' @format A data frame with 56 observations of 24 variables
#' @source
"howard5"
