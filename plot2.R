plot(Global_active_power ~ date_time, dt_sub, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="Plot2.png")
dev.off()