## plot 1 ##
##read data
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".")

data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]   # keep only the necessary data
png("plot1.png", width=480, height=480) # set the graphic engine

## code for histogram
hist(round(as.numeric(data$Global_active_power)) / 1000, 
     main = "Global Active Power", col = "red", 
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency", 
     breaks = 11)

dev.off()  #reset graphic engine

