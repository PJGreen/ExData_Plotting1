library(data.table)
dt<-fread("household_power_consumption.txt", sep=";", header=T, na.strings = c("?"))
dt$Date <- as.Date(dt$Date, format="%d/%m/%Y")
dt_sub<-subset(dt, dt$Date==as.Date("2007-02-01", format="%Y-%m-%d") | dt$Date==as.Date("2007-02-02", format="%Y-%m-%d"))
#dt_sub$date_time<- paste(dt_sub$Date, dt_sub$Time, sep=" ")
#dt_sub$date_time<-as.Date(dt_sub$date_time, format="%Y-%m-%d %H:%M:%S")
dt_sub$date_time <- with (dt_sub, as.POSIXct(paste(format(Date, "%m/%d/%Y"), Time), format="%m/%d/%Y %H:%M:%S"))
rm(dt)
#dt_sub<-dt_sub[,!c("Date","Time")]
