household_power_consumption <- read.csv("~/R/household_power_consumption.txt",
                                        header=TRUE, sep=";")
names(household_power_consumption) 
x <- household_power_consumption[66636:69516,]
library(ggplot2)
library(grDevices)
png(file= "plot3.png", height=480,width = 480)
with(x, plot(as.numeric(Sub_metering_1), ylab= "Energy sub metering",type = "l",col = "black") )
with(x, points(as.numeric(Sub_metering_2  ), type = "l" , col = "red"))
with(x, points(as.numeric(Sub_metering_3  ), type = "l" , col = "blue"))
legend("topright" ,pch ="-", col =c("black" , "red" , "blue"), legend = c("Sub_metering_1" , "Sub_metering_2" , "Sub_metering_3"))
dev.off
