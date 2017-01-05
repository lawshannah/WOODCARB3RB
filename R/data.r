#' Timber products: Production, imports, exports, and new supply of lumber in the United States, specified years, 1799-1958
#'
#' Dataset containing statistics for timber products.
#' All units are in Million Board Ft, unless otherwise specified. All vectors are numeric.
#'
#' @format A data frame with 58 observations on 23 variables
#'
#' \itemize{
#' \item \strong{Prod.Tot} Production Total
#' \item \strong{Prod.SW} Production of Softwoods
#' \item \strong{Prod.HW} Production of Hardwoods
#' \item \strong{Imports.Tot} Total Imports
#' \item \strong{Imports.SW} Imports for Softwood
#' \item \strong{Imports.HW} Imports for Hardwoods
#' \item \strong{Imports.Mixed} Imports for Mixed Woods
#' \item \strong{Imports.Mixed.PercOfTot} Mixed Woods Percent of Total Imports
#' \item \strong{Imports.SW.PerOfTot} Softwoods Percent of Total Imports
#' \item \strong{Imports.HW.PercOfTot} Hardwoods Percent of Total Imports
#' \item \strong{Imports.Estimated.SW} Estimated Softwood Imports
#' \item \strong{Imports.Estimated.HW} Estimated Hardwood Imports
#' \item \strong{Exports.Tot} Total Exports
#' \item \strong{Exports.SW} Softwood Exports
#' \item \strong{Exports.HW} Hardwood Exports
#' \item \strong{Exports.Mixed} Mixed Woods Exports
#' \item \strong{Exports.Mixed.PercOfTot} Mixed Woods Percent of Total Exports
#' \item \strong{Exports.SW.PercOfTot} Softwoods Percent of Total Exports
#' \item \strong{Exports.HW.PercOfTot} Hardwoods Percent of Total Exports
#' \item \strong{Exports.Estimated.SW} Estimated Softwood Exports
#' \item \strong{Exports.Estimated HW} Estimated Hardwood Exports
#' \item \strong{NewSupply} New Supply
#' \item \strong{PerCapita} Per Capita Use, in Board ft.
#' }
#'
#' @source USFS Estimations and Bureau of Census Data
#' @keywords hair1958
"hair1958"

###############################
#' Estimated production, net imports, and apparent consumption of timber products in the US, 1900-1962
#'
#' Dataset containing estimated statistics for timber products. All vectors are numeric.
#' Most data is for products in the Industrial Roundwood Class. Each column except the first two and the last one
#' are in this category.
#'
#'@format A data frame with 85 observations on 38 variables
#'
#' \itemize{
#' \item \strong{Dom.Prod.Tot} Total Domestic Production
#' \item \strong{ApparentConsumption} Apparent Consumption
#' \item \strong{Dom.Prod} Domestic Production, Total Ind RW
#' \item \strong{Imports} Net Imports, Total Ind RW
#' \item \strong{Prod.SW} Softwood Production, Total Ind RW
#' \item \strong{Prod.HW} Hardwood Production , Total Ind RW
#' \item \strong{LogChipImports.SW} Softwood Log and Chip Imports, Total Ind RW
#' \item \strong{LogChipExports.SW} Softwood Log and Chip Exports, Total Ind RW
#' \item \strong{LogChipImports.HW} Hardwood Log and Chip Imports, Total Ind RW
#' \item \strong{LogChipExports.HW} Hardwood Log and Chip Exports, Total Ind RW
#' \item \strong{SW.PctOfProd} Softwoods as Percent of Production, Total Ind RW
#' \item \strong{Exports.SW.PctOfProd} Softwood Exports as Percent of Production, Total Ind RW
#' \item \strong{Exports.HW.PctOfProd} Hardwood Exports as Percent of Production, Total Ind RW
#' \item \strong{Imports.SW.PctOfConsump} Softwood Imports as Percent of Production, Total Ind RW
#' \item \strong{Imports.HW.PctOfConsump} Hardwood Imports as Percent of Production, Total Ind RW
#' \item \strong{SW.Lumber.PctOfTotLumbProd} Softwood Lumber as Percent of Total Lumber Production, Total Ind RW
#' \item \strong{DV.Exports.Log.PctOfProd} Dollar Value of Log Exports as Percent of Production, Total Ind RW
#' \item \strong{DV.Imports.Log.PctOfConsump} Dollar Value of Log Imports as Percent of Consumption, Total Ind RW
#' \item \strong{Estimated.Imports} Estimated Imports, Total Ind RW
#' \item \strong{Estimated.Exports} Estimated Exports, Total Ind RW
#' \item \strong{Adj.Imports} Adjusted Imports, Total Ind RW
#' \item \strong{Adj.Exports} Adjust Exports, Total Ind RW
#' \item \strong{Estimated.Imports(tons)} Estimated Imports in tons, Total Ind RW
#' \item \strong{Estimated.Exports(tons)} Estimated Exports in tons, Total Ind RW
#' \item \strong{Adj.Imports(tons)} Adjusted Imports in tons, Total Ind RW
#' \item \strong{Adj.Exports(tons)} Adjust Exports in tons, Total Ind RW
#' \item \strong{ApparentConsumption.Total} Apparent Conusmption, Total Ind RW.
#' Columns may not add to total because of rounding.
#' \item \strong{SawLogs.Dom.Prod} Domestic Production of Saw Logs
#' \item \strong{SawLogs.NetImports} Net Imports of Saw Logs.
#' Net imports of lumber converted to cubic feet roundwood.  Small quantities of imported saw logs (roundwood form) are included under domestic production.
#' \item \strong{SawLogs.ApparentConsumption} Apparent Consumption of Saw Logs.
#' Columns may not add to total because of rounding.
#' Includes changes in stocks beginning in 1935.
#' \item \strong{VeneerLogs.Dom.Prod} Domestic Production of Veneer Logs
#' \item \strong{VeneerLogs.NetImports} Net Imports of Veneer Logs.
#' Net imports of veneer logs represent the equivalent net imports of veneer and plywood converted to board feet log scale, and then to cubic feet round-wood.
#' The small volume of veneer logs imported (roundwood form) is included under domestic production.
#' \item \strong{VeneerLogs.ApparentConsumption} Apparent Consumption of Veneer Logs.
#' Columns may not add to total because of rounding.
#' \item \strong{PulpWood.Dom.Prod} Domestic Production of Pulpwood
#' \item \strong{PulpWood.NetImports} Net Imports of Pulpwood
#' \item \strong{PulpWood.ApparentConsumption} Apparent Consumption of Pulpwood
#' \item \strong{Other.ApparentConsumption} Apparent Consumption of Other Products
#' \item \strong{FuelWood.ApparentConsumption} Apparent Consumption of Fuelwood
#' }
#'
#' @source US Department of Commerce and Agriculture and USFS Estimations
#' @keywords hair1963
"hair1963"

