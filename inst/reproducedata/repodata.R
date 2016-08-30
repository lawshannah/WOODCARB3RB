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
                       "Prod.Tot", "Imports.Tot", "Exports.Tot", "Consump.Tot",
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

ulrich4 <- read.xlsx("./data/CopyOfData/ulrich4.xlsx",1,header=FALSE)
colnames(ulrich4) <- c("AllProducts.Prod", "AllProducts.Consump",
                       "Tot.Prod", "Tot.Imports", "Tot.Exports", "Tot.Consump",
                       "Lumber.Prod", "Lumber.Imports", "Lumber.Exports", "Lumber.Consump",
                       "PlywoodVeneer.Prod", "PlywoodVeneer.Imports", "PlywoodVeneer.Exports", "PlywoodVeneer.Consump",
                       "PulpProducts.Prod", "PulpProducts.Imports", "PulpProducts.Exports", "PulpProducts.Consump",
                       "OtherIndProducts.ProdandConsump", "Logs.Imports", "Logs.Exports", "PulpwoodChip.Exports",
                       "Fuelwood.ProdandConsump", "LogChipExports.PercofProduction")
use_data(ulrich4, overwrite = TRUE)

ulrich5 <- read.xlsx("./data/CopyOfData/ulrich5.xlsx",1,header=FALSE)
colnames(ulrich5) <- c("AllProducts.Prod", "AllProducts.Consump",
                       "Tot.Prod", "Tot.Imports", "Tot.Exports", "Tot.Consump",
                       "Lumber.Prod", "Lumber.Imports", "Lumber.Exports", "Lumber.Consump",
                       "PlywoodVeneer.Prod", "PlywoodVeneer.Imports", "PlywoodVeneer.Exports", "PlywoodVeneer.Consump",
                       "PulpProducts.Prod", "PulpProducts.Imports", "PulpProducts.Exports", "PulpProducts.Consump",
                       "OtherIndProducts.ProdandConsumption", "Logs.Imports", "Logs.Exports", "PulpwoodChip.Exports",
                       "Fuelwood.ProdandConsump", "LogChipExports.PercofProduction")
use_data(ulrich5, overwrite = TRUE)
####Up to fracnonstrpanels
########## MUST FINISH
fracnonstrpanels <- read.xlsx("./data/CopyOfData/fracnonstrpanels.xlsx", 1,
                              header = FALSE, colIndex = 2:20)
colnames(fracnonstrpanels)<-c()
fracnonstrpanels[is.na(fracnonstrpanels)] <- 0
use_data(fracnonstrpanels, overwrite = TRUE)

######LOSS when placed IU based on EU and yr
lossIU <- read.xlsx("./data/CopyOfData/lossWhenPlacedIU.xlsx",1,header=FALSE)
colnames(lossIU)<-c()
lossIU <- lossIU[,-totalEUs]
use_data(lossIU, overwrite = TRUE)

##########

##########LUMBER WOOD IN SF HOUSES 1800-1900
lumberpre1900 <- read.xlsx("./data/CopyOfData/lumberpre1900.xlsx",1,header=FALSE)
colnames(lumberpre1900)<-c()
use_data(lumberpre1900, overwrite = TRUE)




woodToLandFills <- read.xlsx("./data/CopyOfData/woodToLandFills.xlsx", 1, header=F)
colnames(woodToLandFills) <-c("WoodToLandFills") #In discription add: Percent of wood in land fill by year
use_data(woodToLandFills, overwrite = TRUE)

########
woodToDumps <- read.xlsx("./data/CopyOfData/woodToDumps.xlsx", 1, header=F)
colnames(woodToDumps) <-c("WoodToDumps") #In discription add: Percent of wood in dumps by year
use_data(woodToDumps, overwrite = TRUE)


paperToLandFills <- read.xlsx("./data/CopyOfData/paperToLandFIlls.xlsx",1,header=F)
colnames(paperToLandFills) <-c("PaperToLandfills") #In discription add: Percent of paper in land fill by year
use_data(paperToLandFills, overwrite = TRUE)
########
imports1file<-read.xlsx("./data/CopyOfData/imports1.xlsx",1,header=FALSE)
colnames(imports1file) <-c("SW.PLY","OSB.Waferboard","HW.PLY.veneer",
                           "SW.lumber","HW.lumber","Partical.board","Hardboard","MDF","PPandBoard",
                           "insulatingboard", "","year","HardPly","Partboard","hardboard","insulboard")
use_data(imports1file, overwrite = TRUE)


########halflives for various end uses for yrs 1900-2050
halfLives <- read.xlsx("./data/CopyOfData/halfLives.xlsx", 1,header=FALSE)
colnames(halfLives)<-c("HL.House.SF","HL.House.MultF","HL.House.MobHome","HL.House.Tot",
                       "ResUpKeep.Tot","NonRes.construc.allRR","NonRes.construc.RR.ties",
                       "NonRes.construc.Railcar","NonRes.construc.Tot",
                       "Manuf.House.Furn","Manuf.Comm.Furn","Manuf.other","Manuf.tot",
                       "ship.tot","Other.tot","other.industrial.tot")
