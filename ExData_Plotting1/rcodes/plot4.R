setwd("D:/Documents/Coursera/ExData_Plotting1")
#load the Electric power consumption dataset
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

# create a temporary directory
td = tempdir()
# create the placeholder file
tempzip = tempfile(tmpdir=td, fileext=".zip")
#temp <- tempfile(tmpdir=td, fileext=".txt")
#download the dataset .zip
download.file(url,tempzip)
#download.file(url,tempzip, method='curl')

# get the name of the first file in the zip archive
temp = unzip(tempzip, list=TRUE)$Name[1]
# unzip the file to the temporary directory
unzip(tempzip, files=temp, exdir=td, overwrite=TRUE)
# fpath is the full path to the extracted file
fpath = file.path(td, temp)

# read the data
data <- read.table(fpath, header = FALSE, sep = ";", skip = 66637, nrows = 2880)
# read the header names for the data
data_header <- read.table(fpath, header = FALSE, sep = ";", nrows = 1, stringsAsFactors = FALSE)
names(data) <- data_header


Sys.setlocale("LC_TIME", "English") #so dates appear in english
#plot the data to the png file
png(file="plots/plot4.png",width=480,height=480)
#plot with 2 rows and 2 collumns
par(mfrow=c(2,2))

#1 plot
plot(as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"),data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
#2 plot
plot(as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"),data$Voltage, type = "l", xlab = "", ylab = "Voltage")
#3 plot
plot(as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"),data$Sub_metering_1, type ="l", xlab = "", ylab = "Energy sub metering")
lines(as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"),data$Sub_metering_2, col="red")
lines(as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"),data$Sub_metering_3, col="blue")
legend("topright", names(data[7:9]),lty=c(1,1,1),col=c("black","red","blue"))

#4 plot
plot(as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"),data$Global_reactive_power, type = "l", xlab = "", ylab = "Global Reactive Power")

dev.off()


#remove temp
#unlink(tempfile)
#unlink(temp, recursive = TRUE)