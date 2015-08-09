#this script used to plot the plot1 graph#assuming that you downloaded the zip file and upzipped it into the working directory of
#your R studio
#read in data
dataset <- read.delim("household_power_consumption.txt", header = TRUE, sep = ";")

#create subset of only 2/1 and 2/2 rows
dataset_sub <- subset(dataset, dataset$Date == '2/1/2007' | dataset$Date == '2/2/2007')

#draw histogram
plot1out <- hist(as.numeric(dataset_sub$Global_active_power))

#create png
png(filename="plot1.png")
plot(plot1out)
dev.off()
