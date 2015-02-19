plot6 = function(){

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
  dataBalt$fips = "Baltimore"
  dataLA = subset(NEI[NEI$fips == "06037",])
  dataLA$fips = "Los Angeles"
  SCCmobile = SCC[grepl("On-Road",SCC$EI.Sector),]
  mobBalt_df = subset(dataBalt,dataBalt$SCC %in% SCCmobile$SCC)
  mobLA_df = subset(dataLA,dataLA$SCC %in% SCCmobile$SCC)
  all_df = rbind(mobBalt_df,mobLA_df)
  bplot = ggplot(all_df, aes(year, Emissions,color= fips)) + stat_summary(geom="line", fun.y="sum", size = 2) + xlab("Year") + 
    ylab("On-road PM25 Emissions in tons") + ggtitle(expression(atop(bold("Comparison of LA and Baltimore emissions of on-road sources by year")))) +
    scale_x_continuous(breaks=c(1999,2002,2005,2008))+ theme(plot.title=element_text(color="blue"),legend.position="bottom")+ scale_colour_hue(name = "City:")
  ggsave(filename="Plot6.png",dpi=150, plot=bplot)
}