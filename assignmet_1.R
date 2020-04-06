rc = 185000  ###Rhine Catchment Area in Km2 based on web search ####
rc
rl = 1233000  ### Rhine Length (m) ###
rwa = 185000 *1000000 /1233000  ####Rhine average width ####
rwa

perc =  0.05 * 24  #### percipitation in 24 hours (m3) ###
perc
rf = (0.05 / 3600) * rwa   #### increase in runoff (m3/sec) ####
rf
