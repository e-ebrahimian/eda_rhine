list.files('data/raw')

library(data.table)

runoff_stations <- fread('./data/raw/runoff_stations.csv')

head(runoff_stations)

str(runoff_stations)

runoff_stations$station

runoff_stations[, sname := factor(abbreviate(station))]
runoff_stations[, id := factor(id)]
runoff_stations[, lat := round(lat, 3)]
runoff_stations[, lon := round(lon, 3)]
runoff_stations[, altitude := round(altitude, 0)]

saveRDS(runoff_stations, './data/runoff_stations.rds')