###############################
#' United States imports and exports of plywood, by softwoods and hardwoods, 1935-62 (with estimates of 1927-34)
#'
#' Dataset containing import and export statistics for plywood products.
#' All units are in Thousand Sq Ft. All vectors are numeric.
#'
#' \itemize{
#' \item \strong{Imports.Tot} Total Plywood Imports
#' \item \strong{SW.Imports} Softwood Imports
#' \item \strong{HW.Imports.Tot} Total Hardwood Imports
#' \item \strong{HW.Imports.Birch} Birch Imports
#' \item \strong{HW.Imports.Other} Other Hardwoods Imports
#' \item \strong{Exports.Tot} Total Plywood Exports
#' \item \strong{SW.Exports} Softwood Exports
#' \item \strong{HW.Exports} Hardwood Exports
#' }
#'
#' @format A data frame with 36 observations on 8 variables
#' @source US Department of Commerce, Bureau of the Census
"hair1963t20"

###############################
#' Imports and exports of veneer, by kind, in the US 1935-1962 (estimates of 1927-34).
#'
#' Dataset containing import and export statistics for veneer products.
#' All units are in 1000 Sq. Ft. All vectors are numeric.
#'
#' \itemize{
#' \item \strong{Imports.Tot} Total Veneer Imports
#' \item \strong{Imports.BirchMaple} Birch or Maple Veneer Imports
#' \item \strong{Imports.Other} Other Products Imports
#' \item \strong{Exports.Tot} Total Veneer Exports
#' \item \strong{Exports.Fancy,Face,Figured,Special} Exports of fancy, face, figured and special Veneer Products
#' \item \strong{Exports.UtilityCommericalContainer} Exports of utility, commerical and container Veneer Products
#' }
#' @format A data frame with 36 observations on 6 variables
#' @source US Department of Commerce, Bureau of the Census
#' @keywords hair1963t21
"hair1963t21"

################################
#' Lumber production, imports, exports, and consumption, by softwoods and hardwoods, 1965-1999.
#'
#' Dataset containing statistics for lumber products.
#' All units are in Billion Board ft. unless otherwise specified. All vectors are numeric.
#' \itemize{
#' \item \strong{Prod.Tot} Total Lumber Production
#' \item \strong{Prod.SW} Softwood Lumber Production
#' \item \strong{Prod.HW} Hardwood Lumber Production
#' \item \strong{Imports.Tot} Total Lumber Imports
#' \item \strong{Imports.SW} Softwood Lumber Imports
#' \item \strong{Imports.HW} Hardwood Lumber Imports
#' \item \strong{Consump.Tot} Total Lumber Consumption
#' \item \strong{Consump.SW} Softwood Lumber Consumption
#' \item \strong{Consump.HW} Hardwood Lumber Consumption
#' \item \strong{PerCapConsump.Tot} Total Per Capita Consumption, in Board ft.
#' \item \strong{PerCapConsump.SW} Softwood Per Capita Consumption, in Board ft.
#' \item \strong{PerCapConsump.HW} Hardwood Per Capita Consumption, in Board ft.
#' }
#' @format A data frame with 56 observations of 15 variables
#' @source None Listed (need to find)
#' @keywords howard28
"howard28"

################################
#' Plywood production, imports, exports, and consumption, by softwoods and hardwoods, 1965-1999
#'
#' Dataset containing statisics for plywood products(3/8-in. basis).
#' All units are in Million Square ft. unless otherwise specified.
#' \itemize{
#' \item \strong{Prod.Tot} Total Plywood Production
#' \item \strong{Prod.SW} Softwood Plywood Production
#' \item \strong{Prod.HW} Hardwood Plywood Production
#' \item \strong{Imports.Tot} Total Plywood Imports
#' \item \strong{Imports.SW} Softwood Plywood Imports
#' \item \strong{Imports.HW} Hardwood Plywood Imports
#' \item \strong{Consump.Tot} Total Plywood Consumption
#' \item \strong{Consump.SW} Softwood Plywood Consumption
#' \item \strong{Consump.HW.} Hardwood Plywood Consumption
#' \item \strong{PerCapConsump.Tot} Total Per Capita Consumption, in Square ft.
#' \item \strong{PerCapConsump.SW} Softwood Per Capita Consumption, in Square ft.
#' \item \strong{PerCapConsump.HW} Hardwood Per Capita Consumption, in Square ft.
#' }
#' @format A data frame with 56 observations of 15 variables
#' @source
#' US Dept. of Commerce, Bureau of Census, American Plywood Association
#' The Engineered Wood Association, US Dept. of Agriculture, Foreign Agriculture Service
#' @keywords howard37
"howard37"

################################
#' Production, imports, exports, and consumption of structural panel products, by type, 1980-1999
#'
#' Datasets containing statistics for various structural panel products.
#' All units are in Million Square ft.
#' \itemize{
#' \item \strong{Prod.Tot} Total Production
#' \item \strong{Prod.SWPlywood} Softwood Plywood Production
#' \item \strong{Prod.OSP} Other Structural Panels Production
#' \item \strong{Imports.Tot} Total Imports
#' \item \strong{Imports.SWPlywood} Softwood Plywood Imports
#' \item \strong{Imports.OSP} Other Structual Panels Imports
#' \item \strong{Exports.Tot} Total Exports
#' \item \strong{Exports.SWPlywood} Softwood Plywood Exports
#' \item \strong{Exports.OSP} Other Structural Panels Exports
#' \item \strong{Consump.Tot} Total Consumption
#' \item \strong{Consump.SWPlywood} Softwood Plywood Consumption
#' \item \strong{Consump.OSP} Other Structural Panels Consumption
#' }
#' @format A data frame with 41 observations and 21 variables
#' @source
#' American Plywood Association, US Dept. of Agriculture
#' Foreign Agricultural Service
#' @keywords howard38
"howard38"

################################
#' Paper and board production and fibrous materials consumed in the manufacture of paper and board, 1965-1999
#'
#' Dataset containing consumption and production statistics for various board and paper products.
#' Units are specified below.
#'
#' \itemize{
#' \item \strong{Prod.PaperBoard}Prod.PaperBoard. Paper and Paperboard Production, in 1000 Tons
#' \item \strong{Consump.Tot} Total Consumption of Fibrous Materials, in 1000 Tons
#' \item \strong{Consump.WoodPulp} Consumption of Woodpulp, in 1000 Tons
#' \item \strong{Consump.RecPaper} Consumption of Recovered Paper, in 1000 Tons
#' \item \strong{Consump.Other} Consumption of Other Fibrous Materials, in 1000 Tons
#' \item \strong{Consump.PerTonProd.Tot} Total Consumption of Fibrous Material per ton of Paper and Board Produced, in Tons
#' \item \strong{Consump.PerTonProd.WoodPulp} Consumption of Wood pulp per ton of Paper and Board Produced, in Tons
#' \item \strong{Consump.PerTonProd.RecPaper} Consumption of Recovered Paper per ton of Paper and Board Produced, in Tons
#' \item \strong{Consump.PerTonProd.Other} Consumption of Other Fibrous Materials per ton of Paper and Board Produced, in Tons
#' \item \strong{RagsOther.RecPaperUtiRatePerc} Rags and Other: Recovered Paper Utilization Rate Percent
#' \item \strong{RagsOther.Prod.Estimated} Rags and Other: Estimated Production, in Thousand Tons
#' \item \strong{RagsOther.Imports.Estimated} Rags and Other: Estimated Imports, in Thousand Tons
#' \item \strong{RagsOther.Exports.Estimated} Rags and Other: Estimated Exports, in Thousand Tons
#' }
#' @format A data frame with 56 observations of 19 variables
#' @source American Paper Institute, American Forest & Paper Association: Statistics of Paper, Paperboard & Wood Pulp
"howard46"

