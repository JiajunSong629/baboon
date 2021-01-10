get_opt_lambda_of_lasso <- function(data, covariates, seed = 42, fold = 5) {
  set.seed(seed)
  opt <- optL1(
    Surv(data$age, data$dead),
    penalized = covariates,
    standardize = T,
    fold = fold,
    trace = F
  )
  return (opt$lambda)
}