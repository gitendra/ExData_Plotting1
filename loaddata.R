loaddata <- function() {
	hpcdata <- read.table("household_power_consumption.txt", header=TRUE, sep=";", colClasses=c("character", "character", "numeric" , "numeric" , "numeric" , "numeric" , "numeric" , "numeric" , "numeric" ), na="?")
	hpcdata$Time <- strptime(paste(hpcdata$Date, hpcdata$Time), "%d/%m/%Y %H:%M:%S")
	hpcdata <- hpcdata[(as.Date(hpcdata$Date, format = "%d/%m/%Y") >=as.Date("1/2/2007",format = "%d/%m/%Y")) & (as.Date(hpcdata$Date, format = "%d/%m/%Y") <as.Date("3/2/2007",format = "%d/%m/%Y")) , ]
	return (hpcdata)
}
