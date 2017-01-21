#Earliest year used in counting of carbon
minyr <- 1900

#The latest year calculated
maxyr <- 2020

#The current year
currentyear <- maxyr

#Range of years to calculate
yrs <- minyr:maxyr

#switch to include exports
a5 <- 1

#End use categories
enduses <- c("SingleFam", "MultiFam", "MobileHomes", "TotalHomes", "ResidentialUpkeep",
    "AllRailroads", "Railroadties", "RailcairRepair", "TotalnonResidential",
    "HouseFurniture", "CommercialFurniture", "OtherManufacturing", "Total Manufacturing",
    "Shipping", "OtherUses", "OtherIndustrial", "Exports")

#End use totals to not count in carbon totals
totalEUs <- c("HL.House.Tot", "NonRes.construc.Tot", "Manuf.tot")

primaryclasses <- c("Sawnwood", "StructuralPanels", "NonStructuralPanels",
    "OtherIndustrial")

#Conversion Factors
## conversions od - oven dry
PRO17 <- 4.535925e-07  ##SWP, odt -> Tg/c
PRO18 <- 3.9008955e-07  ##PAPer, odt -> Tg/C
PRP10 <- 2.53087281800454  ###half life of paper in yrs
InceB5 <- 0.455065529436239  ##sw plywood 1000ft 3/8in to od tons
InceC5 <- 0.525099768956102  ##osb/waferboard 1000ft 3/8in to odt tons
InceE5 <- 0.543478260869565  ##hw plywood/veneer 1000 bd ft to od tons
InceF5 <- 0.8319  ##SW lumber, 1000bdft -> od tons
InceG5 <- 1.327375  ##HW lumber, 1000bdft -> od tons
InceI5 <- 1.12702865157283  ##hw particle board prod.1000 ft to od tons
InceJ5 <- 0.271739130434783  ##hardboard prodcution 1000 ft, 1/8 in to od tons
InceK5 <- 1.24007936507936  ##pulp/paper, mdf prod.
InceL5 <- 0.970873786407767  ##Pulp/paper 1000tons -> oven dry tons
InceN5 <- 14.89675  #### pulpwood (other industrial products) 1000ft^3 to od tons
InceO5 <- 0.425724637681159  ##insulating board 1000 ft, 1/2 inch
InceQ5 <- 0.9  ## tons insulating board to od tons
InceS5 <- 13.8649961379827  #softwood roundwood 1000 Cu ft to od tons
InceT5 <- 15.9283989668863  #hardwood roundwood 1001 Cu ft to od tons
InceR5 <- 0.173913043478261  ##hw veneer, 1000ft^2 to od tons
InceV5 <- 13.8649961379827  ##SW roundwood, 1000ft^3 -> od tons
InceW5 <- 15.9283989668863  ##HW roundwood 1000ft^3 -> od tons
PRI96 <- 1  #Factor to adjust base MSW not burned for paper and wood
PRP62 <- 1  ##Error in fraction of domestic products from imported wood/pulp
PRM45 <- 0.23  #WOOD DECAY LIMIT IN SWDS
PRM46 <- 0.56  #paper decat limit in swds
PRM50 <- 0.0300063714528115  #Wood waste HL in SWDS, for landfills
PRM51 <- 0.0478032538317204  #Paper waste HL in SWDS, landfills
PRM57 <- 1  #swtich to be included in the SWDS degradable carbon pool
PRM60 <- 0.0420089200339361  #Wood waste HL in SWDS, for dumps
PRM61 <- 0.0840178400678722  #Paper waste HL in SWDS, dumps
PRJ96 <- 1  #Factor to adjust base MSW not burned for paper and wood
PRM19 <- 0.183  #carbon content in dry matter, bark percent softwoods
PRM20 <- 0.209  #carbon content in dry matter, bark percent hardwoods

