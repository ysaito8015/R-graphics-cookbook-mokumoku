rm(list = ls())
gc()

source(here::here("scripts", "environments.R"))
.libPaths(libDir)
pacman::p_load(tidyverse)

jpeg(
    file = file.path(figDir, "ch02", "fig02-02-left.jpeg")
)
plot(pressure$temperature, pressure$pressure, type = "l")
dev.off()

jpeg(
    file = file.path(figDir, "ch02", "fig02-02-right.jpeg")
)
plot(pressure$temperature, pressure$pressure, type = "l")
points(pressure$temperature, pressure$pressure)
lines(pressure$temperature, pressure$pressure/2, col = "red")
points(pressure$temperature, pressure$pressure/2, col = "red")
dev.off()

p <-
    pressure %>%
    ggplot() +
    aes(x = temperature, y = pressure) +
    geom_line()
ggsave(
    filename = file.path(figDir, "ch02", "fig02-04-left.jpeg"),
    plot = p
)

p <-
    pressure %>%
    ggplot() +
    aes(x = temperature, y = pressure) +
    geom_line() +
    geom_point()
ggsave(
    filename = file.path(figDir, "ch02", "fig02-04-right.jpeg"),
    plot = p
)
