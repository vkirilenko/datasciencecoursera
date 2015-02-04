plot1 = function(name="household_power_consumption.txt"){
  
  ## Reading data & setting column names
  dtf = read.table(name,sep = ";",header = F, 
           skip = 65000, nrows = 5000,stringsAsFactors = F)
  colnames(dtf) = c("Date","Time","Global_active_power",
          "Global_reactive_power","Voltage","Global_intensity",
          "Sub_metering_1","Sub_metering_2","Sub_metering_3")
  
  ## Subsetting data for each day and binding them into one object
  first = dtf[grepl("^1/*",dtf$Date),]
  second = dtf[grepl("^2/*",dtf$Date),]
  dtf = rbind(first,second)

  ## Drawing a plot
  png("plot1.png", width=480, height=480, units="px")
  hist(dtf$Global_active_power, col = "red",
           xlab = "Global Active Power (kilowatts)",
           main = paste("Global Active Power"))
  dev.off()
}