minyr <- 1900
currentyear <-
  maxyr <- 2020

yrs <- minyr:maxyr

a5 <- 1 #switch to include exports

enduses <- c("SingleFam", "MultiFam", "MobileHomes",
             "TotalHomes", "ResidentialUpkeep", "AllRailroads",
             "Railroadties", "RailcairRepair", "TotalnonResidential",
             "HouseFurniture", "CommercialFurniture", "OtherManufacturing",
             "Total Manufacturing", "Shipping", "OtherUses", "OtherIndustrial",
             "Exports")
totalEUs <- c("HL.House.Tot",
              "NonRes.construc.Tot",
              "Manuf.tot")  ##total end uses to not count in carbon totals
primaryclasses <- c("Sawnwood",
                    "StructuralPanels",
                    "NonStructuralPanels",
                    "OtherIndustrial")
