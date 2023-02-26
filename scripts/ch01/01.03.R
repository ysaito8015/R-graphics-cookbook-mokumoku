rm(list = ls())
gc()
source(here::here("scripts", "environments.R"))
.libPaths(libDir)

update.packages(
    lib.loc = libDir,
    contriburl = c(
        contrib.url("https://cran.ism.ac.jp/", "source"),
        contrib.url("https://cloud.r-project.org/", "source"),
        contrib.url("https://cran.rstudio.com/", "source")
    ),
    instlib = libDir,
    ask = FALSE,
    destdir = pkgDir,
    type = "source",
    dependencies = c("Depends", "Imports", "LinkingTo")
)
