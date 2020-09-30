#This script includes the instructions to load the dataset
#It assumes that the data is allready in your working directory

#Load the dataset
df <- read.delim("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

#Package to manage dates
library(lubridate)

#Make the variable "Date" date type
df$Date <- dmy(df$Date)

#Subset the dataframe by date
wdf <- subset(df, Date >= "2007-02-01" & Date <= "2007-02-02")


#Plot1

#Check the class of the variable for the histogram
class(wdf$Global_active_power)

#Chamge the class of the variable from "character" to "numeric"
wdf$Global_active_power <- as.numeric(wdf$Global_active_power)

#Check that the variable is now "numeric"
class(wdf$Global_active_power)

#Open PNG File
png("plot1.png", width = 480, height = "480")

#Make the first plot
with(wdf, hist(Global_active_power, col = "red", main = "Global Active Power", 
               xlab = "Global Active Power (killowatts)"))

#Close the file
dev.off()