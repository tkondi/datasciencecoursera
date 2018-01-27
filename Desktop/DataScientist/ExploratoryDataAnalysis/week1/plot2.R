hpc <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?") 
onetwoFeb <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007") ,]
Sys.setlocale("LC_TIME", "American")
onetwoFeb$Time <- strptime(paste(onetwoFeb$Date, onetwoFeb$Time), "%d/%m/%Y %H:%M:%S")
png(file = "plot2.png", width=480, height=480, units="px")
with(onetwoFeb, plot(Time,Global_active_power, type = "l",xlab = "", ylab ="Global Active Power (killowatts)" ))
dev.off()
