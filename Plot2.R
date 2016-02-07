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

png(filename = "Plot2.png")

with(powerData, plot(DateProper, Global_active_power, type="n", xlab="", ylab="Global Active Power (kilowatts)"))
lines(powerData$DateProper, powerData$Global_active_power)

dev.off()

