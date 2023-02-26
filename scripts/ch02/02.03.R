rm(list = ls())
gc()

source(here::here("scripts", "environments.R"))
.libPaths(libDir)
pacman::p_load(tidyverse)

print(BOD)

jpeg(
    file = file.path(figDir, "ch02", "fig02-05-left.jpeg")
)
barplot(BOD$demand, names.arg = BOD$Time)
dev.off()

table(mtcars$cyl)
jpeg(
    file = file.path(figDir, "ch02", "fig02-05-right.jpeg")
)
barplot(table(mtcars$cyl))
dev.off()

p <-
    BOD %>%
    ggplot() +
    aes(x = Time, y = demand) +
    geom_col()
ggsave(
    filename = file.path(figDir, "ch02", "fig02-06-left.jpeg"),
    plot = p
)

p <-
    BOD %>%
    ggplot() +
    aes(x = factor(Time), y = demand) +
    geom_col()
ggsave(
    filename = file.path(figDir, "ch02", "fig02-06-right.jpeg"),
    plot = p
)

p <-
    mtcars %>%
    ggplot() +
    aes(x = cyl) +
    geom_bar()
ggsave(
    filename = file.path(figDir, "ch02", "fig02-07-left.jpeg"),
    plot = p
)

p <-
    mtcars %>%
    ggplot() +
    aes(x = factor(cyl)) +
    geom_bar()
ggsave(
    filename = file.path(figDir, "ch02", "fig02-07-right.jpeg"),
    plot = p
)
