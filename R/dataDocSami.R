#' @name ince1
#' @title ince1
#' @docType data
#' @description U.S. Annual industrial wood product in conventional units of measure.
#' @format A data frame with 151 observations of  25 variables:(units are in Million feet squared 3/8in.):
#' \itemize{
#' \item \code{SW.Ply} (Softwood Plywood units: million ft^2, 3/8 in)
#' \item \code{OSB.Wafer.board} (OSB/ Wafer board units: million ft^2, 3/8 in)
#' \item \code{Lam.Ven.Lumb}(Laminated Veneer lumber units: million ft^3)
#' \item \code{HW.Ply.Ven}(Hardwood, Plywood and veneer units: million ft^2, 3/8 in)
#' \item \code{SW.Lumb}(Softwood lumber units: million bd. ft.)
#' \item \code{HW.Lumb}(Hardwood lumber units: million bd. ft.)
#' \item \code{Lumb.Pallet.Plant}(Lumber made at Pallet plants units: million bd. ft.)
#' \item \code{PartBoard.Prod}(Particalboard production units: million ft^2, 3/4 in.)
#' \item \code{Hardboard.Prod}(Hardboard production units: million ft^2, 1/8 in.)
#' \item \code{MDF.Pro}(MDF production units: million ft^2, 3/4 in.)
#' \item \code{Pulp.Paper.Board}(Pulp, paper and board production units: Thousand tons)
#' \item \code{Other.Products}(Other industrial products units: million ft^3)
#' \item \code{InsulatingBoard}(Insulating board units: million ft^2, 1/2 in.)
#' \item \code{Fuelwood}(Fuelwood units: million ft^3)
#' \item \code{FuelwoodT}(Fuelwood units: Thousand short tons)
#' \item \code{Log.Chip.Exports}(Log and Chip exports units: Thousand short tons)
#' \item \code{"RW.Dom.Prod}(Roundwood Equivalent of Domestic Product Ouptut units: Thousand short tons)
#' \item \code{Estimated.Tot.Dom.Timber}(Estimated Total Domestic Timber Harvest units: Thousand short tons)
#' }
#' @source  Sources listed on the excel spread from the National Forest Services
#' Softwood, plywood, OSB, and LVL production data (1960-1998) from APA--The Engineered Wood Association (formerly American Plywood Assoc.); see APA Economics Report E-65 (1999).
#'"Hardwood plywood production data from Dept. of Commerce (to 1988); 1989-1990 data from Hardwood Plywood & Veneer Association;
#'later estimates based on trends in value of shipments (Dept. of Commerce); hardwood veneer based on Census of Manufactures data and trend in value of shipments."
#'Lumber production 1900-1946 based on H.B. Steer (USDA Forest Service, 1948, Table 1, "Estimated Production"). [Note: Estimated production is higher than "reported production".]
#'Lumber production 1947-1976 based on Commerce Department data and Forest Service estimates.  Lumber production 1976-1998 from American Forest & Paper Association (AF&PA) Statistical Roundup report (1996 hardwood estimated by Forest Service; 1997-1998 hardwood estimate from Miller Freeman). [Note that Commerce Dept. reported hardwood lumber production is understood to underestimate actual production as reflected in Forest Service estimates since 1900.]
#'"Lumber made at pallet plants" is a Forest Service estimate of lumber cut from roundwood at pallet plants. Other lumber (e.g., purchased lumber) used by pallet makers is accounted for under hardwood and softwood lumber production.
#'Particleboard and MDF production data from Composite Panel Association (based on production data 1959-1977, and 1995-1997; otherwise based on shipments; 1998 data are estimated).
#'Hardboard production based on shipments data from American Hardboard Association (1964-1997) and as reported by Miller Freeman (1998); 1998 figure is estimated.
#'Pulp, paper, and paperboard production data are from AF&PA, formerly API (Statistics of Paper, Paperboard & Woodpulp). Paper and paperboard production includes "Total Paper", "Total Paperboard", and "Building Paper" production. Total production of pulp, paper and paperboard includes market pulp produced for export.
#'Miscellaneous wood product production data through 1988 were obtained from U.S. Timber Production, Trade, Consumption, and Price Statistics reports (USDA Forest Service).  Miscellaneous wood product production for 1996 based on timber product output tables in (draft) 1997 RPA Inventory Data Tables; intervening and subsequent data are extrapolated.
#'Insulating board production data are derived using earlier data from Commerce Department MA26A reports (in square feet of product output) to convert tonnage reported in AF&PA and earlier API reports (Statistics of Paper, Paperboard & Woodpulp).
#'Fuelwood estimates are shown for comparison only and are not included in industrial wood products.  Fuelwood data are Forest Service estimates (Skog and others, FPL).
#' @keywords ince1
"ince1"




#' @name howard55
#' @title howard55
#' @docType data
#' @description Insulating board production, imports, exports, and consumption, 1965-1999.
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



#' @name howard56
#' @title howard56
#' @docType data
#' @description Hardboard production, imports, exports and consumption, 1965-1999.
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

