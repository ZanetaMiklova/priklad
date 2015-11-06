#data<-read.table("household_power_consumption.txt", sep=";", dec=".", head=TRUE)

#vybere subdata podle data
#sub_data<-subset(data, Date<=as.Date("2007-02-02"))
#sub_data<-subset(sub_data, Date>=as.Date("2007-02-01"))


################## Part 1 #######################
#pretransformuje factor na numeric
#sub_data$Global_active_power<-as.numeric(levels(sub_data$Global_active_power)[sub_data$Global_active_power])

#udela pozadovany histogram 
#hist(sub_data$Global_active_power, main="Global Active Power", col="red", xlab = "Global Active (kilowatts)", ylim=c(0,1200))
#axis(2, at=seq(0,1200,200))

#################################################

################## Part 2 #######################

#sub_data$week<-weekdays(sub_data$Date)

#plot(sub_data$Global_active_power, type="line", ylab = "Global Active (kilowatts)", xlab="", xaxt = "n")
#axis(1, at=c(1,1441,2880), labels=c("Thu", "Fri", "Sat"))

################## Part 3 #######################
#sub_data$Sub_metering_1<-as.numeric(levels(sub_data$Sub_metering_1)[sub_data$Sub_metering_1])
#sub_data$Sub_metering_2<-as.numeric(levels(sub_data$Sub_metering_2)[sub_data$Sub_metering_2])
#sub_data$Sub_metering_3<-as.numeric(levels(sub_data$Sub_metering_3)[sub_data$Sub_metering_3])
plot(sub_data$Sub_metering_1, type="line", ylab = "Energy sub metering", xlab="", xaxt = "n", ylim = c(0,max(sub_data$Sub_metering_1)))
axis(1, at=c(1,1441,2880), labels=c("Thu", "Fri", "Sat"))
par(new=TRUE)
plot(sub_data$Sub_metering_2, type="line", ylab = "Energy sub metering", xlab="", xaxt = "n", ylim = c(0,max(sub_data$Sub_metering_1)), col="red")
par(new=TRUE)
plot(sub_data$Sub_metering_3, type="line", ylab = "Energy sub metering", xlab="", xaxt = "n", ylim = c(0,max(sub_data$Sub_metering_1)), col="blue")
legend("topright", lty=1, col = c("black","blue", "red"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

################## Part 4 #######################
#sub_data$Voltage<-as.numeric(levels(sub_data$Voltage)[sub_data$Voltage])
#sub_data$Global_reactive_power<-as.numeric(levels(sub_data$Global_reactive_power)[sub_data$Global_reactive_power])
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


