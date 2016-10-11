
# HLsensitivity <- function(halflives = halfLives,
#                           year = 2013,
#                           adjustbypercent = 5,
#                           approach = c("Production",
#  "Stock Change")){
#   c <- halflives
#   approach <- match.arg(approach)
#   regular <- finalCarbonContribution(Years = year,
#                                      approach = approach)
#   f <- numeric(14)
#   for(i in seq(f)){
#     if(i == 14){
#       f[i] <-  finalCarbonContribution(Years = year, approach = approach, halflives = c*(1 + adjustbypercent/100))
#     }
#     else{
#       c[,i] <- c[,i] * (1 + adjustbypercent/100)
#       f[i] <- finalCarbonContribution(Years = year, approach = approach, halflives = c)
#     }
#     c <- halflives
#   }
#   sensitivitydf <- data.frame(`Regular Carbon Contribution` = regular,
#                               Enduse = c(names(halfLives), "All"),
#                               `Half Life Adjusted By` = paste(adjustbypercent,"%",sep=""),
#                               `Adjusted Carbon Contribution` = f)
#
#   sensitivitydf$`Difference in Carbon Contribution` <- (sensitivitydf$`Regular.Carbon.Contribution`
#                                                         - sensitivitydf$`Adjusted.Carbon.Contribution`) / sensitivitydf$`Regular.Carbon.Contribution` *100
#
#   sensitivitydf
# }
#HLsensitivity()
