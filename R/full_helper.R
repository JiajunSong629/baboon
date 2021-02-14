get_full <- function(data, below_one = FALSE) {
  varnames = names(data)[startsWith(names(data), "adv_")]
  if (below_one) {
    varnames = varnames[varnames != "adv_sib"]
  }
  
  full_formula = paste("Surv(age, dead) ~", paste0(varnames, collapse = "+ "))
  full_model = coxph(
    as.formula(full_formula),
    data = data
  )
  return (full_model)
}
