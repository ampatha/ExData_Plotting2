## Sanem Seren Sever C_EDA - A2
## plot5.R (plot5.png)
###############################

## Attention: WD must contain the source data
## Read data for plotting:
source("LoadData.R")
##Select Baltimor data
EmisBalt <- emisData[emisData$fips == "24510", ]
##Filer Motor
sccMotor <-  sccData$SCC[grep("[Mm]otor [Vv]ehicle ", sccData$Short.Name)]

emisMotor <- EmisBalt[EmisBalt$SCC %in% sccMotor,]
##Get Yearly Totals
totEmisMotor <- aggregate(emisMotor$Emissions, list(emisMotor$year),FUN= sum)
##Correct Column Names
names(totEmisMotor)<-c("Year","Emissions")
##Plotting:
png(filename = "plot5.png",  width = 520, height = 480,  units = "px")

plot(totEmisMotor, 
                       type="l", 
                       col="blue",
                        main="Motor Vehicle Caused Emissions\nin Baltimor between 1999 & 2008", 
                        xlab="Year", 
                        ylab="Total PM2.5 Emissions")

dev.off()