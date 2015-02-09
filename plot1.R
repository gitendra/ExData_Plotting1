source("loaddata.R")
plot1 <- function(hpcdata = NULL){
	if(is.null(hpcdata)) hpcdata <- loaddata()
	png(filename="plot1.png", width=480,height=480)
	hist(hpcdata$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", ylab="Frequency", col="red")
	dev.off()
}
