## 
# initialize a connection to a new VDB which will
# go in a directory "vdb" in the current working directory
conn <- vdbConn("vdb", name = "tesseraTutorial")

## 
# re-connect to an existing VDB
conn <- vdbConn("vdb")

## 
## devtools::install_github("hafen/housingData")

## 
## library(housingData)
## # divide housing data by county and state
## byCounty <- divide(housing, by = c("county", "state"))

## 
# look at the resulting object
byCounty

## 
# see what a subset looks like
byCounty[[1]]

## 
# create a panel function of list and sold price vs. time
bareBonesPanel <- function(x)
   plot(x$time, x$medListPriceSqft)

## 
# get the value of the first subset
x <- byCounty[[1]]$value
# construct plotting commands to go in panel function
plot(x$time, x$medListPriceSqft)

## 
# test function on a subset
bareBonesPanel(byCounty[[1]]$value)

## 
## # create a simple display
## makeDisplay(byCounty,
##    panelFn = bareBonesPanel,
##    name    = "list_vs_time_barebones",
##    desc    = "List price per square foot vs. time")

## 
# create a cognostics function to be applied to each subset
priceCog <- function(x) {
   zillowString <- gsub(" ", "-", do.call(paste, getSplitVars(x)))
   list(
      slope = cog(coef(lm(medListPriceSqft ~ time, data = x))[2],
         desc = "list price slope"),
      meanList = cogMean(x$medListPriceSqft),
      nObs = cog(length(which(!is.na(x$medListPriceSqft))),
         desc = "number of non-NA list prices"),
      zillowHref = cogHref(
         sprintf("http://www.zillow.com/homes/%s_rb/", zillowString),
         desc = "zillow link")
   )
}

## 
# test the cognostics function on a subset
priceCog(byCounty[[1]]$value)

## 
## # add cognostics to the display
## makeDisplay(byCounty,
##    panelFn = bareBonesPanel,
##    cogFn   = priceCog,
##    name    = "list_vs_time_cog_simple_cog",
##    desc    = "List price per square foot vs. time, with cognostics")

## 
# lattice panel function of list and sold price vs. time
latticePanel <- function(x)
   xyplot(medListPriceSqft ~ time, data = x)
# test function on a subset
latticePanel(byCounty[[1]]$value)

## 
## # setting axis limits in the call to makeDisplay()
## makeDisplay(byCounty,
##    panelFn = latticePanel,
##    cogFn   = priceCog,
##    name    = "list_vs_time_xy_same",
##    desc    = "List price per square foot vs. time with x and y axes same",
##    lims    = list(x = "same", y = "same"))

## 
## # setting axis limits in the call to makeDisplay()
## makeDisplay(byCounty,
##    panelFn = latticePanel,
##    name    = "list_vs_time_x_same",
##    desc    = "List price per square foot vs. time with x axis same",
##    lims    = list(x = "same", y = "free"))

## 
## # using a prepanel function to compute axis limits
## preFn <- function(d) {
##    list(
##       xlim = range(d$time, na.rm = TRUE),
##       ylim = range(d$medListPriceSqft, na.rm = TRUE)
##    )
## }
## 
## makeDisplay(byCounty,
##    panelFn = latticePanel,
##    name    = "list_vs_time_x_same_pre",
##    desc    = "List price per square foot vs. time with x and y axes same",
##    lims    = list(x = "same", prepanelFn = preFn)
## )

## 
## # compute axis limits prior to creating display using prepanel()
## pre <- prepanel(byCounty, prepanelFn = preFn)

