#assuming that you downloaded the zip file and upzipped it into the working directory of
#your R studio
#read in data
dataset <- read.delim("household_power_consumption.txt", header = TRUE, sep = ";")

#create subset of only 2/1 and 2/2 rows
dataset_sub <- subset(dataset, dataset$Date == '2/1/2007' | dataset$Date == '2/2/2007')

#setup png filename
png(filename="plot1.png", width=480, height=480, units="px", pointsize=12)

#draw histogram
plot1out <- hist(as.numeric(dataset_sub$Global_active_power), col="RED")

#close connection to file
dev.off()
