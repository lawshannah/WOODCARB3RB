library(WOODCARB3R)
context("Test final variables.")

#table of final variables to test
finalvars <- finalVariables()

#read in correct table to test against
check <- system.file("extdata/CopyOfData",
                     "finalVariablesCheck.csv",package="WOODCARB3R")
check <- read.csv(check)

test_that("check variables", {
  expect_equal(finalvars, check[1:26,1:8])
})
