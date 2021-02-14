preprocess <- function(raw_data) {
  data <- raw_data %>%
    mutate(sex = factor(sex),
           matgrp = factor(matgrp),
           status = factor(status))
  return (data)
}

# get_penalized_covariates <- function(data, interaction_terms) {
#   data_sub <- data %>% select(starts_with("adv_")) %>% select(- "adv_cumulative")
#   
#   formula <- paste("~ . + ", paste0(paste0(interaction_terms, ": ."), collapse = " + "))
#   penalized_covariates <- model.matrix(as.formula(formula) , data = data.frame(data_sub))
#   
#   # remove intercept ready for penalized covariates
#   penalized_covariates <- penalized_covariates[, colnames(penalized_covariates) != "(Intercept)"]
#   return (penalized_covariates)
# }