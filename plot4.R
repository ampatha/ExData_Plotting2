## Sanem Seren Sever C_EDA - A2
## plot4.R (plot4.png)
###############################

## Attention: WD must contain the source data
## Read data for plotting:
source("LoadData.R")
##Filer Coal
sccCoal <-  sccData$SCC[grep("[Cc]oal", sccData$EI.Sector)]
emisCoal <- emisData[emisData$SCC %in% sccCoal,]
##Get Yearly Totals
totEmisCoal <- aggregate(emisCoal$Emissions, list(emisCoal$year),FUN= sum)
##Correct Column Names
names(totEmisCoal)<-c("Year","Emissions")
##Plotting:
png(filename = "plot4.png",  width = 520, height = 480,  units = "px")

plot(totEmisCoal, col="green",
                       type="l", 
                        main="Coal Caused Emissions Accross USA\nbetween 1999 & 2008", 
                        xlab="Year", 
                        ylab="Total PM2.5 Emissions")

dev.off()