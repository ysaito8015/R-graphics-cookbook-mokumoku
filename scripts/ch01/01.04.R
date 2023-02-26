rm(list = ls())
gc()
source(here::here("scripts", "environments.R"))
.libPaths(libDir)

data <- read.csv(file.path(dataDir, "datafile.csv"), header = FALSE)
data2<- readr::read_csv(file.path(dataDir, "datafile.csv"))
print(data)
print(data2)
cat("\n\n")

name(data) <- c("Column1", "Column2", "Column3")

data <-
    read.csv(
        file.path(dataDir, "data-with-strings.csv"),
        stringsAsFactors = FALSE
    )
data$Sex <- factor(data$Sex)
str(data)