################################
#' Paper and board new supply and recyclable paper consumption, exports, imports and total recovered, 1965-1999
#'
#' Dataset containing consumption and production statistics for various board and paper products.
#' All units are in thousand tons unless otherwise specified.
#' Recovery rate is the ratio of total recovered paper collected to new supply of paper and paperboard.
#'
#' \itemize{
#' \item \strong{PaperBoardNewSupply} New supply of Paper and Board
#' \item \strong{RecPap.ConsumedatPaperBoardMills} Recyclable Paper Consumed at Paper and Board Mills
#' \item \strong{RecPap.MoldedPulpInsulationandOther} Recyclable Paper for Molded pulp, insulation and other uses
#' \item \strong{RecPap.Exports} Recyclable Paper Exports
#' \item \strong{RecPap.Imports} Recyclable Paper Imports
#' \item \strong{RecPap.TotRecovered} Total Recyclable Paper Recovered
#' \item \strong{RecPap.RecoveryRate} Recyclable Paper Recovery Rate, as a percent.
#' \item \strong{NoName} Recylable Paper Totals for certain years
#' \item \strong{Ratio.ExportstoProduction} Ratio of Exports to Production
#' \item \strong{Ratio.ImportstoProduction} Ratio of Imports to Production
#' }
#'
#' @format A data frame with 56 observations of 19 variables
#' @source 1972-Present, American Forest and Paper Association, 1999 Annual Statistical Summary Recovered
#' Paper Utilization, p.81 (6). 1965-1971, American Forest and Paper Assocation (2,4,5).
#'
"howard47"

################################
#' Wood pulp production, imports, exports, and consumption, 1965-1999
#'
#' Dataset containing woodpulp statistics.
#' All units are in thousand pounds unless otherwise specified.
#' Consumption = Production + Imports - Exports
#'
#' \itemize{
#' \item \strong{Production} Wood pulp Production
#' \item \strong{Imports} Wood pulp Imports
#' \item \strong{Imports.PercConsump} Imports as Percent of Consumption
#' \item \strong{Exports} Wood pulp Exports
#' \item \strong{Exports.PercProd} Exports as Percent of Production
#' \item \strong{Consump.Tot} Total Consumption
#' \item \strong{Consump.PerCap(pounds)} Per Capita Consumption in pounds
#' }
#'
#' @format A data frame with 56 observations of 15 variables
#' @source
#' U.S. Department of Commerce, Bureau of the Census (52,56,57); American Forest
#' and Paper Association (2,4); United Nations, Food and Agriculture Organization (29).
#' 1993-1997 revised to include dissolving and special alpha pulps, which is consistent with earlier years.
#' American Paper Institute; American Forest & Paper Association: Statistics of Paper, Paperboard & Wood Pulp;
#'  1977, 1982, 1990, 1995, 1998, 1999 annual Statistics reports (4).
#'  1965-1967, 1970, 1973, 1977-1978, 1986-1988 & 1997 revised.
#'  1966, 1968, 1972, 1975, 1985-1987 & 1996-1997 revised.
"howard49"

################################
#' Production, imports, exports, and consumption of timber products, by major product, 1965-1999
#'
#' Dataset containing statistics for various timber products.
#' Prior to 1989, pulpwood chips are not included in total production.
#' All units are in million cubic ft.
#'
#' \itemize{
#' \item \strong{AllProducts.Prod} Production for all timber products
#' \item \strong{AllProducts.Consump} Consumption for all timber products
#' \item \strong{Prod.Tot} Total Production for Industrial Roundwood
#' \item \strong{Imports.Tot} Total Imports for Industrial Roundwood
#' \item \strong{Exports.Tot} Total Exports for Industrial Roundwood
#' \item \strong{Consump.Tot} Total Consumption for Industrial Roundwood
#' \item \strong{Lumber.Prod} Production for Lumber Products
#' \item \strong{Lumber.Imports} Imports for Lumber Products
#' \item \strong{Lumber.Exports} Exports for Lumber Products
#' \item \strong{Lumber.Consump} Consumption for Lumber Products
#' \item \strong{PlywoodVeneer.Prod} Production for Plywood and Veneer Products
#' \item \strong{PlywoodVeneer.Imports} Imports for Plywood and Veneer Products
#' \item \strong{PlywoodVeneer.Exports} Exports for Plywood and Veneer Products
#' \item \strong{PlywoodVeneer.Consump} Consumption for Plywood and Veneer Products
#' \item \strong{Pulpwood.Prod} Production for Pulpwood Products
#' \item \strong{Pulpwood.Imports} Imports for Pulpwood Products
#' \item \strong{Pulpwood.Exports} Exports for Pulpwood Products
#' \item \strong{Pulpwood.Consump} Consumption for Pulpwood Products
#' \item \strong{OtherIndProductsandConsump} Other Industrial Products, production and consumption.
#' \item \strong{Logs.Imports} Log Imports
#' \item \strong{Logs.Exports} Log Exports
#' \item \strong{PulpwoodChip.Imports} Pulpwood chip Imports
#' \item \strong{PulpwoodChip.Exports} Pulpwood chip Exports
#' \item \strong{FuelwoodProdandConsump} Fuelwood production and consumption
#' }
#'
#' @format A data frame with 56 observations of 24 variables
#' @source
#' U.S. Department of Agriculture, Forest Service(16, 69); Data may not add to totals because of rounding; Data have been revised.
"howard5"

################################
#' Particleboard and medium-density fiberboard production, imports,
#'
#' Dataset containing various statistics for particleboard and medium-density fiberboard.
#' All units are in Million Square ft unless otherwise specified.
#'
#' \itemize{
#' \item \strong{Prod.Tot} Total Particleboard and Medium-Density Fiberboard Production
#' \item \strong{Prod.ParticleBoard} Particleboard Production
#' \item \strong{Prod.MediumDensityFiberboard} Medium-Density Fiberboard Production
#' \item \strong{Imports} Particleboard and Medium-Density Fiberboard Imports
#' \item \strong{Exports} Particleboard and Medium-Density Fiberboard Exports
#' \item \strong{Consump.Tot} Total Particleboard and Medium-Density Fiberboard Consumption
#' \item \strong{Consump.PerCap(Sq ft)} Per Capita Consumption, in Square ft.
#' }
#'
#' @format A data frame with 56 observations of 7 variables
#' @source
#' National Particleboard Association (20); U.S. International Trade Commission (69);
#' U.S. Department of Agriculture (32).  Data may not add to totals because of rounding.
"howard53"

