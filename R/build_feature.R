preprocess <- function(raw_data) {
  data <- raw_data %>%
    mutate(sex = factor(sex),
           matgrp = factor(matgrp),
           status = factor(status))
  return (data)
}

get_penalized_covariates <- function(data) {
  data_sub <- data %>% select(starts_with("adv_"))
  
  formula <- "~ . + adv_mom:(.-adv_cumulative) + adv_rain:(.-adv_cumulative)"
  penalized_covariates <- model.matrix(as.formula(formula) , data = data.frame(data_sub))
  
  # remove intercept ready for penalized covariates
  penalized_covariates <- penalized_covariates[, colnames(penalized_covariates) != "(Intercept)"]
  return (penalized_covariates)
}