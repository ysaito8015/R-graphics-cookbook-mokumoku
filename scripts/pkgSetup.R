scriptDir <- getwd()
projectDir <- dirname(scriptDir)
libDir <- file.path(scriptDir, "lib")
if (!dir.exists(libDir)) {
    dir.create(libDir)
}
pkgDir <- file.path(scriptDir, "pkg")
if (!dir.exists(pkgDir)) {
    dir.create(pkgDir)
}

.libPaths(libDir)

pkgs <- c(
    "vctrs",
    "tidyselect",
    "tidyverse",
    "gcookbook"
)

Sys.setenv("PKG_CXXFLAGS"="-std=gnu++20 -DBOOST_PHOENIX_NO_VARIADIC_EXPRESSION")


if (!(!requireNamespace("devtools", quietly = TRUE))) {
  install.packages(
    c("devtools", "remotes"),
    lib = libDir,
    contriburl = c(
        contrib.url("http://r-forge.r-project.org", "source"),
        contrib.url("https://cran.rstudio.com/", "source")
    ),
    destdir = pkgDir,
    type = "source",
    dependencies = c("Depends", "Imports", "LinkingTo"),
    INSTALL_opts = "--no-multiarch"
  )
}

install.packages(
  pkgs,
  lib = libDir,
  contriburl = c(
      contrib.url("http://r-forge.r-project.org", "source"),
      contrib.url("https://cran.rstudio.com/", "source")
  ),
  destdir = pkgDir,
  type = "source",
  dependencies = c("Depends", "Imports", "LinkingTo"),
  INSTALL_opts = "--no-multiarch"
)