#' @name howard6a
#' @title howard6a
#' @docType data
#' @description Production, imports, exports, and consumption of softwood products, by major product, 1965-1999.
#' @format A data frame with 56 observations on 34 variables. (all units are in million cubic feet except when specified otherwise)
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
#' \itme \code{Indu.RW.PlyandVen.Prod}(Industrial roundwood uses plywood and veneer production)
#' \item \code{Indu.RW.PlyamdVen.Imports}(Industrial roundwood uses plywood and veneer imports)
#' \item \code{Indu.RW.PlyandVen.Exports}(Industrial roundwood uses plywood and veneer exports)
#' \item \code{Indu.RW.PlyandVen.Consump}(Industrial roundwood uses plywood and veneer consumption)
#' \item \code{Indu.RW.Pulp.Prod}(Industrial roundwood uses pulp-based products production)
#' \item \code{Indu.RW.Pulp.Imports}(Industrial roundwood uses pulp-based products imports)
#' \item \code{Indu.RW.Pulp.Exports}(Industrial roundwood uses pulp-based products exports)
#' \itme \code{Indu.RW.Pulp.Consump}(Industrial roundwood uses pulp-based products consumption)
#' \item \code{Indu.RW.OtherIndustrial.ProdAndConsump}(Other industrial product production and consumption)
#' \item \code{Indu.RW.Logs.Imports}(Industrial roundwood uses log imports)
#' \item \code{Indu.RW.Logs.Exports}(Industrial roundwood uses log exports)
#' \item \code{Indu.RW.Pulp.Imports}(Industrial roundwood uses pulpwood chip imports)
#' \item \code{Indu.RW.Pulp.Exports}(Industrial roundwood uses pulpwood chip exports)
#' \item \code{FuelWood.ProdAndConsumption}(Fuelwood production and consumption)
#' \itme \code{UnNamed1}
#' \item \code{UnNamed2}
#' \item \code{UnNamed3}
#' \item \code{UnNamed4}
#' \itme \code{UnNamed5}
#' \item \code{UnNamed6}
#' \item \code{UnNamed7}
#' \item \code{UnNamed8}
#' \item \code{UnNamed9}
#' \item \code{UnNamed10}
#' }
#' @source USFS Estimations and Bureau of Census Data
#' @keywords howard6a
"howard6a"


#' @title howard7a
#' @docType data
#' @description Production, imports, exports, and consumption of softwood products, by major product, 1965-1999.
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
#' \itme \code{Indu.RW.PlyandVen.Prod}(Industrial roundwood uses plywood and veneer production)
#' \item \code{Indu.RW.PlyamdVen.Imports}(Industrial roundwood uses plywood and veneer imports)
#' \item \code{Indu.RW.PlyandVen.Exports}(Industrial roundwood uses plywood and veneer exports)
#' \item \code{Indu.RW.PlyandVen.Consump}(Industrial roundwood uses plywood and veneer consumption)
#' \item \code{Indu.RW.Pulp.Prod}(Industrial roundwood uses pulp-based products production)
#' \item \code{Indu.RW.Pulp.Imports}(Industrial roundwood uses pulp-based products imports)
#' \item \code{Indu.RW.Pulp.Exports}(Industrial roundwood uses pulp-based products exports)
#' \itme \code{Indu.RW.Pulp.Consump}(Industrial roundwood uses pulp-based products consumption)
#' \item \code{Indu.RW.OtherIndustrial.ProdAndConsump}(Other industrial product production and consumption)
#' \item \code{Indu.RW.Logs.Imports}(Industrial roundwood uses log imports)
#' \item \code{Indu.RW.Logs.Exports}(Industrial roundwood uses log exports)
#' \item \code{Indu.RW.Pulp.Imports}(Industrial roundwood uses pulpwood chip imports)
#' \item \code{Indu.RW.Pulp.Exports}(Industrial roundwood uses pulpwood chip exports)
#' \item \code{FuelWood.ProdAndConsumption}(Fuelwood production and consumption)
#' \itme \code{UnNamed1}
#' \item \code{UnNamed2}
#' \item \code{UnNamed3}
#' \item \code{UnNamed4}
#' \itme \code{UnNamed5}
#' \item \code{UnNamed6}
#' }
#' @source USFS Estimations and Bureau of Census Data
#' @keywords howard7a
"howard7a"


#' @name ulrich52
#' @title ulrich52
#' @docType data
#' @description Insulating board production, imports, exports, and consumption, 1965-1999.
#' @format A data frame with 56 observations of  5 variables. (all units in thousand tons except when specified otherwise):
#' \itemize{
#' \item \code{Prod.tot} ()
#' \item \code{Prod.Part.Board}()
#' \item \code{Prod.Med.Fiberboard}()
#' \item \code{Imports}()
#' \item \code{Exports}()
#' \item \code{Consump.Tot}()
#' \item \code{Consump.PerCapita}()
#' }
#' @source USFS Estimations and Bureau of Census Data
#' @keywords ulrich52
"ulrich52"

#' @name ulrich53
#' @title ulrich53
#' @docType data
#' @description Insulating board production, imports, exports, and consumption, 1965-1999.
#' @format A data frame with 56 observations of  5 variables. (all units in thousand tons except when specified otherwise):
#' \itemize{
#' \item \code{InsulatingBoard.Prod} ()
#' \item \code{InsulatingBoard.Import}()
#' \item \code{InsulatingBoard.Exports}()
#' \item \code{InsulatingBoard.Consump.Tot}()
#' \item \code{InsulatingBoard.Consump.PerCapita}()
#' }
#' @source USFS Estimations and Bureau of Census Data
#' @keywords ulrich53
"ulrich53"






































