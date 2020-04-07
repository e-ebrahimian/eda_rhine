library(data.table)
library(ggplot2)

runoff_stations <- readRDS('./data/runoff_stations_assignment_raw.rds')



ggplot(data = runoff_stations) +
  geom_point(aes(x = area, y = altitude))

