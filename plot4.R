source("loaddata.R")
plot4 <- function(hpcdata = NULL){
	if(is.null(hpcdata)) hpcdata <- loaddata()
	png(filename="plot4.png", width=480, height=480)
	par(mfcol=c(2, 2), mar=c(4,4,4,4))
	plot(hpcdata$Time, hpcdata$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
	plot(hpcdata$Time, hpcdata$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
	lines(hpcdata$Time, hpcdata$Sub_metering_2, col="red")
	lines(hpcdata$Time, hpcdata$Sub_metering_3, col="blue")
	plot(hpcdata$Time, hpcdata$Voltage, type="l", col="black", xlab="datetime", ylab="Voltage")
	plot(hpcdata$Time, hpcdata$Global_reactive_power, type="l", col="black", xlab="datetime", ylab="Global_reactive_power")
	dev.off()
}
