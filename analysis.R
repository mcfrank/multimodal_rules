# NOTE: this is not the original analysis from the paper, it's a replication
# analysis done in summer 2017 for purposes of meta-analysis.

library(tidyverse)
d <- read_csv("VMM_total.csv")


d %>%
  group_by(EXP) %>%
  summarise(NF_CORR = cor(NAVG,FAVG),
            NAVG_SD = sd(NAVG, na.rm=TRUE),
            NAVG = mean(NAVG),
            FAVG_SD = sd(FAVG, na.rm=TRUE),
            FAVG = mean(FAVG),)
