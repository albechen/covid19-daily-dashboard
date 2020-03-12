library(rmarkdown)
Sys.setenv(RSTUDIO_PANDOC="C:\Users\alche\Program Files\RStudio\bin\pandoc")
setwd("C:\Users\alche\Documents\Projects\covid19-daily-dashboard")
rmarkdown::render("covid19-daily-dashboard.Rmd", include=TRUE)

