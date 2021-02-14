run_cox <- function(data, nonzero_varnames, penalized_covariates) {
  formula = paste("Surv(data$age, data$dead) ~", paste0(nonzero_varnames, collapse = "+ "))
  cox <- coxph(
    as.formula(formula),
    data = data.frame(penalized_covariates)
  )
  
  return (cox)
}