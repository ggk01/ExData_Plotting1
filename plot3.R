#insert data
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".")
data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
png("plot3.png", width=480, height=480)

## prepare data for charts
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(as.character(data$Global_active_power))
subMetering1 <- as.numeric(as.character(data$Sub_metering_1))
subMetering2 <- as.numeric(as.character(data$Sub_metering_2))
subMetering3 <- as.numeric(as.character(data$Sub_metering_3))

## create chart
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()

