library(data.table)

runoff_stations <- fread('./data/raw/runoff_stations.csv')

head(runoff_stations)

runoff_stations[, sname := factor(abbreviate(station))]
runoff_stations$id <- NULL
runoff_stations$lat <- NULL
runoff_stations$lon <-  NULL
runoff_stations$country <-  NULL
runoff_stations$station <-  NULL
runoff_stations[, altitude := round(altitude, 0)]

head(runoff_stations)

saveRDS(runoff_stations, './data/runoff_stations_assignment_raw.rds')
