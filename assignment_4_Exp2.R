library(data.table)
library(ggplot2)


precip_day <- readRDS('data/precip_day.rds')
runoff_summer_key <- readRDS ('data/runoff_summer_key.rds')


colset_4 <-  c("blue", "black", "green", "yellow")



theme_set(theme_bw())


ggplot(precip_day[date > 1920-01-01] , aes(x = date, y = value)) +
  geom_line(col = "blue")+
  geom_point(col = "blue")+
  geom_smooth(method = 'lm', formula = y~x, se = 0, col = "yellow") +
  geom_smooth(method = 'loess', formula = y~x, se = 0, col = "black") +
  scale_color_manual(values = colset_4[c(1, 2, 4)]) +
  xlab(label = "Last Century") +
  ylab(label = "Precipitation (m3/s)") +
  theme_bw()
