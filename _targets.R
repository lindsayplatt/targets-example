
library(targets)
source("R/myfunctions.R")

tar_option_set(packages = c("biglm", "tidyverse"))

list(
  tar_target(file, "data.csv", format = "file"),
  tar_target(data, read_and_clean(file)),
  tar_target(model, fit_model(data)),
  tar_target(plot, create_plot(model, data))
)
