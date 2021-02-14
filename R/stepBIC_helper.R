get_stepBIC <- function(data, below_one=FALSE) {
  if (below_one) {
    data = select(data, -adv_sib)
  }
  
  full_bic <- coxph(
    as.formula(Surv(age, dead) ~ . + .:.),
    data = data
  )
  
  step_bic <- step(
    full_bic,
    k = log(nrow(data)),
    trace = F
  )
  
  return (step_bic)
}