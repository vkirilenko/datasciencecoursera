plot4 = function(){

## Main part: reading&subsetting files for plot

# Reading files
print("Reading files...")
NEI = readRDS("summarySCC_PM25.rds")
print("Wait a second...")
SCC = readRDS("Source_Classification_Code.rds")
print("Done!")


## Plot part: building plot
  library("ggplot2")
  SCCcoal = SCC[grepl("Coal",SCC$EI.Sector),]
  coal_df = subset(NEI,NEI$SCC %in% SCCcoal$SCC)
  bplot = ggplot(coal_df, aes(year, (Emissions/1000000))) + geom_bar(stat="identity") + 
  ggtitle(expression(atop(bold("US emissions from coal combustion-related sources by year")))) + 
  xlab("Year")+ ylab("Coal PM25 Emissions in mln. tons") +scale_x_continuous(breaks=c(1999,2002,2005,2008))
  ggsave(filename="Plot4.png",dpi=120, plot=bplot)
}

