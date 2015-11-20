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


#plot the data to the png file
png(file="plots/plot1.png",width=480,height=480)
hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()


#remove temp
#unlink(tempfile)
#unlink(temp, recursive = TRUE)