################################
#' Lumber production, imports, exports, and consumption, by softwoods and hardwoods, 1950-87
#'
#' Dataset containing various statistics for lumber products.
#' All units are in Billion Board Ft unless otherwise specified.
#' Year 1987 includes small volumes of mixed species (not classified as softwoods or hardwoods).
#' Data may not add to totals because of rounding. Estimates of softwood lumber production for certain years in the
#' late 1970's and early 1980's by the Bureau of the Census and some major softwood industry associations currently vary by as much as
#' 5 percent. Cooperative studies are underway to resolve these differences. Revisions made by Census as a result of these studies
#' will be reported in future issues of U.S. timber production, trade, consumption, and price statistics.
#'
#' \itemize{
#' \item \strong{Prod.Tot} Total Lumber Production
#' \item \strong{Prod.SW} Softwood Lumber Production
#' \item \strong{Prod.HW} Hardwood Lumber Prodcution
#' \item \strong{Imports.Tot} Total Lumber Imports
#' \item \strong{Imports.SW} Softwood Lumber Imports
#' \item \strong{Imports.HW} Hardwood Lumber Imports
#' \item \strong{Exports.Tot} Total Lumber Exports
#' \item \strong{Exports.SW} Softwood Lumber Exports
#' \item \strong{Exports.HW} Hardwood Lumber Exports
#' \item \strong{Consump.Tot} Total Lumber Consumption
#' \item \strong{Consump.SW} Softwood Lumber Consumption
#' \item \strong{Consump.HW} Hardwood Lumber Consumption
#' \item \strong{PerCapitaConsump.Tot} Total Lumber Consumption Per Capita, in Board ft.
#' \item \strong{PerCapitaConsump.SW} Softwood Lumber Consumption Per Capita, in Board ft.
#' \item \strong{PerCapitaConsump.HW} Hardwood Lumber Consumption Per Capita, in Board ft.
#' }
#'
#' @format A data frame with 38 observations of 15 variables
#' @source
#' U.S. Department of Commerce. Bureau of the Census (43.51.52)
#' U.S. Department of Agriculture, Forest Service; National Forest Products Association (16).
#' Data for selected years 1899.1949 in "The demand and price situation for forest products", 1964, table 7 (31)
"ulrich29"

################################
#' Plywood production, imports, exports, and consumption, by softwoods and hardwoods, 1950-87
#'
#' Dataset containing various statistics for plywood products. (3/8-inch basis)
#' All units are in Million Square ft unless otherwise specified.
#' Year 1987 includes small volumes of mixed species (not classified as softwoods or hardwoods).
#'
#' \itemize{
#' \item \strong{Prod.Tot} Total Plywood Production
#' \item \strong{Prod.SW} Softwood Plywood Production
#' \item \strong{Prod.HW} Hardwood Plywood Production
#' \item \strong{Imports.Tot} Total Plywood Imports
#' \item \strong{Imports.SW} Softwood Plywood Imports
#' \item \strong{Imports.HW} Hardwood Plywood Imports
#' \item \strong{Exports.Tot} Total Plywood Exports
#' \item \strong{Exports.SW} Softwood Plywood Exports
#' \item \strong{Exports.HW} Hardwood Plywood Exports
#' \item \strong{Consump.Tot} Total Plywood Consumption
#' \item \strong{Consump.SW} Softwood Plywood Consumption
#' \item \strong{Consump.HW} Hardwood Plywood Consumption
#' \item \strong{PerCapitaConsump.Tot} Total Plywood Consumption Per Capita, in Square ft
#' \item \strong{PerCapitaConsump.SW} Softwood Plywood Consumption Per Capita, in Square ft
#' \item \strong{PerCapitaConsump.HW} Hardwood Plywood Consumption Per Capita, in Square ft
#' }
#'
#' @format A data frame with 38 observations of 15 variables
#' @source
#' U.S. Department of Commerce, Bureauot Census (40,50.51,52)
#' American Plywood Association (5).
"ulrich36"

################################
#' Production, imports, exports. and consumption of timber products, by major product, 1950-87
#'
#' Dataset containing statistics for various timber products (hardwood and softwood).
#' All units are Million cubic ft (roundwood equivalent) unless otherwise specified.
#'
#' \itemize{
#' \item \strong{AllProducts.Prod} Production for all timber products
#' \item \strong{AllProducts.Consump} Consumption for all timber products
#' \item \strong{Tot.Prod} Total Production for major timber products
#' \item \strong{Tot.Imports} Total Imports for major timber products
#' \item \strong{Tot.Exports} Total Exports for major timber products
#' \item \strong{Tot.Consump} Total Consumption for major timber products
#' \item \strong{Lumber.Prod} Lumber Products Prodcution
#' \item \strong{Lumber.Imports} Lumber Products Imports
#' \item \strong{Lumber.Exports} Lumber Products Exports
#' \item \strong{Lumber.Consump} Lumber Products Consumption
#' \item \strong{PlywoodVeneer.Prod} Plywood and Veneer Products Production
#' \item \strong{PlywoodVeneer.Imports} Plywood and Veneer Products Imports
#' \item \strong{PlywoodVeneer.Exports} Plywood and Veneer Products Exports
#' \item \strong{PlywoodVeneer.Consump} Plywood and Veneer Products Consumption
#' \item \strong{PulpProducts.Prod} Pulp Products Production
#' \item \strong{PulpProducts.Imports} Pulp Products Imports
#' \item \strong{PulpProducts.Exports} Pulp Products Exports
#' \item \strong{PulpProducts.Consump} Pulp Products Consumption
#' \item \strong{OtherIndProducts.ProdandConsump} Production and Consumption for other industrial products
#' \item \strong{Logs.Imports} Log Imports
#' \item \strong{Logs.Exports} Log Exports
#' \item \strong{PulpwoodChip.Exports} Pulpwood-chip Exports
#' \item \strong{Fuelwood.ProdandConsump} Production and Consumption for fuelwood products
#' \item \strong{LogChipExports.PercofProduction} Log and Chip exports as a percent of production
#' }
#'
#' @format A data frame with 38 observations of 24 variables
#' @source
#' Based on data published by the U.S. Departments of Commerce and Agriculture.
#' Data for 1900-49 in "The demand and price situation for forest products 1964", table 2 (31),
"ulrich4"

