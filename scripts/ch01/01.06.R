rm(list = ls())
gc()
source(here::here("scripts", "environments.R"))
.libPaths(libDir)

pacman::p_load(haven)
data <-
    haven::read_sav(
        file = file.path(dataDir, "data.sav")
    )
print(data)
