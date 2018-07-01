data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".")

data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]   # keep only the necessary data
png("plot2.png", width=480, height=480) # set the graphic engine


datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") #convert date to appropriate format
globalActivePower <- as.numeric(data$Global_active_power) # convert to numeric

# code for line chart
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()