rm(list = ls())
gc()
source(here::here("scripts", "environments.R"))
.libPaths(libDir)

pacman::p_load(
    tidyverse,
    gcookbook
)
