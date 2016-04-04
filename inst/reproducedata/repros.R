library(devtools)
library(repmis)
library(xlsx)
hair1958 <- read.xlsx("./data/CopyOfData/hair1958.xlsx",1,header = FALSE)
colnames(hair1958) <- c("Prod.Tot",
                        "Prod.SW",
                        "Prod.HW",
                        "Imports.Tot", "Imports.SW", "Imports.HW", "Imports.Mixed",
                        "Imports.Mixed.PercOfTot",
                        "Imports.SW.PercOfTot", "Imports.HW.PercOfTot", "Imports.Estimated.SW",
                        "Imports.Estimated.HW", "Exports.Tot", "Exports.SW",
                        "Exports.HW", "Exports.Mixed", "Exports.Mixed.PercOfTot",
                        "Exports.SW.PercOfTot", "Exports.HW.PercOfTot", "Exports.Estimated.SW",
                        "Exports.Estimated.HW",
                        "NewSupply", "PerCapita")
use_data(hair1958, overwrite = TRUE)

hair1963 <- read.xlsx("./data/CopyOfData/hair1963tab2.xlsx", 1, header=FALSE)
colnames(hair1963) <- c("Dom.Prod.Tot", "ApparentConsumption", "IndRW.Dom.Prod","IndRW.Imports",
                        "IndRW.Prod.SW", "IndRW.Prod.HW", "IndRW.LogChipImports.SW",
                        "IndRW.LogChipExports.SW", "IndRW.LogChipImports.HW",
                        "IndRW.LogChipExports.HW", "IndRW.SW.PctOfProd", "IndRW.Exports.SW.PctOfProd",
                        "IndRW.Exports.HW.PctOfProd", "IndRW.Imports.SW.PctOfConsump",
                        "IndRW.Imports.HW.PctOfConsump", "IndRW.SW.Lumber.PctOfTotLumbProd",
                        "IndRW.DV.Exports.Log.PctOfProd", "IndRW.DV.Imports.Log.PctOfProd",
                        "IndRW.Estimated.Imports", "IndRW.Estimated.Exports", "IndRW.Adj.Imports",
                        "IndRW.Adj.Exports", "IndRW.Estimated.Imports(tons)",
                        "IndRW.Estimated.Exports(tons)", "IndRW.Adj.Imports(tons)",
                        "IndRW.Adj.Exports(tons)", "IndRW.ApparentConsumption.Total",
                        "IndRW.SawLogs.Dom.Prod", "IndRW.SawLogs.NetImports", "IndRW.SawLogs.ApparentConsumption",
                        "IndRW.VeneerLogs.Dom.Prod", "IndRW.VeneerLogs.NetImports", "IndRW.VeneerLogs.ApparentConsumption",
                        "IndRW.PulpWood.Dom.Prod", "IndRW.PulpWood.NetImports", "IndRW.PulpWood.ApparentConsumption",
                        "IndRW.Other.ApparentConsumption", "FuelWood.ApparentConsumption")
colnames(hair1963) <- gsub("IndRW.", "", colnames(hair1963))
use_data(hair1963, overwrite = TRUE)

hair1963t20 <- read.xlsx("./data/CopyOfData/hair1963t20.xlsx",1,header=FALSE)
colnames(hair1963t20) <- c("Imports.Tot", "SW.Imports",
                           "HW.Imports.Tot", "HW.Imports.Birch", "HW.Imports.Other",
                           "Exports.Tot", "SW.Exports", "HW.Exports")
use_data(hair1963t20, overwrite = TRUE)

hair1963t21 <- read.xlsx("./data/CopyOfData/hair1963t21.xlsx",1,header=FALSE)
colnames(hair1963t21) <- c("Imports.Tot", "Imports.BirchMaple", "Imports.Other",
                           "Exports.Tot", "Exports.Fancy,Face,Figured,Special",
                           "Exports.UtilityCommercialContainer")