################################
#' Production, imports, exports, and consumption of softwood timber products, by major product, 1950-87
#'
#' Dataset containing statistics for softwood timber products.
#' All units are in Million cubic ft(roundwood equivalent). All vectors
#' are numeric.
#'
#' \itemize{
#' \item \strong{AllProducts.Prod} Production for all timber products
#' \item \strong{AllProducts.Consump} Consumption for all timber products
#' \item \strong{Tot.Prod} Total Production for major timber products
#' \item \strong{Tot.Imports} Total Imports for major timber products
#' \item \strong{Tot.Exports} Total Exports for major timber products
#' \item \strong{Tot.Consump} Total Consumption for major timber products
#' \item \strong{Lumber.Prod} Lumber Products Prodcution
#' \item \strong{Lumber.Imports} Lumber Products Imports
#' \item \strong{Lumber.Exports} Lumber Products Exports
#' \item \strong{Lumber.Consump} Lumber Products Consumption
#' \item \strong{PlywoodVeneer.Prod} Plywood and Veneer Products Production
#' \item \strong{PlywoodVeneer.Imports} Plywood and Veneer Products Imports
#' \item \strong{PlywoodVeneer.Exports} Plywood and Veneer Products Exports
#' \item \strong{PlywoodVeneer.Consump} Plywood and Veneer Products Consumption
#' \item \strong{PulpProducts.Prod} Pulp Products Production
#' \item \strong{PulpProducts.Imports} Pulp Products Imports
#' \item \strong{PulpProducts.Exports} Pulp Products Exports
#' \item \strong{PulpProducts.Consump} Pulp Products Consumption
#' \item \strong{OtherIndProducts.ProdandConsump} Production and Consumption for other industrial products
#' \item \strong{Logs.Imports} Log Imports
#' \item \strong{Logs.Exports} Log Exports
#' \item \strong{PulpwoodChip.Exports} Pulpwood-chip Exports
#' \item \strong{Fuelwood.ProdandConsump} Production and Consumption for fuelwood products
#' \item \strong{LogChipExports.PercofProduction} Log and Chip exports as a percent of production
#' }
#'
#' @format A data frame with 38 observations of 24 variables
#' @source
#' Based on data published by the U.S. Departments of Commerce and Agriculture.
#' Data for 1900-49 in The demand and price situation for forest products 1964, table 2 (31),
"ulrich5"

################################
#' Production, imports, exports and consumption of insulating board, 1950-1987
#' Also includes historical production and exports data from 1925-1950.
#'
#' Dataset contains statistics for insulating board.
#' All units are in million square ft unless otherwise specified. All vectors are numeric.
#'
#' \itemize{
#' \item \strong{HardBoard.Prod} HardBoard Production
#' \item \strong{HardBoard.Import} HardBoard Imports
#' \item \strong{HardBoard.Exports} HardBoard Exports
#' \item \strong{HardBoard.Consump.Tot} Total HardBoard Consumption
#' \item \strong{HardBoard.Consump.PerCapita} HardBoard Consumption Per Capita
#' }
#'
#' @format A data frame with 72 observations of 5 variables
#' @source
#' U.S. Department of Commerce, Bureau of the Census (48,51, 52);
#' American Paper Institute (3, 4); American Hardboard Association.
#' Data from Ince,2000, Industrial Wood Productivity in the United States, 1900-1998.
#'
"ulrich54"

################################
#' Production, imports, exports, and consumption of hardwood timber products, by major product, 1950-87
#'
#' Dataset containing statistics for hardwood timber products.
#' All units are in million cubic ft.
#'
#' \itemize{
#' \item \strong{AllProduction.Prod} Total production of all products
#' \item \strong{AllProduct.Consump} Total consumption of all products
#' \item \strong{Indu.RW.Tot.Prod} Total production of all industrial roundwood products
#' \item \strong{Indu.RW.Tot.Imports} Total imports of all industrial roundwood products
#' \item \strong{Indu.RW.Tot.Exports} Total exports of all industrial roundwood products
#' \item \strong{Indu.RW.Tot.Consump} Total consumption of all industrial roundwood products
#' \item \strong{Indu.RW.Lum.Prod} Production of lumber products
#' \item \strong{Indu.RW.Lum.Imports} Imports of lumber products
#' \item \strong{Indu.RW.Lum.Exports} Exports of lumber products
#' \item \strong{Indu.RW.Lum.Consump} Consumption of lumber products
#' \item \strong{Indu.RW.PlyandVen.Prod} Production of plywood and veneer products
#' \item \strong{Indu.RW.PlyandVen.Imports} Imports of plywood and veneer products
#' \item \strong{Indu.RW.PlyandVen.Exports} Exports of plywood and veneer products
#' \item \strong{Indu.RW.PlyandVen.Consump} Consumption of plywood and veneer products
#' \item \strong{Indu.RW.Pulp.Prod} Production of pulp products
#' \item \strong{Indu.RW.Pulp.Imports} Imports of pulp products
#' \item \strong{Indu.RW.Pulp.Exports} Exports of pulp products
#' \item \strong{Indu.RW.Pulp.Consump} Consumption of pulp products
#' \item \strong{Indu.RW.OtherIndustrial.ProdAndConsump} Production and consumption of Other industrial roundwood products
#' \item \strong{Indu.RW.Logs.Imports} Imports of logs
#' \item \strong{Indu.RW.Logs.Exports} Exports of logs
#' \item \strong{FuelWood.ProdAndConsumption} Production and Consumption of Fuelwood
#' \item \strong{UnNamed1} Unnamed
#' }
#'
#' @format A data frame with 48 observations of 22 variables.
#' @source  Based on data published by the U.S. Departments of Commerce and Agriculture.
#'
"ulrich6"

#########################################
#' U.S. Paper & Paperboard, Production, Imports, Exports, Apparent Consumption, 1900 - 2050
#' Data set containing statistics for paper and paperboard in the U.S.
"IncePaper"

#'  U.S. Annual industrial wood product in conventional units of measure.
#'  :(units are in Million feet squared 3/8in.):
#'
#' @format A data frame with 151 observations of  25 variables
#' \itemize{
#' \item \strong{SW.Ply} (Softwood Plywood units: million ft^2, 3/8 in)
#' \item \strong{OSB.Wafer.board} (OSB/ Wafer board units: million ft^2, 3/8 in)
#' \item \strong{Lam.Ven.Lumb}(Laminated Veneer lumber units: million ft^3)
#' \item \strong{HW.Ply.Ven}(Hardwood, Plywood and veneer units: million ft^2, 3/8 in)
#' \item \strong{SW.Lumb}(Softwood lumber units: million bd. ft.)
#' \item \strong{HW.Lumb}(Hardwood lumber units: million bd. ft.)
#' \item \strong{Lumb.Pallet.Plant}(Lumber made at Pallet plants units: million bd. ft.)
#' \item \strong{PartBoard.Prod}(Particalboard production units: million ft^2, 3/4 in.)
#' \item \strong{Hardboard.Prod}(Hardboard production units: million ft^2, 1/8 in.)
#' \item \strong{MDF.Pro}(MDF production units: million ft^2, 3/4 in.)
#' \item \strong{Pulp.Paper.Board}(Pulp, paper and board production units: Thousand tons)
#' \item \strong{Other.Products}(Other industrial products units: million ft^3)
#' \item \strong{InsulatingBoard}(Insulating board units: million ft^2, 1/2 in.)
#' \item \strong{Fuelwood}(Fuelwood units: million ft^3)
#' \item \strong{FuelwoodT}(Fuelwood units: Thousand short tons)
#' \item \strong{Log.Chip.Exports}(Log and Chip exports units: Thousand short tons)
#' \item \strong{RW.Dom.Prod}(Roundwood Equivalent of Domestic Product Output units: Thousand short tons)
#' \item \strong{Estimated.Tot.Dom.Timber}(Estimated Total Domestic Timber Harvest units: Thousand short tons)
#' }
#' @format A data frame with 151 observations of  25 variables
#' @source  Sources listed on the excel spread from the National Forest Services
#' @keywords ince1
"ince1"




