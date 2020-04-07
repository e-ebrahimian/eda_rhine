library(data.table)
library(ggplot2)

runoff_stations <- readRDS('./data/runoff_stations_assignment_raw.rds')


ggplot(runoff_stations, aes(x= area, y= altitude, label='sname'))+
  geom_point() +geom_text(aes(label=sname),colour="blue", hjust=0, vjust=0)

runoff_stations1 <- readRDS('./data/runoff_stations_raw.rds')
ggplot(runoff_stations1, aes(x= lon, y= lat, label='sname'))+
  geom_point() +geom_text(aes(label=sname),colour="green", hjust=0, vjust=0)
