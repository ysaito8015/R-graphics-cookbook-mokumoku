rm(list = ls())
gc()

source(here::here("scripts", "environments.R"))
.libPaths(libDir)
pacman::p_load(tidyverse)

jpeg(
    file = file.path(figDir, "ch02", "fig02-01.jpeg")
)
plot(mtcars$wt, mtcars$mpg)
dev.off()

p <-
    mtcars %>%
    ggplot() +
    aes(x = wt, y = mpg) +
    geom_point()
ggsave(
    filename = file.path(figDir, "ch02", "fig02-02.jpeg"),
    plot = p
)