use_data(hair1963t21, overwrite = TRUE)

howard28 <- read.xlsx("./data/CopyOfData/howard28.xlsx",1,header=FALSE)
colnames(howard28) <- c("Prod.Tot", "Prod.SW","Prod.HW",
                        "Imports.Tot", "Imports.SW", "Imports.HW",
                        "Exports.Tot", "Exports.SW", "Exports.HW",
                        "Consump.Tot", "Consump.SW", "Consump.HW",
                        "PerCapConsump.Tot", "PerCapConsump.SW", "PerCapConsump.HW")
use_data(howard28, overwrite = TRUE)

howard37 <- read.xlsx("./data/CopyOfData/howard37.xlsx",1,header=FALSE)
colnames(howard37) <- c("Prod.Tot", "Prod.SW","Prod.HW",
                        "Imports.Tot", "Imports.SW", "Imports.HW",
                        "Exports.Tot", "Exports.SW", "Exports.HW",
                        "Consump.Tot", "Consump.SW", "Consump.HW",
                        "PerCapConsump.Tot", "PerCapConsump.SW", "PerCapConsump.HW")
use_data(howard37, overwrite = TRUE)

howard38 <- read.xlsx("./data/CopyOfData/howard38.xlsx",1,header=FALSE)
colnames(howard38) <- c("Prod.Tot", "Prod.SWPlywood","Prod.OSP",
                        "Imports.Tot", "Imports.SWPlywood", "Imports.OSP",
                        "Exports.Tot", "Exports.SWPlywood", "Exports.OSP",
                        "Consump.Tot", "Consump.SWPlywood", "Consump.OSP")
use_data(howard38, overwrite = TRUE)

howard46 <- read.xlsx("./data/CopyOfData/howard46.xlsx",1,header=FALSE)
colnames(howard46) <- c("Prod.PaperBoard",
                        "Consump.Tot", "Consump.WoodPulp", "Consump.RecPaper", "Consump.Other",
                        "Consump.PerTonProd.Tot","Consump.PerTonProd.WoodPulp", "Consump.PerTonProd.RecPaper", "Consump.PerTonProd.Other",
                        "RagsOther.RecPaperUtiRatePerc",
                        "RagsOther.Prod.Estimated", "RagsOther.Imports.Estimated", "RagsOther.Exports.Estimated")
use_data(howard46, overwrite = TRUE)

howard47 <- read.xlsx("./data/CopyOfData/howard47.xlsx",1,header=FALSE)
colnames(howard47) <- c("PaperBoardNewSupply",
                        "RecPap.ConsumedatPaperBoardMills", "RecPap.MoldedPulpInsulationandOther",
                        "RecPap.Exports", "RecPap.Imports", "RecPap.TotRecovered",
                        "RecPap.RecoveryRate", "NoName", "Ratio.ExportstoProduction",
                        "Ratio.ImportstoProduction")
use_data(howard47, overwrite = TRUE)

howard49 <- read.xlsx("./data/CopyOfData/howard49.xlsx",1,header=FALSE)
colnames(howard49) <- c("Production",
                        "Imports", "Imports.PercConsump",
                        "Exports", "Exports.PercProd",
                        "Consump.Tot", "Consump.PerCap(pounds)")
use_data(howard49, overwrite = TRUE)

howard5 <- read.xlsx("./data/CopyOfData/howard5.xlsx",1,header=FALSE)
colnames(howard5) <- c("AllProducts.Prod", "AllProducts.Consump",
                       "Tot.Prod", "Tot.Imports", "Tot.Exports", "Tot.Consump",
                       "Lumber.Prod", "Lumber.Imports", "Lumber.Exports", "Lumber.Consump",
                       "PlywoodVeneer.Prod", "PlywoodVeneer.Imports", "PlywoodVeneer.Exports", "PlywoodVeneer.Consump",
                       "Pulpwood.Prod", "Pulpwood.Imports", "Pulpwood.Exports", "Pulpwood.Consump",
                       "OtherIndProductsandConsump",
                       "Logs.Imports", "Logs.Exports",
                       "PulpwoodChip.Imports", "PulpwoodChip.Exports",
                       "FuelwoodProdandConsump")
