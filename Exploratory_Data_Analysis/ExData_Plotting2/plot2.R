plot2 = function(){

## Main part: reading&subsetting files for plot

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


## Plot part: building  plot

     BaltEmission = as.table(c((sum(df1999[df1999$fips == "24510",4])),
                               (sum(df2002[df2002$fips == "24510",4])),
                               (sum(df2005[df2005$fips == "24510",4])),
                               (sum(df2008[df2008$fips == "24510",4]))))
     names(BaltEmission) = c("1999","2002","2005","2008")
     
     png("Plot2.png")
     barplot(BaltEmission, col = c("darkred","darkgreen","darkgrey","blue"),
          ylab = "Emission in tons", xlab = "Years",
          main = paste("Baltimore total PM2.5 emission from all sources by Year")) 
     dev.off()

}