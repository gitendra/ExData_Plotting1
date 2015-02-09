source("loaddata.R")
plot3 <- function(hpcdata = NULL){
	if(is.null(hpcdata)) hpcdata <- loaddata()
	png(filename="plot3.png", width=480, height=480)
	plot(hpcdata$Time, hpcdata$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
	lines(hpcdata$Time, hpcdata$Sub_metering_2, col="red")
	lines(hpcdata$Time, hpcdata$Sub_metering_3, col="blue")
	legend("topright", col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)
	dev.off()
}
