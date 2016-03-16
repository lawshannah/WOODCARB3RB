
library(devtools)
library(repmis)
library(xlsx)

####Up to fracnonstrpanels



########## MUST FINISH
fracnonstrpanels <- read.xlsx("./data/CopyOfData/fracnonstrpanels.xlsx", 1,
                              header = FALSE, colIndex = 2:20)
colnames(fracnonstrpanels)<-c()
use_data(fracnonstrpanels, overwrite = TRUE)

######LOSS when placed IU based on EU and yr
lossIU <- read.xlsx("./Data/lossWhenPlacedIU.xlsx",1,header=FALSE)
colnames(lossIU)<-c()
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
use_data(halfLives, overwrite = TRUE)



##################
########PAPER
IncePaper <- read.xlsx("./data/CopyOfData/Ince_Paper.xlsx",1,header=FALSE)
colnames(IncePaper)<-c("Paper.board.prod","Paper.board.imports","Paper.board.ApparentConsumption",
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



















