##reading the data
power<-read.table("household_power_consumption.txt",
         header = TRUE,sep = ";")
##change col Date into date class

library(lubridate)
power$Date <- as.Date(power$Date, "%d/%m/%Y")

##filtering from the dates 2007-02-01 and 2007-02-02
power1<-filter(power, Date >= as.Date("2007-02-01") & 
                       Date <= as.Date("2007-02-02"))

## Remove incomplete observation
power1 <- power1[complete.cases(power1),]

## Combine Date and Time column
dateTime <- paste(power1$Date, power1$Time)

## Name the vector
dateTime <- setNames(dateTime, "DateTime")

## Remove Date and Time column
power1 <- power1[ ,!(names(power1) %in% c("Date","Time"))]

## Add DateTime column
power1 <- cbind(dateTime, power1)

## Format dateTime Column
power1$dateTime <- as.POSIXct(dateTime)