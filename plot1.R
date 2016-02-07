#Assignment 1 - Exploratory Data Analysis
#
#Author: Leo Rozenfeld
#
#Date: 6/2/2016


#The subset of data used is dates 2007-02-01 and 2007-02-02
#starts at like 66638 and ends on line 69517. Total # of observations is 2880 

#Import Data
names <- names(read.table("household_power_consumption.txt", sep=";", header=TRUE, nrows=1))
powerData<- read.table("household_power_consumption.txt", sep=";", col.names=names, skip=66637, nrows=2880)


#Plot 1 operations

#set graphics device, draw, and close graphics device
png(filename = "Plot1.png")
hist(powerData$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
