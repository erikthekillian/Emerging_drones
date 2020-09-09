install.packages("plotrix")
library(plotrix)

data = read.table("data.txt", header = TRUE)

#Days to Flowering
days2flowering = data[,3]
mean(days2flowering)
sd(days2flowering)

#Dry data
dry_data = data$days2flower[data$irrigation == "dry"]
mean(dry_data)
sd(dry_data)

#Wet Data
wet_data = data$days2flower[data$irrigation == "wet"]
mean(wet_data)
sd(wet_data)

#Histogram for NARC
wet_NARC = data$days2flower[data$locations == "NARC" & data$irrigation == "wet"]
hist(wet_NARC, main = "Irrigated Samples from NARC", xlab = "Days to Flowering")
abline(v = mean(wet_NARC), col = 2)

#Location-Combinations
wet_NARC
dry_NARC = data$days2flower[data$locations == "NARC" & data$irrigation == "dry"]

wet_WARC = data$days2flower[data$locations == "WARC" & data$irrigation == "wet"]
dry_WARC = data$days2flower[data$locations == "WARC" & data$irrigation == "dry"]
  
wet_SARC = data$days2flower[data$locations == "SARC" & data$irrigation == "wet"]
dry_SARC = data$days2flower[data$locations == "SARC" & data$irrigation == "dry"]

std.error(wet_NARC)
std.error(dry_NARC)
std.error(wet_SARC)
std.error(dry_SARC)
std.error(wet_WARC)
std.error(dry_WARC)

#samples
wN = sample(wet_NARC, size = 5)
std.error(wN)

dN = sample(dry_NARC, size = 5)
std.error(dN)
View(dN)

wS = sample(wet_SARC, size = 5)
std.error(wS)

dS = sample(dry_SARC, size = 5)
std.error(dS)

wW = sample(wet_WARC, size = 5)
std.error(wW)

dW = sample(dry_WARC, size = 5)
std.error(dW)








