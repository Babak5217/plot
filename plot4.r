household_power_consumption <- read.csv("~/R/household_power_consumption.txt",
                                        header=TRUE, sep=";")
names(household_power_consumption) 
x <- household_power_consumption[66636:69516,]
library(ggplot2)
library(grDevices)
png(file= "plot4.png", height=480,width = 480)
par(mfrow = c(2,2))
plot( as.numeric(x$Global_active_power)/1000, type ="l",xlab = NULL, ylab =  "Global Active Power(kilowatts)")  
plot( as.numeric(x$Voltage ) , type ="l",xlab = "datetime", ylab =  "Voltage")
 
with(x, plot(as.numeric(Sub_metering_1), ylab= "Energy sub metering",type = "l",col = "black") )
with(x, points(as.numeric(Sub_metering_2  ), type = "l" , col = "red"))
with(x, points(as.numeric(Sub_metering_3  ), type = "l" , col = "blue"))
legend("topright" ,pch ="-", col =c("black" , "red" , "blue"), legend = c("Sub_metering_1" , "Sub_metering_2" , "Sub_metering_3"))
plot( as.numeric(x$Global_reactive_power), type ="l",xlab ="datetime" , ylab =  "Global reActive Power")
dev.off
