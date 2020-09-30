#Plot 4

#Open PNG File
png("plot4.png", width = 480, height = "480")

#Establish the Layout
par(mfrow = c(2,2), mar =  c(2, 5, 5, 3) )

#Add First Plot

with(wdf, plot(DateTime, Global_active_power, type = "l", 
               ylab = "Global Active Power", xlab = ""))

#Add Second Plot

with(wdf, plot(DateTime, Voltage, type = "l", xlab = "datetime", ylab = "Voltage"))

#Add Third Plot

with(wdf, plot(DateTime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering"))

with(wdf, lines(DateTime, Sub_metering_2, type = "l", col = "red"))

with(wdf, lines(DateTime, Sub_metering_3, type = "l", col = "blue"))

legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       col = c("black","red","blue"), lty = 1:3, cex = 0.8)

#Add Fourth Plot

with(wdf, plot(DateTime, Global_reactive_power, type = "l", xlab = "datetime", 
               ylab = "Global_reactive_power"))

#Close File
dev.off()