source("readdata.R")
energydata <- readdata()


png("plot2.png", width=504, height = 504, units="px")
plot(energydata$datetime, energydata$Global_active_power, type = "lines", 
     xlab = "",
     ylab = "Global Active Powers (kilowatts)")
dev.off()
