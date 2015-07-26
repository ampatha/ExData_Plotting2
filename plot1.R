## Sanem Seren Sever C_EDA - A2
## plot1.R (plot1.png)
###############################

## Attention: WD must contain the source data
## Read data for plotting:
source("LoadData.R")

png(filename = "plot1.png",  width = 480, height = 480,  units = "px")
#totEmis <- aggregate(emisData$Emissions, list(emisData$year), FUN = "sum")
totEmis <- with(emisData, tapply(emisData$Emissions,emisData$year,sum)) 

plot(totEmis,col="red", type =  "l", xlab = "Year", main = "Total Emissions in USA between 1999 & 2008", 
     ylab = "Total PM2.5 Emission")
dev.off()