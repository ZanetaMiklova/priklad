### Miklova Zaneta ###

data<-read.table("household_power_consumption.txt", sep=";", dec=".", head=TRUE)
data$Date<-as.Date(data$Date, "%d/%m/%Y")
sub_data<-subset(data, Date<=as.Date("2007-02-02"))
sub_data<-subset(sub_data, Date>=as.Date("2007-02-01"))

sub_data$Sub_metering_1<-as.numeric(levels(sub_data$Sub_metering_1)[sub_data$Sub_metering_1])
sub_data$Sub_metering_2<-as.numeric(levels(sub_data$Sub_metering_2)[sub_data$Sub_metering_2])
sub_data$Voltage<-as.numeric(levels(sub_data$Voltage)[sub_data$Voltage])
sub_data$Global_reactive_power<-as.numeric(levels(sub_data$Global_reactive_power)[sub_data$Global_reactive_power])
sub_data$Global_active_power<-as.numeric(levels(sub_data$Global_active_power)[sub_data$Global_active_power])



#par(mfrow=c(1,1))
png('plot4.png', width = 480, height = 480)
par(mfrow=c(2,2))
plot(sub_data$Global_active_power, type="line", ylab = "Global Active (kilowatts)", xlab="", xaxt = "n")
axis(1, at=c(1,1441,2880), labels=c("Thu", "Fri", "Sat"))
plot(sub_data$Voltage, type="line", ylab = "Voltage", xlab="datatime", xaxt = "n")
axis(1, at=c(1,1441,2880), labels=c("Thu", "Fri", "Sat"))
plot(sub_data$Sub_metering_1, type="line", ylab = "Energy sub metering", xlab="", xaxt = "n", ylim = c(0,max(sub_data$Sub_metering_1)))
axis(1, at=c(1,1441,2880), labels=c("Thu", "Fri", "Sat"))
par(new=TRUE)
plot(sub_data$Sub_metering_2, type="line", ylab = "Energy sub metering", xlab="", xaxt = "n", ylim = c(0,max(sub_data$Sub_metering_1)), col="red")
par(new=TRUE)
plot(sub_data$Sub_metering_3, type="line", ylab = "Energy sub metering", xlab="", xaxt = "n", ylim = c(0,max(sub_data$Sub_metering_1)), col="blue")
legend("topright", lty=1, col = c("black","blue", "red"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
plot(sub_data$Global_reactive_power, type="line", ylab = "Global_reactive_power", xlab="datatime", xaxt = "n")
axis(1, at=c(1,1441,2880), labels=c("Thu", "Fri", "Sat"))
dev.off()