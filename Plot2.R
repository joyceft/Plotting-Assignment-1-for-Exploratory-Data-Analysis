#Plot2: scatter plot with line
png(file = "Plot2.png", 
    bg = "transparent",
    width = 480, height = 480, units = "px", pointsize = 12)

#x is the first column DT, y is the 2 column Global Active Power.
plot(plotdata$DT, plotdata$Global_active_power, 
     xlab = "Time Period",ylab = "Global Active Power(kilowatts)", 
     main = "Global Active Power vs Time Period", 
     type = "l", #1(L not 1) = line
     col = "blue") # set blue not black as stronger contrast

dev.off()
