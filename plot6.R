## Sanem Seren Sever C_EDA - A2
## plot6.R (plot6.png)
###############################

## Attention: WD must contain the source data
## Read data for plotting:
source("LoadData.R")
##Select Baltimor and LA data

EmisBLA = subset(emisData,  (fips=="24510" | fips=="06037"))

##Filer Motor
sccMotor <-  sccData$SCC[grep("[Mm]otor [Vv]ehicle ", sccData$Short.Name)]

emisMotorBLA <- EmisBLA[EmisB$SCC %in% sccMotor,]

##Plotting:
library(ggplot2)
png(filename = "plot6.png",  width = 520, height = 480,  units = "px")

g <- ggplot(emisMotorBLA, aes(year, Emissions, color = fips))
g + geom_line(stat = "summary", fun.y="sum") + 
  ylab("Total PM2.5 Emissions") + 
  ggtitle("Motor Vehicle Caused Emissions\nin Baltimor vs Los Angeles between 1999 & 2008") +
  scale_colour_discrete(name="Cities", label=c("Los Angeles", "Baltimore"))

dev.off()