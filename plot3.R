## Sanem Seren Sever C_EDA - A2
## plot3.R (plot3.png)
###############################

## Attention: WD must contain the source data
## Read data for plotting:
source("LoadData.R")
##Select Baltimor data
EmisBalt <- emisData[emisData$fips == "24510", ] 
##Use GGPLOT
library(ggplot2)

png(filename = "plot3.png",  width = 480, height = 480,  units = "px")


g <- ggplot(EmisBalt, aes(year, Emissions, color = type))
g + geom_line(stat = "summary", fun.y = "sum") +
    ylab("Total PM2.5 Emissions") +
    ggtitle("Total Emissions in Baltimore between 1999 & 2008")
dev.off()
