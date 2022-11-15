
read_and_clean <- function(path) {
  path %>% 
    read_csv(col_types = cols()) %>%
    filter(!is.na(Ozone))
}

fit_model <- function(data) {
  biglm(Ozone ~ Wind + Temp, data)
}

create_plot <- function(model, data) {
  ggplot(data) +
    geom_histogram(aes(x = Ozone)) +
    theme_gray(24)
}
