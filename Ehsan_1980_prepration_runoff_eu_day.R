library(data.table)
library(plyr)

runoff_eu_day <- readRDS('data/runoff_eu_day.rds')
## runoff_eu_info <- readRDS('data/runoff_eu_info.rds')
## runoff_eu_year <- readRDS('data/runoff_eu_year.rds')



##  runoff_eu_day

runoff_eu_day1 <- runoff_eu_day[1:2000000,]
runoff_eu_day2 <- runoff_eu_day[2000001:4000000,]
runoff_eu_day3 <- runoff_eu_day[4000001:6000000,]
runoff_eu_day4 <- runoff_eu_day[6000001:8000000,]




## runoff_eu_day1[order(as.Date(runoff_eu_day1$date, format="%Y")),]
## runoff_eu_day2[order(as.Date(runoff_eu_day2$date, format="%Y")),]
## runoff_eu_day3[order(as.Date(runoff_eu_day3$date, format="%Y")),]
## runoff_eu_day4[order(as.Date(runoff_eu_day4$date, format="%Y")),]


runoff_eu_day1$year <- format(as.Date(runoff_eu_day1$date), "%Y")
runoff_eu_day2$year <- format(as.Date(runoff_eu_day2$date), "%Y")
runoff_eu_day3$year <- format(as.Date(runoff_eu_day3$date), "%Y")
runoff_eu_day4$year <- format(as.Date(runoff_eu_day4$date), "%Y")

runoff_eu_day1 <- runoff_eu_day1 [year >= 1980]
runoff_eu_day2 <- runoff_eu_day2 [year >= 1980]
runoff_eu_day3 <- runoff_eu_day3 [year >= 1980]
runoff_eu_day4 <- runoff_eu_day4 [year >= 1980]

##  runoff_eu_day1
##  runoff_eu_day2
##  runoff_eu_day3
##  runoff_eu_day4

runoff_eu_day_from_1980 <- rbind(runoff_eu_day1,runoff_eu_day2,runoff_eu_day3,runoff_eu_day4)

runoff_eu_day_from_1980[order(as.Date(runoff_eu_day_from_1980$date, format="%Y")),]

saveRDS(runoff_eu_day_from_1980, 'data/runoff_eu_days_from_1980.rds')