#' Insulating board production, imports, exports, and consumption, 1965-1999.
#' @format A data frame with 56 observations of  5 variables. (all units in thousand tons except when specified otherwise):
#' \itemize{
#' \item \code{Production} (Production)
#' \item \code{Imports}(Imports)
#' \item \code{Exports}(Exports)
#' \item \code{Total}(Total)
#' \item \code{PerCapita}(Per Capita units: Pounds)
#' }
#' @source USFS Estimations and Bureau of Census Data
#' @keywords howard55
"howard55"




#' Hardboard production, imports, exports and consumption, 1965-1999.
#' @format A data frame with 56 observations on 5 variables. (all units are in million square feet except when specified otherwise)
#' \itemize{
#' \item \code{Production} (Production)
#' \item \code{Imports}(Imports)
#' \item \code{Exports}(Exports)
#' \item \code{Total}(Total)
#' \item \code{PerCapita}(Per Capita units: Square feet)
#' }
#' @source USFS Estimations and Bureau of Census Data
#' @keywords howard56
"howard56"


#' Production, imports, exports, and consumption of softwood products, by major product, 1965-1999.
#' @format A data frame with 56 observations on 34 variables. (all units are in million cubic feet except when specified otherwise)
#' \itemize{
#' \item \code{AllProduction.Prod} (All products production)
#' \item \code{AllProduct.Consump}(All products consumption)
#' \item \code{Ind.RW.Tot.Prod}(Industrial roundwood uses total production)
#' \item \code{Ind.RW.Tot.Imports}(Industrial roundwood uses total imports)
#' \item \code{Ind.RW.Tot.Exports}(Industrial roundwood uses total exports)
#' \item \code{Ind.RW.Tot.Consump}(Industrial roundwood uses total consumption)
#' \item \code{Ind.RW.Lum.Prod}(Industrial roundwood uses lumber production)
#' \item \code{Ind.RW.Lum.Imports}(Industrial roundwood uses lumber imports)
#' \item \code{Ind.RW.Lum.Exports}(Industrial roundwood uses lumber exports)
#' \item \code{Ind.RW.Lum.Consump}(Industrial roundwood uses lumber consumption)
#' \item \code{Ind.RW.PlyandVen.Prod}(Industrial roundwood uses plywood and veneer production)
#' \item \code{Ind.RW.PlyamdVen.Imports}(Industrial roundwood uses plywood and veneer imports)
#' \item \code{Ind.RW.PlyandVen.Exports}(Industrial roundwood uses plywood and veneer exports)
#' \item \code{Ind.RW.PlyandVen.Consump}(Industrial roundwood uses plywood and veneer consumption)
#' \item \code{IndRW.Pulp.Prod}(Industrial roundwood uses pulp-based products production)
#' \item \code{Ind.RW.Pulp.Imports}(Industrial roundwood uses pulp-based products imports)
#' \item \code{Ind.RW.Pulp.Exports}(Industrial roundwood uses pulp-based products exports)
#' \item \code{Ind.RW.Pulp.Consump}(Industrial roundwood uses pulp-based products consumption)
#' \item \code{Ind.RW.OtherIndustrial.ProdAndConsump}(Other industrial product production and consumption)
#' \item \code{Ind.RW.Logs.Imports}(Industrial roundwood uses log imports)
#' \item \code{Ind.RW.Logs.Exports}(Industrial roundwood uses log exports)
#' \item \code{Ind.RW.Pulp.Imports}(Industrial roundwood uses pulpwood chip imports)
#' \item \code{Ind.RW.Pulp.Exports}(Industrial roundwood uses pulpwood chip exports)
#' \item \code{FuelWood.ProdAndConsumption}(Fuelwood production and consumption)
#' \item \code{UnNamed1}
#' \item \code{UnNamed2}
#' \item \code{UnNamed3}
#' \item \code{UnNamed4}
#' \item \code{UnNamed5}
#' \item \code{UnNamed6}
#' \item \code{UnNamed7}
#' \item \code{UnNamed8}
#' \item \code{UnNamed9}
#' \item \code{UnNamed10}
#' }
#' @source USFS Estimations and Bureau of Census Data
#' @keywords howard6
"howard6"


#' Production, imports, exports, and consumption of softwood products, by major product, 1965-1999.
#' @format A data frame with 56 observations on 31 variables. (all units are in million cubic feet except when specified otherwise)
#' \itemize{
#' \item \code{AllProduction.Prod} (All products production)
#' \item \code{AllProduct.Consump}(All products consumption)
#' \item \code{Indu.RW.Tot.Prod}(Industrial roundwood uses total production)
#' \item \code{Indu.RW.Tot.Imports}(Industrial roundwood uses total imports)
#' \item \code{Indu.RW.Tot.Exports}(Industrial roundwood uses total exports)
#' \item \code{Indu.RW.Tot.Consump}(Industrial roundwood uses total consumption)
#' \item \code{Indu.RW.Lum.Prod}(Industrial roundwood uses lumber production)
#' \item \code{Indu.RW.Lum.Imports}(Industrial roundwood uses lumber imports)
#' \item \code{Indu.RW.Lum.Exports}(Industrial roundwood uses lumber exports)
#' \item \code{Indu.RW.Lum.Consump}(Industrial roundwood uses lumber consumption)
#' \item \code{Indu.RW.PlyandVen.Prod}(Industrial roundwood uses plywood and veneer production)
#' \item \code{Indu.RW.PlyamdVen.Imports}(Industrial roundwood uses plywood and veneer imports)
#' \item \code{Indu.RW.PlyandVen.Exports}(Industrial roundwood uses plywood and veneer exports)
#' \item \code{Indu.RW.PlyandVen.Consump}(Industrial roundwood uses plywood and veneer consumption)
#' \item \code{Indu.RW.Pulp.Prod}(Industrial roundwood uses pulp-based products production)
#' \item \code{Indu.RW.Pulp.Imports}(Industrial roundwood uses pulp-based products imports)
#' \item \code{Indu.RW.Pulp.Exports}(Industrial roundwood uses pulp-based products exports)
#' \item \code{Indu.RW.Pulp.Consump}(Industrial roundwood uses pulp-based products consumption)
#' \item \code{Indu.RW.OtherIndustrial.ProdAndConsump}(Other industrial product production and consumption)
#' \item \code{Indu.RW.Logs.Imports}(Industrial roundwood uses log imports)
#' \item \code{Indu.RW.Logs.Exports}(Industrial roundwood uses log exports)
#' \item \code{Indu.RW.Pulp.Imports}(Industrial roundwood uses pulpwood chip imports)
#' \item \code{Indu.RW.Pulp.Exports}(Industrial roundwood uses pulpwood chip exports)
#' \item \code{FuelWood.ProdAndConsumption}(Fuelwood production and consumption)
#' \item \code{UnNamed1}
#' \item \code{UnNamed2}
#' \item \code{UnNamed3}
#' \item \code{UnNamed4}
#' \item \code{UnNamed5}
#' \item \code{UnNamed6}
#' }
#' @source USFS Estimations and Bureau of Census Data
#' @keywords howard7
"howard7"



