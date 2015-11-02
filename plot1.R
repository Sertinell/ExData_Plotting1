source("readdata.R")
energydata <- readdata()

png("plot1.png", width=504, height = 504, units="px")
hist(energydata$Global_active_power, col = "red", 
     xlab = "Global Active Power (kilowatts)",  
     main = "Global Active Power",
     axes = FALSE)
axis(1, at = seq(0,6,2))
axis(2, at = seq(0,1200, 200))
dev.off()
