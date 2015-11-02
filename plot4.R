source("readdata.R")
energydata <- readdata()

#define the grid
par(mfrow=c(2,2))

png("plot4.png", width=504, height = 504, units="px")
plot(energydata$datetime, energydata$Global_active_power, type = "lines", 
     xlab = "",
     ylab = "Global Active Powers")
plot(energydata$datetime, energydata$Voltage, type = "lines", 
     xlab = "datetime",
     ylab = "Voltage")
plot(energydata$datetime, energydata$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "n")
lines(energydata$datetime, energydata$Sub_metering_1, col = "black")
lines(energydata$datetime, energydata$Sub_metering_2, col = "red")
lines(energydata$datetime, energydata$Sub_metering_3, col = "blue")
legend("topright", legend = (names(energydata)[7:9]), 
       col = c("black", "red", "blue"), lty = c(1,1), border = FALSE )

dev.off()
