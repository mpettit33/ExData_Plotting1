Headers = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

House_Power <- read.table("household_power_consumption.txt",header = TRUE,sep=";",col.names=Headers,skip=66636,nrows=2880)
House_Power$Date <- as.Date(House_Power$Date,format = "%d/%m/%Y")
Date_Full <- as.POSIXct(paste(House_Power$Date,House_Power$Time,sep=" "),format = "%Y-%m-%d %H:%M:%S")

png(filename="plot2.png",width = 480,height = 480)

plot(x=Date_Full,y=House_Power$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()