#' Particleboard and medium density fiberboard production, imports, exports, and consumption, 1950-87
#' @format A data frame with 38 observations of  7 variables. (all units in millions square feet except when specified otherwise):
#' \itemize{
#' \item \code{Prod.tot} (Production Total)
#' \item \code{Prod.Part.Board}(Production of Partical Board)
#' \item \code{Prod.Med.Fiberboard}(Medium Density Fiberboard)
#' \item \code{Imports}(Imports)
#' \item \code{Exports}(Exports)
#' \item \code{Consump.Tot}(Consumption Total)
#' \item \code{Consump.PerCapita}(Consumption Per Capits (square feet))
#' }
#' @source U.S. Department of Commerce, Bureau of the Census
#' @keywords ulrich52
"ulrich52"


#' Insulating board production, imports, exports, and consumption, 1950-87
#' @format A data frame with 63 observations of  6 variables. (all units in millions square feet except when specified otherwise):
#' \itemize{
#' \item \code{InsulatingBoard.Prod} (Insulating Board Production)
#' \item \code{InsulatingBoard.Import}(Insulating Board Imports)
#' \item \code{InsulatingBoard.Exports}(Inulating Board Exports)
#' \item \code{InsulatingBoard.Consump.Tot}(Insulating Board consumption total)
#' \item \code{InsulatingBoard.Consump.PerCapita}(Insulating Board consumption per capita (square feet))
#' }
#' @source U.S. Department of Commerce, Bureau of the Census
#' @keywords ulrich53
"ulrich53"


#' Half Lives
#'
#' Half lives for different end uses.
#'
#' @format A data frame with 151 observations of 16 variables.
#' \itemize{
#' \item \strong{House.SingFam} Single Family Homes
#' \item \strong{House.Multifam} Multi Family Homes
#' \item \strong{House.MobHom} Mobile Homes
#' \item \strong{Res.Upkeep} Total Residential Upkeep and Improvement
#' \item \strong{New.Nonres.AllRR} All Railroads
#' \item \strong{New.Nonres.Rties} Railroad Ties
#' \item \strong{New.Nonres.Rcar.Repair} Railcar Repair
#' \item \strong{Manu.HouseFurniture} Household Furniture
#' \item \strong{Manu.CommFurniture} Commercial Furniture
#' \item \strong{Manu.OtherProducts} Manufacturing - Other Products
#' \item \strong{Shipping.Tot} Shipping
#' \item \strong{Other.Uses.Tot} Other Uses
#' \item \strong{other.industrial.tot} Uses For Other Industrial Products
#' }
#'
#' @source USFS data
#' @keywords halfLives
#'
"halfLives"


###############################
#' Consumption of Fibrous Materials in Paper and Board Manufacture in the United States
#' from 1900 to 1974.
#'
#' Dataset containing estimated and reported statistics. All units are
#' in tons, air dry weight.
#'
#' @format A data frame with 75 observations of 5 variables
#'
#' \itemize{
#' \item \strong{Wood.Pulp} Consumption of Wood Pulp
#' \item \strong{Waste.Paper} Consumption of Waste Paper
#' \item \strong{Rags} Consumption of Rags
#' \item \strong{?Findout} This might be other?
#' \item \strong{Other} Consumption of Other Fibrous Materials
#' \item \strong{Total} Total Consumption of Fibrous Materials
#' }
#'
#' @source Estimated using best available data and historical patterns. Some data
#' is original but no source in spreadsheet.
#' @keywords apiFiberpulp
"apiFiberpulp"

###############################
#' Summary of Total Wood Pulp Statistics in the United States
#' from 1899 to 1972 with necessary statistics from 1869, 1879, 1889
#'
#' All units are in tons of 2000 pounds, air dry weight.
#' All vectors are numeric.
#'
#' @format A data frame with 77 observations of 11 variables
#'
#' \itemize{
#' \item \strong{Prod} Production of Wood Pulp
#' \item \strong{Imports} Imports of Wood Pulp
#' \item \strong{Exports} Exports of Wood Pulp
#' \item \strong{NewSupply} New Supply of Wood Pulp
#' \item \strong{Consump.Paper.Board} Consumption in Paper & Board
#' \item \strong{WastePaper.Estimated.Prod} Estimated Production of Waste Paper
#' \item \strong{WastePaper.Estimated.Imports} Estimated Imports of Waste Paper
#' \item \strong{WastePaper.Estimated.Exports} Estimated Exports of Waste Paper
#' \item \strong{Rags.Estimated.Prod} Estimated Production of Rags and Other
#' \item \strong{Rags.Estimated.Imports} Estimated Imports of Rags and Other
#' \item \strong{Rags.Estimated.Exports} Estimated Exports of Rags and Other
#' }
#'
#' @source 1869 -  1962 U.  S.  Bureau of the Census
#' 1963 -          Pulp Producers Division, A.  P.  I.
#' Imports,  Exports,  Consumption -  Bureau of the Census
#' New Supply  - Production plus Imports minus Exports
#'
#' @keywords apiTotalWoodPulp
"apiTotalWoodPulp"

###############################
#' Lumber wood  in single and multifamily houses build 1800 to 1900
#'
#' All vectors are numeric. All units are ?.
#'
#' @format A vector with 151 observations of 1 variable.
#'
#' \itemize{
#' \item \strong{Carbon} Lumber wood  in single and multifamily houses
#' }
#'
#' @source 'ftp://ftp2.fs.fed.us/incoming/fpl/Skog/[Woodcarb II special lumber July 5 2007 Base Case.xls]SW Calc'!$V3878
#' @keywords lumberpre1900
"lumberpre1900"

###############################
#' Fractions of Sawnwood production used in various end uses
#'
#' All units are percentages and all vectors are numeric.
#'
#' @format A data frame with 151 observations of 16 variables.
#'
#' \itemize{
#' \item \strong{House.SingFam} Single Family Homes
#' \item \strong{House.Multifam} Multi Family Homes
#' \item \strong{House.MobHom} Mobile Homes
#' \item \strong{Res.Upkeep} Total Residential Upkeep and Improvement
#' \item \strong{New.Nonres.AllRR} All Railroads
#' \item \strong{New.Nonres.Rties} Railroad Ties
#' \item \strong{New.Nonres.Rcar.Repair} Railcar Repair
#' \item \strong{Manu.HouseFurniture} Household Furniture
#' \item \strong{Manu.CommFurniture} Commercial Furniture
#' \item \strong{Manu.OtherProducts} Manufacturing - Other Products
#' \item \strong{Shipping.Tot} Shipping
#' \item \strong{Other.Uses.Tot} Other Uses
#' \item \strong{other.industrial.tot} Uses For Other Industrial Products
#' }
#'
#' @source Check spreadsheet - values entered in
#' @keywords fracsawnwood
"fracsawnwood"

