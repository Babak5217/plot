household_power_consumption <- read.csv("~/R/household_power_consumption.txt",
                                        header=TRUE, sep=";")
names(household_power_consumption) 
x <- household_power_consumption[66636:69516,]
library(grDevices)
library(graphics)
png(file= "plot2.png", height=480)

plot( as.numeric(x$Global_active_power)/1000, type ="l",xlab = NULL, ylab =  "Global Active Power(kilowatts)")
dev.off()
