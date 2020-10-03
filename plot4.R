par(mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,0,0))

plot(power1$Global_active_power~power1$dateTime, type="l", 
     ylab="Global Active Power (kilowatts)",
     xlab="")
plot(power1$Voltage~power1$dateTime, type = "l",
     ylab = "Voltage", xlab = "")
plot(power1$dateTime,power1$Sub_metering_1, xlab = "",
     ylab = "Energy Sub metering",
     type = "l")
lines(power1$dateTime, power1$Sub_metering_2, type = "l", col = "red")
lines(power1$dateTime, power1$Sub_metering_3, type = "l", col = "blue")
legend("topright",col = c("black","red","blue"),
       legend = c("Sub_metering_1",
                  "Sub_metering_2","Sub_metering_3"),
       pch = "_",lty = 1)
plot(power1$Global_reactive_power~power1$dateTime, type = "l", 
     ylab = "Global_reactive_power",xlab = "")