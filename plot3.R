#Plot 3

#Open PNG File
png("plot3.png", width = 480, height = "480")

#Make the plot
with(wdf, plot(DateTime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering"))

#Add second line
with(wdf, lines(DateTime, Sub_metering_2, type = "l", col = "red"))

#Add third line
with(wdf, lines(DateTime, Sub_metering_3, type = "l", col = "blue"))

#Make the legend
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       col = c("black","red","blue"), lty = 1:3, cex = 0.8)

#Close the File
dev.off()