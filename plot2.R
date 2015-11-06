### Miklova Zaneta ###

data<-read.table("household_power_consumption.txt", sep=";", dec=".", head=TRUE)
data$Date<-as.Date(data$Date, "%d/%m/%Y")
sub_data<-subset(data, Date<=as.Date("2007-02-02"))
sub_data<-subset(sub_data, Date>=as.Date("2007-02-01"))

sub_data$Global_active_power<-as.numeric(levels(sub_data$Global_active_power)[sub_data$Global_active_power])
png('plot2.png', width = 480, height = 480)
par(mfrow=c(1,1))
plot(sub_data$Global_active_power, type="line", ylab = "Global Active (kilowatts)", xlab="", xaxt = "n")
axis(1, at=c(1,1441,2880), labels=c("Thu", "Fri", "Sat"))
dev.off()