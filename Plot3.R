#Assignment 1 - Exploratory Data Analysis
#
#Author: Leo Rozenfeld
#
#Date: 6/2/2016


#The subset of data used is dates 2007-02-01 and 2007-02-02
#starts at like 66638 and ends on line 69517. Total # of observations is 2880 


#run dependancy packages

library(lubridate)

#Import Data
names <- names(read.table("household_power_consumption.txt", sep=";", header=TRUE, nrows=1))
powerData<- read.table("household_power_consumption.txt", sep=";", col.names=names, skip=66637, nrows=2880)

#Convert first two columns to data objects

powerData$DateProper <- dmy(powerData$Date) + hms(powerData$Time)

#Drawing the data

png(filename = "Plot3.png")

with(powerData, plot(DateProper, Sub_metering_1, type="n", xlab="", ylab="Energy sub metering"))
lines(powerData$DateProper, powerData$Sub_metering_1, col="black")
lines(powerData$DateProper, powerData$Sub_metering_2, col="red")
lines(powerData$DateProper, powerData$Sub_metering_3, col="blue")

legend("topright", col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1)

dev.off()

