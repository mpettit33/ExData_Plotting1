Headers = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

House_Power <- read.table("household_power_consumption.txt",header = TRUE,sep=";",col.names=Headers,skip=66636,nrows=2880)

png(filename="plot1.png",width = 480,height = 480)
hist(x=House_Power$Global_active_power,breaks=15,col="red",main="Global Active Power",xlab = "Global Active Power (kilowatts)")
dev.off()
