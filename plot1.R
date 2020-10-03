dev.set(3)
png("plot1.png", 480, 480)
hist(t$Global_active_power, col = "red",main = "Global Active Power", 
     xlab = "Global Active Power(kilowatts)")
dev.off()