###############################
#' Fractions of Structual Panel production used in various end uses
#'
#' All units are percentages and all vectors are numeric.
#'
#' @format A data frame with 151 observations of 16 variables.
#'
#' \itemize{
#' \item \strong{House.SingFam} Single Family Homes
#' \item \strong{House.Multifam} Multi Family Homes
#' \item \strong{House.MobHom} Mobile Homes
#' \item \strong{Res.Upkeep} Total Residential Upkeep and Improvement
#' \item \strong{New.Nonres.AllRR} All Railroads
#' \item \strong{New.Nonres.Rties} Railroad Ties
#' \item \strong{New.Nonres.Rcar.Repair} Railcar Repair
#' \item \strong{Manu.HouseFurniture} Household Furniture
#' \item \strong{Manu.CommFurniture} Commercial Furniture
#' \item \strong{Manu.OtherProducts} Manufacturing - Other Products
#' \item \strong{Shipping.Tot} Shipping
#' \item \strong{Other.Uses.Tot} Other Uses
#' \item \strong{other.industrial.tot} Uses For Other Industrial Products
#' }
#'
#' @source Check spreadsheet - values entered in
#' @keywords fracstrpanels
"fracstrpanels"

###############################
#' Fractions of Non-Structural Panel production used in various end uses
#'
#' All units are percentages and all vectors are numeric.
#'
#' @format A data frame with 151 observations of 16 variables.
#'
#' \itemize{
#' \item \strong{House.SingFam} Single Family Homes
#' \item \strong{House.Multifam} Multi Family Homes
#' \item \strong{House.MobHom} Mobile Homes
#' \item \strong{Res.Upkeep} Total Residential Upkeep and Improvement
#' \item \strong{New.Nonres.AllRR} All Railroads
#' \item \strong{New.Nonres.Rties} Railroad Ties
#' \item \strong{New.Nonres.Rcar.Repair} Railcar Repair
#' \item \strong{Manu.HouseFurniture} Household Furniture
#' \item \strong{Manu.CommFurniture} Commercial Furniture
#' \item \strong{Manu.OtherProducts} Manufacturing - Other Products
#' \item \strong{Shipping.Tot} Shipping
#' \item \strong{Other.Uses.Tot} Other Uses
#' \item \strong{other.industrial.tot} Uses For Other Industrial Products
#' }
#'
#' @source Check spreadsheet - values entered in
#' @keywords fracnonstrpanels
"fracnonstrpanels"

###############################
#' Fraction of wood lost when placed in use from various end uses.
#'
#' All units are percentages and all vectors are numeric.
#'
#' @format A data frame with 151 observations of 16 variables.
#'
#' \itemize{
#' \item \strong{House.SingFam} Single Family Homes
#' \item \strong{House.Multifam} Multi Family Homes
#' \item \strong{House.MobHom} Mobile Homes
#' \item \strong{Res.Upkeep} Total Residential Upkeep and Improvement
#' \item \strong{New.Nonres.AllRR} All Railroads
#' \item \strong{New.Nonres.Rties} Railroad Ties
#' \item \strong{New.Nonres.Rcar.Repair} Railcar Repair
#' \item \strong{Manu.HouseFurniture} Household Furniture
#' \item \strong{Manu.CommFurniture} Commercial Furniture
#' \item \strong{Manu.OtherProducts} Manufacturing - Other Products
#' \item \strong{Shipping.Tot} Shipping
#' \item \strong{Other.Uses.Tot} Other Uses
#' \item \strong{other.industrial.tot} Uses For Other Industrial Products
#' }
#'
#' @source Check spreadsheet - values entered in
#' @keywords lossIU
"lossIU"

###############################
#' Percent of paper that goes to landfills.
#'
#' Units are percentages and the vector is numeric.
#'
#' @format A data frame with 151 observations of 1 variable.
#'
#' \itemize{
#' \item \strong{PaperToLandfills} Percent of paper that goes to landfills
#' }
#'
#' @source Linked site, check spreadsheet
#' @keywords paperToLandFills
"paperToLandFills"

#####################
#' Recovered Fibre Pulp in the United States from 1998 to 2013
#'
#' All units are in metric tons and all vectors are numeric.
#'
#' @format A data frame with 16 observations of 3 variables
#'
#' \itemize{
#' \item \strong{Prod.Quantity} Production Quantity of Recovered Fibre Pulp
#' \item \strong{Imports.Quantity} Imports Quantity of Recovered Fibre Pulp
#' \item \strong{Exports.Quantity} Exports Quantity of Recovered Fibre Pulp
#' }
#'
#' @source from AF&PA Paper, paperboard & wood pulp, A Monthly statistical summary
#' @keywords usaFiberPulp
"usaFiberPulp"

#####################
#' Percent of wood to dumps
#'
#' Gives percentage of all wood that goes to dumps.
#'
#' @format A data frome with 151 observations of 1 variable
#'
#' \itemize{
#' \item \strong{WoodToDumps} Percentage of wood that goes to dumps
#' }
#'
#' @source Linked spreadsheet (check this)
#' @keywords woodToDumps
"woodToDumps"

#####################
#' Percentage of wood to landfills
#'
#' Gives percentage of all wood that goes to landfills.
#'
#' @format A data frame with 151 observations of 1 variable
#' \describe{
#'   \item\strong{{WoodToLandFills}}{Percentage of wood going to landfills}
#' }
#' @source Linked spreadsheet (check this)
"woodToLandFills"

#' Prices of 50,000 round cut diamonds.
#'
#' A dataset containing the prices and other attributes of almost 54,000
#' diamonds.
#'
#' @format A data frame with 53940 rows and 10 variables:
#' \describe{
#'   \item{price}{price, in US dollars}
#'   \item{carat}{weight of the diamond, in carats}
#'   ...
#' }
#' @source \url{http://www.diamondse.info/}
"diamonds"

#######################
#' Total production, productivity, recovered paper utilization, and per capita production
#'
#' Dataset containing industrial wood and roundwood statistics,
#' productivity, recovered paper utilization rate and per capita
#' indudustrial wood production.
#'
#' @format A data frame with 151 observations of 15 variables.
#' \itemize{
#' \item \strong{Total.Industrial.Wood.Product.Production} Industrial wood production in thousand tons
#' \item \strong{Roundwood.Equivalents.of.Production.Hardwoods} Hardwood production in million ft<sup>3</sup>
#' \item \strong{Roundwood.Equivalents.of.Production.Softwoods} Softwood production in million ft<sup>3</sup>
#' \item \strong{Roundwood.Equivalents.of.Production.Totals.millionftcubed} Production totals in million ft<sup>3</sup>
#' \item \strong{Roundwood.Equivalents.of.Production.Totals.thousand.short.tons} Production totals in thousand short tons
#' \item \strong{Roundwood.Equivalents.of.Production.Totals.thousand.metric.tons} Production totals in thousand metric tons
#' \item \strong{Industrial.Wood.Productivity.lbs.ftsquared} Industrial wood product output per unit of roundwood input in (lbs/ft3)
#' \item \strong{Industrial.Wood.Productivity} Industrial wood product output per unit of roundwood input in tons/tons
#' \item \strong{Recovered.Paper.Utilization.Rate(AF&PA)} Recovered paper utilization rate
#' \item \strong{U.S.Population} United States population in millions
#' \item \strong{Per.Capita.Industrial.Wood.Product.Production} Per capita industrial wood product production, lbs/capita
#' \item \strong{HW.Agrifiber} Hardwood Agrifiber (units?)
#' \item \strong{HW.Roundwood} Hardwood Roundwood (units?)
#' \item \strong{U.S.Timber.Harvest} United States Timber Harvest
#' }
#' @source
"InceTable3"









