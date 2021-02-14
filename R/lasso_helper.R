get_penalized_covariates <- function(data, below_one=FALSE) {
  data = select(data, starts_with("adv_"))
  if (below_one) {
    data = select(data, -adv_sib)
  }
  penalized_covariates <- model.matrix(
    as.formula("~ . + .:."),
    data = data.frame(data)
  )
  penalized_covariates <- penalized_covariates[, colnames(penalized_covariates) != "(Intercept)"]
  return (penalized_covariates)
}

get_opt_lambda_of_lasso <- function(data, penalized_covariates, seed = 42, fold = 5) {
  set.seed(seed)
  opt <- optL1(
    Surv(data$age, data$dead),
    penalized = penalized_covariates,
    standardize = T,
    fold = fold,
    trace = F
  )
  return (opt$lambda)
}

get_nonzero_varnames_of_opt_lasso <- function(data, penalized_covariates, opt_lambda) {
  final = penalized(
    Surv(data$age, data$dead),
    penalized = penalized_covariates,
    standardize = T,
    lambda1 = opt_lambda,
    trace = F
  )
  return (names(final@penalized)[final@penalized != 0])
}

get_varnames_in_final_model <- function(nonzero_varnames) {
  # append main effects select by interaction terms
  ans = c()
  for (varname in nonzero_varnames) {
    if (str_detect(varname, ":")) {
      ans = c(ans, str_split(varname, ":")[[1]])
    }
    ans = c(ans, varname)
  }
  return (unique(ans))
}

run_cox <- function(data, varnames, penalized_covariates) {
  formula = paste("Surv(age, dead) ~", paste0(varnames, collapse = "+ "))
  cox <- coxph(
    as.formula(formula),
    data = data.frame(
      cbind(penalized_covariates,
            select(data, c("age", "dead"))
      ))
  )
  return (cox)
}