halfLives <- halfLives[-c(4, 9, 13)]
use_data(halfLives, overwrite = TRUE)



##################
########PAPER
IncePaper <- read.xlsx("./data/CopyOfData/Ince_Paper.xlsx",1,header=FALSE)
colnames(IncePaper) <- c("Paper.board.prod","Paper.board.imports","Paper.board.ApparentConsumption",
                         "Population", "Paper.board.ConsumptionPerCapita")
use_data(IncePaper, overwrite = TRUE)

#######
apiFiberpulp <- read.xlsx("./data/CopyOfData/api1975Fiberpulp.xlsx",1,header=FALSE)
colnames(apiFiberpulp)<-c("Wood.Pulp","Waste.Paper","Rags","Other","Total")
use_data(apiFiberpulp, overwrite = TRUE)
#############

apiTotalWoodPulp <- read.xlsx("./data/CopyOfData/apiTotalWoodPulp.xlsx",1,header=FALSE)
colnames(apiTotalWoodPulp)<-c("Prod","Imports","Exports","NewSupply", "Consump.Paper.Board",
                              "WastePaper.Estimated.Prod","WastePaper.Estimated.Imports",
                              "WastePaper.Estimated.Exports",
                              "Rags.Estimated.Prod",
                              "Rags.Estimated.Imports",
                              "Rags.Estimated.Exports")
use_data(apiTotalWoodPulp, overwrite = TRUE)
#####################
usaFiberPulp <- read.xlsx("./data/CopyOfData/usaFiberPulpCG.xlsx",1,header=FALSE)
colnames(usaFiberPulp)<-c("Prod.Quantity","Imports.Quantity","Exports.Quantity")
use_data(usaFiberPulp, overwrite = TRUE)



### START HERE FOR DATA DOCUMENTAION
ince1 <- read.xlsx("./data/CopyOfData/ince1.xlsx",1,header=FALSE)
colnames(ince1)<-c("SW.Ply","OSB.Wafer.board","Lam.Ven.Lumb", "HW.Ply.Ven",
                   "SW.Lumb","HW.Lumb","Lumb.Pallet.Plant",
                   "PartBoard.Prod","Hardboard.Prod",
                   "MDF.Prod","Pulp.Paper.Board","Other.Products",
                   "InsulatingBoard","Fuelwood","FuelwoodT","Log.Chip.Exports",
                   "RW.Dom.Prod","Estimated.Tot.Dom.Timber")
use_data(ince1, overwrite = TRUE)


howard55<-read.xlsx("./data/CopyOfData/howard55.xlsx",1,header=FALSE)
colnames(howard55)<-c("Production","Imports","Exports","Total","PerCapita")
use_data(howard55, overwrite=TRUE)

howard56<-read.xlsx("./data/CopyOfData/howard56.xlsx",1,header=FALSE)
colnames(howard56)<-c("Production","Imports","Exports","Total","PerCapita")
use_data(howard56, overwrite=TRUE)

howard6<-read.xlsx("./data/CopyOfData/howard6.xlsx",1,header=FALSE)
colnames(howard6)<-c("AllProduction.Prod","AllProduct.Consump",
                     "Ind.RW.Tot.Prod","Ind.RW.Tot.Imports","Ind.RW.Tot.Exports","Ind.RW.Tot.Consump",
                     "Ind.RW.Lum.Prod","Ind.RW.Lum.Imports","Ind.RW.Lum.Exports","Ind.RW.Lum.Consump",
                     "Ind.RW.PlyandVen.Prod","Ind.RW.PlyamdVen.Imports","Ind.RW.PlyandVen.Exports","Ind.RW.PlyandVen.Consump",
                     "Ind.RW.Pulp.Prod","Ind.RW.Pulp.Imports","Ind.RW.Pulp.Exports","Ind.RW.Pulp.Consump",
                     "Ind.RW.OtherIndustrial.ProdAndConsump",
                     "Ind.RW.Logs.Imports","Ind.RW.Logs.Exports",
                     "Ind.RW.Pulp.Imports","Ind.RW.Pulp.Exports",
                     "FuelWood.ProdAndConsumption","UnNamed1","UnNamed2","UnNamed3","UnNamed4","UnNamed5",
                     "UnNamed6","UnNamed7","UnNamed8","UnNamed9","UnNamed10")
use_data(howard6, overwrite=TRUE)


howard7<-read.xlsx("./data/CopyOfData/howard7.xlsx",1,header=FALSE)
colnames(howard7a)<-c("AllProduction.Prod","AllProduct.Consump",
                      "Indu.RW.Tot.Prod","Indu.RW.Tot.Imports","Indu.RW.Tot.Exports","Indu.RW.Tot.Consump",
                      "Indu.RW.Lum.Prod","Indu.RW.Lum.Imports","Indu.RW.Lum.Exports","Indu.RW.Lum.Consump",
                      "Indu.RW.PlyandVen.Prod","Indu.RW.PlyamdVen.Imports","Indu.RW.PlyandVen.Exports","Indu.RW.PlyandVen.Consump",
                      "Indu.RW.Pulp.Prod","Indu.RW.Pulp.Imports","Indu.RW.Pulp.Exports","Indu.RW.Pulp.Consump",
                      "Indu.RW.OtherIndustrial.ProdAndConsump",
                      "Indu.RW.Logs.Imports","Indu.RW.Logs.Exports",
                      "Indu.RW.Pulp.Imports","Indu.RW.Pulp.Exports",
                      "FuelWood.ProdAndConsumption","UnNamed1","UnNamed2","UnNamed3","UnNamed4","UnNamed5",
                      "UnNamed6","UnNamed7")
