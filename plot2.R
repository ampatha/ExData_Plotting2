## Sanem Seren Sever C_EDA - A2
## plot2.R (plot2.png)
###############################

## Attention: WD must contain the source data
## Read data for plotting:
source("LoadData.R")
##Select Baltimor data
EmisBalt <- emisData[emisData$fips == "24510", ] 

png(filename = "plot2.png",  width = 480, height = 480,  units = "px")

totEmisBalt <- aggregate(EmisBalt$Emissions, list(EmisBalt$year), FUN = "sum")

plot(totEmisBalt, col="blue", type = "l", xlab = "Year", 
     main = "Total Emissions in Baltimore between 1999 & 2008", 
     ylab = "Total PM2.5 Emissions")

dev.off()