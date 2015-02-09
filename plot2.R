source("loaddata.R")
plot2 <- function(hpcdata = NULL){
	if(is.null(hpcdata)) hpcdata <- loaddata()
	png(filename="plot2.png", width=480, height=480)
	plot(hpcdata$Time, hpcdata$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
	dev.off()
}
