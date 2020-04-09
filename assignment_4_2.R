library(data.table)
library(ggplot2)

runoff_stats <- readRDS('data/runoff_stats.rds')
runoff_days <- readRDS('data/runoff_day.rds')

runoff_stats_class <- runoff_stats[, .(sname, 
                                       mean_day)]

runoff_stats_class[, runoff_class := factor('low')]
runoff_stats_class[mean_day >= 1000 & mean_day < 2000, runoff_class := factor('medium')]
runoff_stats_class[mean_day >= 2000, runoff_class := factor('high')]

runoff_stats_class_q <- runoff_stats[, .(sname, mean_day, (min_day + (max_day - min_day)/10),(min_day + (max_day - min_day)*9/10))]

runoff_stats_class_q[, class := factor('low')]
runoff_stats_class_q[mean_day >= V3 & mean_day < V4, class := factor('medium')]
runoff_stats_class_q[mean_day > V4, class := factor('high')]

runoff_stats_class_q[, .N]



