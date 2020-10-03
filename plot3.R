plot(power1$dateTime,power1$Sub_metering_1,xlab = "", ylab = "Energy Sub metering",
     type = "l")
lines(power1$dateTime, power1$Sub_metering_2, type = "l", col = "red")
lines(power1$dateTime, power1$Sub_metering_3, type = "l", col = "blue")
legend("topright",col = c("black","red","blue"),
                        legend = c("Sub_metering_1",
                          "Sub_metering_2","Sub_metering_3"),
                                pch = "_",lty = 1)