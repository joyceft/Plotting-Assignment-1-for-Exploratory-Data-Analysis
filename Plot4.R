#Plot 4: plot1+2+3+4
#plot4 use par(mfrow= c(2,2))to put all 4 pngs together

par(mfrow = c(2,2))
#plot1
hist(plotdata$Global_active_power,
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency",
     col = "red",
     breaks = 20,
     xaxt = "n",
     yaxt = "n")
axis = axis(1, at = seq(0,7,1))#set x axis scale
axis = axis(2, at = seq(0,1300,200)) #set y axis scale
rug(plotdata$Global_active_power)


#Plot2

plot(plotdata$DT, plotdata$Global_active_power, 
     xlab = "Time Period",ylab = "Global Active Power(kilowatts)", 
     main = "Global Active Power vs Time Period", 
     type = "l", #1(L not 1) = line
     col = "blue") # stronger contrast

#plot3

plot(plotdata$DT, plotdata$Sub_metering_1, type = "l", 
     xlab = "Time Period", ylab = "Energy Sub Metering", col = "black")
lines(plotdata$DT, plotdata$Sub_metering_2, type = "l", col = "red")
lines(plotdata$DT, plotdata$Sub_metering_3, type = "l", col = "blue")
legend("topright",
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("black","red","blue"),lty =1, cex = 1)

#plot4

plot(plotdata$DT, plotdata$Global_reactive_power, 
     xlab = "datetime", ylab = "Global_reactive_power", 
     type = "l", col = "black")

#dev.off()

