rm(list = ls())
gc()
source(here::here("scripts", "environments.R"))
.libPaths(libDir)

pacman::p_load(dplyr)

print(head(morley))
cat("\n\n")

morley %>%
    dplyr::filter(Expt == 1) %>%
    summary()
