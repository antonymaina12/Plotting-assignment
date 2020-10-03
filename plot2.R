png("plot2.png", 480, 480)
plot(t$Global_active_power~t$dateTime, type="l", 
     ylab="Global Active Power (kilowatts)",
     xlab="")
dev.off()
