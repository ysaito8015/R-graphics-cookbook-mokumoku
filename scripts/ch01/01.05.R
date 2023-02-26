rm(list = ls())
gc()
source(here::here("scripts", "environments.R"))
.libPaths(libDir)

pacman::p_load(haven)
data <-
    readxl::read_excel(
        path = file.path(dataDir, "datafile.xlsx"),
        sheet = 1
    )
print(data)
cat("\n\n")

data <-
    readxl::read_excel(
        path = file.path(dataDir, "datafile.xlsx"),
        sheet = 2
    )
print(data)
cat("\n\n")

data <-
    readxl::read_excel(
        path = file.path(dataDir, "datafile.xlsx"),
        sheet = "Revenues"
    )
print(data)
cat("\n\n")


data <-
    readxl::read_excel(
        path = file.path(dataDir, "datafile.xlsx"),
        sheet = "Revenues",
        col_types = c(
            "blank",
            "text",
            "date",
            "numeric"
        )
    )
print(data)
cat("\n\n")
