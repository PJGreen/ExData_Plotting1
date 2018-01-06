hist(dt_sub$Global_active_power, col="red", main="Global Active Power", ylab="Frequency", xlab="Global Active Power (kilowatts)")
dev.copy(png, file="Plot1.png")
dev.off()