library(data.table)
library(dplyr)

readdata <- function (){
  data <- fread("household_power_consumption.txt", header = TRUE, 
                colClasses = rep("character", 9))
  data <- filter(data, (Date == "1/2/2007" | Date == "2/2/2007"))
  data <- as.data.frame(data)
  data <- mutate(data, datetime = paste(Date, Time))
  data$datetime <- strptime(data$datetime, "%e/%m/%Y %T")
  data[,3:9] <- lapply(data[,3:9], as.numeric)
  data
}