use_data(howard7, overwrite=TRUE)


ulrich52<-read.xlsx("./data/CopyOfData/ulrich52.xlsx",1,header=FALSE)
colnames(ulrich52)<-c("Prod.tot","Prod.Part.Board","Prod.Med.Fiberboard",
                      "Imports","Exports","Consump.Tot","Consump.PerCapita")
use_data(ulrich52, overwrite=TRUE)

ulrich53<-read.xlsx("./data/CopyOfData/ulrich53.xlsx",1,header=FALSE)
colnames(ulrich53)<-c("InsulatingBoard.Prod","InsulatingBoard.Import",
                      "InsulatingBoard.Exports",
                      "InsulatingBoard.Consump.Tot",
                      "InsulatingBoard.Consump.PerCapita")
use_data(ulrich53, overwrite=TRUE)

ulrich54<-read.xlsx("./data/CopyOfData/ulrich54.xlsx",1,header=FALSE)
colnames(ulrich54)<-c("HardBoard.Prod","HardBoard.Import",
                      "HardBoard.Exports",
                      "HardBoard.Consump.Tot",
                      "HardBoard.Consump.PerCapita")
use_data(ulrich54, overwrite=TRUE)

ulrich6<-read.xlsx("./data/CopyOfData/ulrich6.xlsx",1,header=FALSE)
colnames(ulrich6)<-c("AllProduction.Prod","AllProduct.Consump",
                          "Indu.RW.Tot.Prod","Indu.RW.Tot.Imports","Indu.RW.Tot.Exports","Indu.RW.Tot.Consump",
                          "Indu.RW.Lum.Prod","Indu.RW.Lum.Imports","Indu.RW.Lum.Exports","Indu.RW.Lum.Consump",
                          "Indu.RW.PlyandVen.Prod","Indu.RW.PlyandVen.Imports","Indu.RW.PlyandVen.Exports","Indu.RW.PlyandVen.Consump",
                          "Indu.RW.Pulp.Prod","Indu.RW.Pulp.Imports","Indu.RW.Pulp.Exports","Indu.RW.Pulp.Consump",
                          "Indu.RW.OtherIndustrial.ProdAndConsump",

                          "Indu.RW.Logs.Imports","Indu.RW.Logs.Exports",
                          "FuelWood.ProdAndConsumption","UnNamed1")
use_data(ulrich6, overwrite=TRUE)

fracsawnwood<-read.xlsx("./data/CopyOfData/fracsawnwood.xlsx",1,header=FALSE)
colnames(fracsawnwood)<-c("House.SingFam","House.Multifam","House.MobHom","House.Tot",
                          "Res.Upkeep","New.Nonres.AllRR","New.Nonres.Rties","New.Nonres.Rcar.Repair",
                          "New.Nonres.tot",
                          "Manu.HouseFurniture","Manu.CommFurniture","Manu.OtherProducts",
                          "Manu.Tot",
                          "Shipping.Tot","Other.Uses.Tot","Uses.Indust.Prod","Export.Tot")
fracsawnwood[is.na(fracsawnwood)] <- 0
use_data(fracsawnwood, overwrite=TRUE)


fracnonstrpanels <- read.xlsx("./data/CopyOfData/fracnonstrpanels.xlsx", 1,
                              header = FALSE, colIndex = 2:20)
colnames(fracnonstrpanels)<-c("Years","House.SingFam","House.Multifam","House.MobHom","House.Tot",
                              "Res.Upkeep","New.Nonres.AllRR","New.Nonres.Rties","New.Nonres.Rcar.Repair",
                              "New.Nonres.tot",
                              "Manu.HouseFurniture","Manu.CommFurniture","Manu.OtherProducts",
                              "Manu.Tot",
                              "Shipping.Tot","Other.Uses.Tot")
use_data(fracnonstrpanels, overwrite = TRUE)

fracstrpanels <- read.xlsx("./data/CopyOfData/fracstrpanels.xlsx", 1,
                           header = FALSE)
colnames(fracstrpanels)<-c("Years","House.SingFam","House.Multifam","House.MobHom","House.Tot",
                           "Res.Upkeep","New.Nonres.AllRR","New.Nonres.Rties","New.Nonres.Rcar.Repair",
                           "New.Nonres.tot",
                           "Manu.HouseFurniture","Manu.CommFurniture","Manu.OtherProducts",
                           "Manu.Tot",
                           "Shipping.Tot","Other.Uses.Tot")
use_data(fracstrpanels, overwrite = TRUE)
