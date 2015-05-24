plot4 = function(name="household_power_consumption.txt"){
  
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
  
  ## Merging Date & Time 
  dtf$Date_Time = strptime(paste(dtf$Date, dtf$Time), 
                           format = "%d/%m/%Y %H:%M:%S")

  ## Drawing plots
  png("plot4.png", width=480, height=480, units="px")
  par(mfrow = c(2,2))
  
  plot(dtf$Date_Time,dtf$Global_active_power, type = "l",
       ylab = "Global Active Power",xlab = "")
  
  plot(dtf$Date_Time,dtf$Voltage, type = "l",
       ylab = "Voltage",xlab = "datetime")
  
  plot(dtf$Date_Time,dtf$Sub_metering_1,type = "n",
       ylab = "Energy sub metering",xlab="")
  points(dtf$Date_Time,dtf$Sub_metering_1, type = "l")
  points(dtf$Date_Time,dtf$Sub_metering_2, type = "l",col = "red")
  points(dtf$Date_Time,dtf$Sub_metering_3, type = "l",col = "blue")
  legend("topright",lty=1,bty = "n",cex=0.90, col = c("black","red","blue"),
         legend =c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

  plot(dtf$Date_Time,dtf$Global_reactive_power, type= "l",
       ylab = "Global_reactive_power",xlab = "datetime")
  
  
  dev.off()
}