hpc <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?") 
onetwoFeb <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007") ,]
png(file = "plot1.png", width=480, height=480, units="px")
hist(onetwoFeb$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (killowatts)" )
dev.off()