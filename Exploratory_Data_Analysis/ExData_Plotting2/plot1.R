plot1 = function(){

## Main part: reading&subsetting files

# Reading files
print("Reading files...")
NEI = readRDS("summarySCC_PM25.rds")
print("Wait a second...")
SCC = readRDS("Source_Classification_Code.rds")
print("Done!")

# Subsetting by year
print("Sorting data...")
df1999 = subset(NEI, (NEI$year) == "1999")
df2002 = subset(NEI, (NEI$year) == "2002")
df2005 = subset(NEI, (NEI$year) == "2005")
df2008 = subset(NEI, (NEI$year) == "2008")
print("Thanks for waiting!")


## Plot part: building plot

  fullEmission = as.table(c((sum(df1999$Emission)/1000000),
                            (sum(df2002$Emission)/1000000),
                            (sum(df2005$Emission)/1000000),
                            (sum(df2008$Emission)/1000000)))
  names(fullEmission) = c("1999","2002","2005","2008")
  
  png("Plot1.png")
  barplot(fullEmission, col = c("darkred","darkgreen","darkgrey","blue"),
           ylab = "Emission in mln. tons", xlab = "Years",
            main = paste("US total PM2.5 emission from all sources by Year")) 
 
  dev.off()
}