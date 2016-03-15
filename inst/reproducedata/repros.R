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
                        "IndRW.Exports.HW.PctOfProd", "IndRW.Imports.SW.PctofConsump",
                        "IndRW.Imports.HW.PctOfConsump", "IndRW.SW.Lumber.PctOfTotLumbProd",
                        "IndRW.DV.Exports.Log.PctOfProd", "IndRW.DV.Imports.Log.PctOfProd",
                        "IndRW.Estimated.Imports", "IndRW.Estimated.Exports", "IndRW.Adj.Imports",
                        "IndRW.Adj.Exports", "IndRW.Estimated.Imports(tons)",
                        "IndRW.Estimated.Exports(tons)", "IndRW.Adj.Imports(tons)",
                        "IndRW.Adj.Exports(tons)", "IndRW.ApparentConsumption.Total",
                        "IndRW.SawLogs.Dom.Prod", "IndRW.SawLogs.NetImports", "IndRW.SawLogs.ApparentConsumption",
                        "IndRW.VeneerLogs.Dom.Prod", "IndRW.VeneerLogs.NetImports", "IndRW.VeneerLogs.ApparentConsumption",
                        "IndRW.PulpWood.Dom.Prod", "IndRW.PulpWood.NetImports", "IndRW.PulpWood.ApparentConsumption",
                        "IndRW.Other.ApparentConsumption", "FuelWood.ApparentConsumption"
                        )
use_data(hair1963, overwrite = TRUE)

hair1963t20 <- read.xlsx("./data/CopyOfData/hair1963t20.xlsx",1,header=FALSE)
use_data(hair1963t20, overwrite = TRUE)

hair1963t21 <- read.xlsx("./data/CopyOfData/hair1963t21.xlsx",1,header=FALSE)
use_data(hair1963t21, overwrite = TRUE)
