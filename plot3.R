Headers = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

House_Power <- read.table("household_power_consumption.txt",header = TRUE,sep=";",col.names=Headers,skip=66636,nrows=2880)
House_Power$Date <- as.Date(House_Power$Date,format = "%d/%m/%Y")
Date_Full <- as.POSIXct(paste(House_Power$Date,House_Power$Time,sep=" "),format = "%Y-%m-%d %H:%M:%S")

png(filename="plot3.png",width = 480,height = 480)

plot(x=Date_Full,y=House_Power$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")

lines(x=Date_Full,y=House_Power$Sub_metering_2,col="red")
lines(x=Date_Full,y=House_Power$Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)

dev.off()