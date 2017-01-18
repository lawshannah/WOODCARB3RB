library(devtools)
library(repmis)
library(xlsx)


hair1958 <- read.xlsx("./inst/extdata/CopyOfData/hair1958.xlsx", 1, header = FALSE)
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

hair1963 <- read.xlsx("./inst/extdata/CopyOfData/hair1963tab2.xlsx", 1, header = FALSE)
colnames(hair1963) <- c("Dom.Prod.Tot", "ApparentConsumption", "IndRW.Dom.Prod",
                        "IndRW.Imports","IndRW.Prod.SW", "IndRW.Prod.HW", "IndRW.LogChipImports.SW",
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

hair1963t20 <- read.xlsx("./inst/extdata/CopyOfData/hair1963t20.xlsx",1,header=FALSE)
colnames(hair1963t20) <- c("Imports.Tot", "SW.Imports",
                           "HW.Imports.Tot", "HW.Imports.Birch", "HW.Imports.Other",
                           "Exports.Tot", "SW.Exports", "HW.Exports")
use_data(hair1963t20, overwrite = TRUE)

hair1963t21 <- read.xlsx("./inst/extdata/CopyOfData/hair1963t21.xlsx",1,header=FALSE)
colnames(hair1963t21) <- c("Imports.Tot", "Imports.BirchMaple", "Imports.Other",
                           "Exports.Tot", "Exports.Fancy.Face.Figured.Special",
                           "Exports.UtilityCommercialContainer")
use_data(hair1963t21, overwrite = TRUE)

howard28 <- read.xlsx("./inst/extdata/CopyOfData/howard28.xlsx",1,header=FALSE)
colnames(howard28) <- c("Prod.Tot", "Prod.SW","Prod.HW",
                        "Imports.Tot", "Imports.SW", "Imports.HW",
                        "Exports.Tot", "Exports.SW", "Exports.HW",
                        "Consump.Tot", "Consump.SW", "Consump.HW",
                        "PerCapConsump.Tot", "PerCapConsump.SW", "PerCapConsump.HW")
use_data(howard28, overwrite = TRUE)

howard37 <- read.xlsx("./inst/extdata/CopyOfData/howard37.xlsx",1,header=FALSE)
colnames(howard37) <- c("Prod.Tot", "Prod.SW","Prod.HW",
                        "Imports.Tot", "Imports.SW", "Imports.HW",
                        "Exports.Tot", "Exports.SW", "Exports.HW",
                        "Consump.Tot", "Consump.SW", "Consump.HW",
                        "PerCapConsump.Tot", "PerCapConsump.SW", "PerCapConsump.HW")
use_data(howard37, overwrite = TRUE)

howard38 <- read.xlsx("./inst/extdata/CopyOfData/howard38.xlsx",1,header=FALSE)
colnames(howard38) <- c("Prod.Tot", "Prod.SWPlywood","Prod.OSP",
                        "Imports.Tot", "Imports.SWPlywood", "Imports.OSP",
                        "Exports.Tot", "Exports.SWPlywood", "Exports.OSP",
                        "Consump.Tot", "Consump.SWPlywood", "Consump.OSP")
use_data(howard38, overwrite = TRUE)

howard46 <- read.xlsx("./inst/extdata/CopyOfData/howard46.xlsx",1,header=FALSE)
colnames(howard46) <- c("Prod.PaperBoard",
                        "Consump.Tot", "Consump.WoodPulp", "Consump.RecPaper", "Consump.Other",
                        "Consump.PerTonProd.Tot","Consump.PerTonProd.WoodPulp", "Consump.PerTonProd.RecPaper", "Consump.PerTonProd.Other",
                        "RagsOther.RecPaperUtiRatePerc",
                        "RagsOther.Prod.Estimated", "RagsOther.Imports.Estimated", "RagsOther.Exports.Estimated")
use_data(howard46, overwrite = TRUE)

howard47 <- read.xlsx("./inst/extdata/CopyOfData/howard47.xlsx",1,header=FALSE)
colnames(howard47) <- c("PaperBoardNewSupply",
                        "RecPap.ConsumedatPaperBoardMills", "RecPap.MoldedPulpInsulationandOther",
                        "RecPap.Exports", "RecPap.Imports", "RecPap.TotRecovered",
                        "RecPap.RecoveryRate", "NoName", "Ratio.ExportstoProduction",
                        "Ratio.ImportstoProduction")
use_data(howard47, overwrite = TRUE)

howard49 <- read.xlsx("./inst/extdata/CopyOfData/howard49.xlsx",1,header=FALSE)
colnames(howard49) <- paste("Woodpulp.",c("Production",
                        "Imports", "Imports.PercConsump",
                        "Exports", "Exports.PercProd",
                        "Consump.Tot", "Consump.PerCap(pounds)"), sep="")
use_data(howard49, overwrite = TRUE)

howard5 <- read.xlsx("./inst/extdata/CopyOfData/howard5.xlsx",1,header=FALSE)
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

howard53 <- read.xlsx("./inst/extdata/CopyOfData/howard53.xlsx",1,header=FALSE)
colnames(howard53) <- paste("Particle_MDF.", c("Prod.Tot", "Prod.ParticleBoard", "Prod.MediumDensityFiberboard",
                        "Imports", "Exports",
                        "Consump.Tot", "Consump.PerCap(Sq ft)"), sep="")
use_data(howard53, overwrite = TRUE)

ulrich29 <- read.xlsx("./inst/extdata/CopyOfData/ulrich29.xlsx",1,header=FALSE)
colnames(ulrich29) <- c("Prod.Tot", "Prod.SW", "Prod.HW",
                        "Imports.Tot", "Imports.SW", "Imports.HW",
                        "Exports.Tot", "Exports.SW", "Exports.HW",
                        "Consump.Tot", "Consump.SW", "Consump.HW",
                        "PerCapitaConsump.Tot", "PerCapitaConsump.SW", "PerCapitaConsump.HW")
use_data(ulrich29, overwrite = TRUE)

ulrich36 <- read.xlsx("./inst/extdata/CopyOfData/ulrich36.xlsx",1,header=FALSE)
colnames(ulrich36) <- c("Prod.Tot", "Prod.SW", "Prod.HW",
                        "Imports.Tot", "Imports.SW", "Imports.HW",
                        "Exports.Tot", "Exports.SW", "Exports.HW",
                        "Consump.Tot", "Consump.SW", "Consump.HW",
                        "PerCapitaConsump.Tot", "PerCapitaConsump.SW", "PerCapitaConsump.HW")
use_data(ulrich36, overwrite = TRUE)

ulrich4 <- read.xlsx("./inst/extdata/CopyOfData/ulrich4.xlsx",1,header=FALSE)
colnames(ulrich4) <- c("AllProducts.Prod", "AllProducts.Consump",
                       "Tot.Prod", "Tot.Imports", "Tot.Exports", "Tot.Consump",
                       "Lumber.Prod", "Lumber.Imports", "Lumber.Exports", "Lumber.Consump",
                       "PlywoodVeneer.Prod", "PlywoodVeneer.Imports", "PlywoodVeneer.Exports", "PlywoodVeneer.Consump",
                       "PulpProducts.Prod", "PulpProducts.Imports", "PulpProducts.Exports", "PulpProducts.Consump",
                       "OtherIndProducts.ProdandConsump", "Logs.Imports", "Logs.Exports", "PulpwoodChip.Exports",
                       "Fuelwood.ProdandConsump", "LogChipExports.PercofProduction")
use_data(ulrich4, overwrite = TRUE)

ulrich5 <- read.xlsx("./inst/extdata/CopyOfData/ulrich5.xlsx",1,header=FALSE)
colnames(ulrich5) <- c("AllProducts.Prod", "AllProducts.Consump",
                       "Tot.Prod", "Tot.Imports", "Tot.Exports", "Tot.Consump",
                       "Lumber.Prod", "Lumber.Imports", "Lumber.Exports", "Lumber.Consump",
                       "PlywoodVeneer.Prod", "PlywoodVeneer.Imports", "PlywoodVeneer.Exports", "PlywoodVeneer.Consump",
                       "PulpProducts.Prod", "PulpProducts.Imports", "PulpProducts.Exports", "PulpProducts.Consump",
                       "OtherIndProducts.ProdandConsump", "Logs.Imports", "Logs.Exports", "PulpwoodChip.Exports",
                       "Fuelwood.ProdandConsump", "LogChipExports.PercofProduction")
use_data(ulrich5, overwrite = TRUE)

######LOSS when placed IU based on EU and yr
lossIU <- read.xlsx("./inst/extdata/CopyOfData/lossWhenPlacedIU.xlsx",1,header=FALSE,
                    colIndex = c(1,2,3,5,6,7,8,10,11,12,14,15,16,17))
colnames(lossIU)<-c("House.SingFam","House.Multifam","House.MobHom",
                    "Res.Upkeep","New.Nonres.AllRR","New.Nonres.Rties","New.Nonres.Rcar.Repair",
                    "Manu.HouseFurniture","Manu.CommFurniture","Manu.OtherProducts",
                    "Shipping.Tot","Other.Uses.Tot", "Other.Industrial.Tot")
#lossIU <- lossIU[,1]
use_data(lossIU, overwrite = TRUE)

##########

##########LUMBER WOOD IN SF HOUSES 1800-1900
lumberpre1900 <- read.xlsx("./inst/extdata/CopyOfData/lumberpre1900.xlsx",1,header=FALSE)
colnames(lumberpre1900)<-c("Carbon.Lumberwood")
use_data(lumberpre1900, overwrite = TRUE)




woodToLandFills <- read.xlsx("./inst/extdata/CopyOfData/woodToLandFills.xlsx", 1, header=F)
colnames(woodToLandFills) <-c("WoodToLandFills") #In discription add: Percent of wood in land fill by year
use_data(woodToLandFills, overwrite = TRUE)

########
woodToDumps <- read.xlsx("./inst/extdata/CopyOfData/woodToDumps.xlsx", 1, header=F)
colnames(woodToDumps) <-c("WoodToDumps") #In discription add: Percent of wood in dumps by year
use_data(woodToDumps, overwrite = TRUE)


paperToLandFills <- read.xlsx("./inst/extdata/CopyOfData/paperToLandFIlls.xlsx",1,header=F)
colnames(paperToLandFills) <-c("PaperToLandfills") #In discription add: Percent of paper in land fill by year
use_data(paperToLandFills, overwrite = TRUE)
########
#imports1file<-read.xlsx("./inst/extdata/CopyOfData/imports1.xlsx",1,header=FALSE)
#colnames(imports1file) <-c("SW.PLY","OSB.Waferboard","HW.PLY.veneer",
                           #"SW.lumber","HW.lumber","Partical.board","Hardboard","MDF","PPandBoard",
                           #"insulatingboard", "","year","HardPly","Partboard","hardboard","insulboard")
#use_data(imports1file, overwrite = TRUE)


########halflives for various end uses for yrs 1900-2050
halfLives <- read.xlsx("./inst/extdata/CopyOfData/halfLives.xlsx", 1,header=FALSE,
                       colIndex = c(1,2,3,5,6,7,8,10,11,12,14,15,16,17))
#halfLives <- halfLives[-c(4, 9, 13)]
colnames(halfLives)<-c("House.SingFam","House.Multifam","House.MobHom",
                       "Res.Upkeep","New.Nonres.AllRR","New.Nonres.Rties","New.Nonres.Rcar.Repair",
                       "Manu.HouseFurniture","Manu.CommFurniture","Manu.OtherProducts",
                       "Shipping.Tot","Other.Uses.Tot", "Other.Industrial.Tot")
use_data(halfLives, overwrite = TRUE)


##################
########PAPER
IncePaper <- read.xlsx("./inst/extdata/CopyOfData/Ince_Paper.xlsx",1,header=FALSE)
colnames(IncePaper) <- c("Paper.Board.Prod","Paper.Board.Imports","Paper.Board.ApparentConsumption",
                         "Population", "Paper.Board.ConsumptionPerCapita")
use_data(IncePaper, overwrite = TRUE)
#######
apiFiberpulp <- read.xlsx("./inst/extdata/CopyOfData/api1975Fiberpulp.xlsx",1,header=FALSE)
##WHAT is column G?? is it other?
colnames(apiFiberpulp) <- c("Wood.Pulp.Consumption","Waste.Paper.Consumption", "Rags.Consumption",
                            "?Findout","Other.Consumption","Total.Consumption")
use_data(apiFiberpulp, overwrite = TRUE)
#############

apiTotalWoodPulp <- read.xlsx("./inst/extdata/CopyOfData/apiTotalWoodPulp.xlsx",1,header=FALSE)
colnames(apiTotalWoodPulp)<-c("Woodpulp.Prod","Woodpulp.Imports","Woodpulp.Exports",
                              "Woodpulp.NewSupply", "Consump.Paper.Board",
                              "WastePaper.Estimated.Prod","WastePaper.Estimated.Imports",
                              "WastePaper.Estimated.Exports",
                              "Rags.Estimated.Prod",
                              "Rags.Estimated.Imports",
                              "Rags.Estimated.Exports")
use_data(apiTotalWoodPulp, overwrite = TRUE)
#####################
usaFiberPulp <- read.xlsx("./inst/extdata/CopyOfData/usaFiberPulpCG.xlsx",1,header=FALSE)
colnames(usaFiberPulp)<-c("Prod.Quantity","Imports.Quantity","Exports.Quantity")
use_data(usaFiberPulp, overwrite = TRUE)



### START HERE FOR DATA DOCUMENTAION
ince1 <- read.xlsx("./inst/extdata/CopyOfData/ince1.xlsx",1,header=FALSE)
colnames(ince1)<-c("SW.Ply","OSB.Wafer.board","Lam.Ven.Lumb", "HW.Ply.Ven",
                   "SW.Lumb","HW.Lumb","Lumb.Pallet.Plant",
                   "PartBoard.Prod","Hardboard.Prod",
                   "MDF.Prod","Pulp.Paper.Board","Other.Products",
                   "InsulatingBoard","Fuelwood","Fuelwood.Tons","Log.Chip.Exports",
                   "RW.Dom.Prod","Estimated.Tot.Dom.Timber")
use_data(ince1, overwrite = TRUE)


howard55<-read.xlsx("./inst/extdata/CopyOfData/howard55.xlsx",1,header=FALSE)
colnames(howard55) <- paste("Insulboard.", c("Production","Imports","Exports",
                      "Total.Consumption","PerCapita.Consumption"), sep = "")
use_data(howard55, overwrite=TRUE)

howard56<-read.xlsx("./inst/extdata/CopyOfData/howard56.xlsx",1,header=FALSE)
colnames(howard56)<- paste("Hardboard.", c("Production","Imports","Exports",
                            "Total.Consumption","PerCapita.Consumption"), sep="")
use_data(howard56, overwrite=TRUE)

howard6<-read.xlsx("./inst/extdata/CopyOfData/howard6.xlsx",1,header=FALSE)
howard6[is.na(howard6)] <- 0
colnames(howard6)<-c("AllProduction.Prod","AllProduct.Consump",
                     "Ind.RW.Tot.Prod","Ind.RW.Tot.Imports","Ind.RW.Tot.Exports","Ind.RW.Tot.Consump",
                     "Ind.RW.Lum.Prod","Ind.RW.Lum.Imports","Ind.RW.Lum.Exports","Ind.RW.Lum.Consump",
                     "Ind.RW.PlyandVen.Prod","Ind.RW.PlyandVen.Imports","Ind.RW.PlyandVen.Exports","Ind.RW.PlyandVen.Consump",
                     "Ind.RW.Pulp.Prod","Ind.RW.Pulp.Imports","Ind.RW.Pulp.Exports","Ind.RW.Pulp.Consump",
                     "Ind.RW.OtherIndustrial.ProdAndConsump",
                     "Ind.RW.Logs.Imports","Ind.RW.Logs.Exports",
                     "Ind.RW.Pulpchip.Imports","Ind.RW.Pulpchip.Exports",
                     "FuelWood.ProdAndConsumption","UnNamed1","UnNamed2","UnNamed3","UnNamed4","UnNamed5",
                     "UnNamed6","UnNamed7","UnNamed8","UnNamed9","UnNamed10")
use_data(howard6, overwrite=TRUE)


howard7<-read.xlsx("./inst/extdata/CopyOfData/howard7.xlsx",1,header=FALSE)
howard7[is.na(howard7)] <- 0
colnames(howard7)<-c("AllProduction.Prod","AllProduct.Consump",
                      "Ind.RW.Tot.Prod","Ind.RW.Tot.Imports","Ind.RW.Tot.Exports","Ind.RW.Tot.Consump",
                      "Ind.RW.Lum.Prod","Ind.RW.Lum.Imports","Ind.RW.Lum.Exports","Ind.RW.Lum.Consump",
                      "Ind.RW.PlyandVen.Prod","Ind.RW.PlyandVen.Imports","Ind.RW.PlyandVen.Exports","Ind.RW.PlyandVen.Consump",
                      "Ind.RW.Pulp.Prod","Ind.RW.Pulp.Imports","Ind.RW.Pulp.Exports","Ind.RW.Pulp.Consump",
                      "Ind.RW.OtherIndustrial.ProdAndConsump",
                      "Ind.RW.Logs.Imports","Ind.RW.Logs.Exports",
                      "Ind.RW.Pulpchip.Imports","Ind.RW.Pulpchip.Exports",
                      "FuelWood.ProdAndConsumption","UnNamed1","UnNamed2","UnNamed3","UnNamed4","UnNamed5",
                      "UnNamed6","UnNamed7")
howard7[is.na(howard7)] <- 0
use_data(howard7, overwrite=TRUE)


ulrich52<-read.xlsx("./inst/extdata/CopyOfData/ulrich52.xlsx",1,header=FALSE)
colnames(ulrich52)<-c("Prod.tot","Prod.Part.Board","Prod.Med.Fiberboard",
                      "Imports","Exports","Consump.Tot","Consump.PerCapita")
use_data(ulrich52, overwrite=TRUE)


ulrich53<-read.xlsx("./inst/extdata/CopyOfData/ulrich53.xlsx",1,header=FALSE)
colnames(ulrich53)<-c("InsulatingBoard.Prod","InsulatingBoard.Import",
                      "InsulatingBoard.Exports",
                      "InsulatingBoard.Consump.Tot",
                      "InsulatingBoard.Consump.PerCapita")
use_data(ulrich53, overwrite=TRUE)


ulrich54<-read.xlsx("./inst/extdata/CopyOfData/ulrich54.xlsx",1,header=FALSE)
colnames(ulrich54)<-c("Hardboard.Prod","Hardboard.Import",
                      "Hardboard.Exports",
                      "Hardboard.Consump.Tot",
                      "Hardboard.Consump.PerCapita")
use_data(ulrich54, overwrite=TRUE)


ulrich6<-read.xlsx("./inst/extdata/CopyOfData/ulrich6.xlsx",1,header=FALSE)
colnames(ulrich6)<-c("AllProduction.Prod","AllProduct.Consump",
                     "Ind.RW.Tot.Prod","Ind.RW.Tot.Imports","Ind.RW.Tot.Exports","Ind.RW.Tot.Consump",
                     "Ind.RW.Lum.Prod","Ind.RW.Lum.Imports","Ind.RW.Lum.Exports","Ind.RW.Lum.Consump",
                     "Ind.RW.PlyandVen.Prod","Ind.RW.PlyandVen.Imports","Ind.RW.PlyandVen.Exports","Ind.RW.PlyandVen.Consump",
                     "Ind.RW.Pulp.Prod","Ind.RW.Pulp.Imports","Ind.RW.Pulp.Exports","Ind.RW.Pulp.Consump",
                     "Ind.RW.OtherIndustrial.ProdAndConsump",

                     "Ind.RW.Logs.Imports","Ind.RW.Logs.Exports",
                     "FuelWood.ProdAndConsumption","UnNamed1")
use_data(ulrich6, overwrite=TRUE)


fracsawnwood<-read.xlsx("./inst/extdata/CopyOfData/fracsawnwood.xlsx",1,header=FALSE)
fracsawnwood <- fracsawnwood[,1:16]
colnames(fracsawnwood)<-c("House.SingFam","House.Multifam","House.MobHom","House.Tot",
                          "Res.Upkeep","New.Nonres.AllRR","New.Nonres.Rties","New.Nonres.Rcar.Repair",
                          "New.Nonres.tot",
                          "Manu.HouseFurniture","Manu.CommFurniture","Manu.OtherProducts",
                          "Manu.Tot",
                          "Shipping.Tot","Other.Uses.Tot", "Other.Industrial.Tot")
fracsawnwood[is.na(fracsawnwood)] <- 0

use_data(fracsawnwood, overwrite=TRUE)


fracnonstrpanels <- read.xlsx("./inst/extdata/CopyOfData/fracnonstrpanels.xlsx", 1,
                              header = FALSE)
fracnonstrpanels <- fracnonstrpanels[,2:17]
colnames(fracnonstrpanels)<-c("House.SingFam","House.Multifam","House.MobHom","House.Tot",
                              "Res.Upkeep","New.Nonres.AllRR","New.Nonres.Rties","New.Nonres.Rcar.Repair",
                              "New.Nonres.tot",
                              "Manu.HouseFurniture","Manu.CommFurniture","Manu.OtherProducts",
                              "Manu.Tot",
                              "Shipping.Tot","Other.Uses.Tot", "Other.Industrial.Tot")

use_data(fracnonstrpanels, overwrite = TRUE)


fracstrpanels <- read.xlsx("./inst/extdata/CopyOfData/fracstrpanels.xlsx", 1,
                           header = FALSE)
fracstrpanels <- fracstrpanels[,1:16]
colnames(fracstrpanels)<-c("House.SingFam","House.Multifam","House.MobHom","House.Tot",
                           "Res.Upkeep","New.Nonres.AllRR","New.Nonres.Rties","New.Nonres.Rcar.Repair",
                           "New.Nonres.tot",
                           "Manu.HouseFurniture","Manu.CommFurniture","Manu.OtherProducts",
                           "Manu.Tot",
                           "Shipping.Tot","Other.Uses.Tot", "Other.Industrial.Tot")

use_data(fracstrpanels, overwrite = TRUE)


InceTable3 <- read.xlsx("./inst/extdata/CopyOfData/Ince_Table3.xlsx", 1, header = FALSE, colClasses = "character")
InceTable3 <- InceTable3[,1:20]
for(i in 1:ncol(InceTable3)){
  InceTable3[,i] <- as.character(InceTable3[,i])

}
InceTable3[(InceTable3 == "N.A.") == T] <- NA
for(i in 1:ncol(InceTable3)){
  InceTable3[,i] <- suppressWarnings(as.numeric(InceTable3[,i]))

}

colnames(InceTable3) <- c("Total.Industrial.Wood.Product.Production", paste("Roundwood.Equivalents.of.Production.",c("Hardwoods", "Softwoods",paste("Totals",c(".millionftcubed", ".thousand.short.tons",".thousand.metric.tons"),sep="")),sep=""),
                          "Industrial.Wood.Productivity.lbs.ftsquared", "Industrial.Wood.Productivity",
                          "Recovered.Paper.Utilization.Rate(AF&PA)",
                          "U.S.Population","Per.Capita.Industrial.Wood.Product.Production",
                          "HW.Agrifiber", "HW.Roundwood", rep("Empty",5),
                          "U.S.Timber.Harvest")
use_data(InceTable3, overwrite = TRUE)
