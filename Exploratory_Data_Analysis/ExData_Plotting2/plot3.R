plot3 = function(){

## Main part: reading&subsetting files for plot

# Reading files
print("Reading files...")
NEI = readRDS("summarySCC_PM25.rds")
print("Wait a second...")
SCC = readRDS("Source_Classification_Code.rds")
print("Done!")

## Plot part: building  plot
  library("ggplot2")
  dataBalt = subset(NEI[NEI$fips == "24510",])
  bplot = ggplot(dataBalt, aes(year, Emissions, fill=type)) + geom_bar(stat="identity", position="dodge") +
    xlab("Year")+ ylab("Volume PM25 Emissions") + ggtitle(expression(atop(bold("Baltimore PM2.5 type emission by year")))) + 
    scale_x_continuous(breaks=c(1999,2002,2005,2008))
  ggsave(filename="Plot3.png",dpi=120, plot=bplot)
}
      
