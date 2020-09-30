#Plot 2

#Create new variable merging both "Date" and "Time"
wdf$DateTime <- with(wdf, ymd(Date) + hms(Time))

#Open PNG File
png("plot2.png", width = 480, height = "480")

#Make second plot
with(wdf, plot(DateTime, Global_active_power, type = "l", 
               ylab = "Global Active Power (Kilowatts)", xlab = ""))

#Close the file
dev.off()