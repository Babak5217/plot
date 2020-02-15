household_power_consumption <- read.csv("~/R/household_power_consumption.txt",
 header=TRUE, sep=";")
names(household_power_consumption) 
x <- household_power_consumption[66637:69516,]
library(grDevices)
library(graphics)

png(file= "plot1.png", height=480)



hist(as.numeric(x$Global_active_power)/1000,xlab = "Global Active Power(kilowatts)",
     main ="Global Active Power", col = "red" )

dev.off()


