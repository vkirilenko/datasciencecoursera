plot5 = function(){

## Main part: reading&subsetting files for plot

# Reading files
print("Reading files...")
NEI = readRDS("summarySCC_PM25.rds")
print("Wait a second...")
SCC = readRDS("Source_Classification_Code.rds")
print("Done!")


## Plot part: building plot

## Note: I chose only on-road sources for a plot by two reason.
## First: On-road vehicle emissions give most amount of all emissions
## Second: Other observations did not significantly affect the results
  
  library("ggplot2")
  dataBalt = subset(NEI[NEI$fips == "24510",])
  SCCmobile = SCC[grepl("On-Road",SCC$EI.Sector),]
  mobBalt_df = subset(dataBalt,dataBalt$SCC %in% SCCmobile$SCC)
  bplot = ggplot(mobBalt_df, aes(year, Emissions)) + geom_bar(stat="identity", fill="darkred", colour="darkred")+ 
    ggtitle(expression(atop(bold("Total on-road emissions in Baltimore by year")))) + scale_x_continuous(breaks=c(1999,2002,2005,2008)) +
    xlab("Year") + ylab("On-road PM25 Emissions in tons") + theme(legend.position="none")
  ggsave(filename="Plot5.png",dpi=120, plot=bplot)
}