use_data(howard5, overwrite = TRUE)

howard53 <- read.xlsx("./data/CopyOfData/howard53.xlsx",1,header=FALSE)
colnames(howard53) <- c("Prod.Tot", "Prod.ParticleBoard", "Prod.MediumDensityFiberboard",
                        "Imports", "Exports",
                        "Consump.Tot", "Consump.PerCap(Sq ft)")
use_data(howard53, overwrite = TRUE)

ulrich29 <- read.xlsx("./data/CopyOfData/ulrich29.xlsx",1,header=FALSE)
colnames(ulrich29) <- c("Prod.Tot", "Prod.SW", "Prod.HW",
                        "Imports.Tot", "Imports.SW", "Imports.HW",
                        "Exports.Tot", "Exports.SW", "Exports.HW",
                        "Consump.Tot", "Consump.SW", "Consump.HW",
                        "PerCapitaConsump.Tot", "PerCapitaConsump.SW", "PerCapitaConsump.HW")
use_data(ulrich29, overwrite = TRUE)

ulrich36 <- read.xlsx("./data/CopyOfData/ulrich36.xlsx",1,header=FALSE)
colnames(ulrich36) <- c("Prod.Tot", "Prod.SW", "Prod.HW",
                        "Imports.Tot", "Imports.SW", "Imports.HW",
                        "Exports.Tot", "Exports.SW", "Exports.HW",
                        "Consump.Tot", "Consump.SW", "Consump.HW",
                        "PerCapitaConsump.Tot", "PerCapitaConsump.SW", "PerCapitaConsump.HW")
use_data(ulrich36, overwrite = TRUE)

ulrich4 <- read.xlsx(".data/CopyOfData/ulrich4.xlsx",1,header=FALSE)
colnames(ulrich4) <- c("AllProducts.Prod", "AllProducts.Consump",
                       "Tot.Prod", "Tot.Imports", "Tot.Exports", "Tot.Consump",
                       "Lumber.Prod", "Lumber.Imports", "Lumber.Exports", "Lumber.Consump",
                       "PlywoodVeneer.Prod", "PlywoodVeneer.Imports", "PlywoodVeneer.Exports", "PlywoodVeneer.Consump",
                       "PulpProducts.Prod", "PulpProducts.Imports", "PulpProducts.Exports", "PulpProducts.Consump",
                       "OtherIndProducts.ProdandConsumption", "Logs.Imports", "Logs.Exports", "PulpwoodChip.Exports",
                       "Fuelwood.ProdandConsump", "LogChipExports.PercofProduction")
use_data(ulrich4, overwrite = TRUE)

ulrich5 <- read.xlsx(".data/CopyOfData/ulrich5.xlsx",1,header=FALSE)
colnames(ulrich5) <- c("AllProducts.Prod", "AllProducts.Consump",
                       "Tot.Prod", "Tot.Imports", "Tot.Exports", "Tot.Consump",
                       "Lumber.Prod", "Lumber.Imports", "Lumber.Exports", "Lumber.Consump",
                       "PlywoodVeneer.Prod", "PlywoodVeneer.Imports", "PlywoodVeneer.Exports", "PlywoodVeneer.Consump",
                       "PulpProducts.Prod", "PulpProducts.Imports", "PulpProducts.Exports", "PulpProducts.Consump",
                       "OtherIndProducts.ProdandConsumption", "Logs.Imports", "Logs.Exports", "PulpwoodChip.Exports",
                       "Fuelwood.ProdandConsump", "LogChipExports.PercofProduction")
use_data(ulrich5, overwrite = TRUE)









