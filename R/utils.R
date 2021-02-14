plot_forest <- function(obj) {
  coef = obj$coef
  se = summary(obj)$coef[, 3]
  varnames = names(obj$coef)
  
  p = ggplot(data = NULL, aes(x = coef, y = fct_rev(varnames))) +
    geom_vline(xintercept = 0, color = "red", linetype = "dotted") +
    geom_pointrange(aes(xmin = coef-1.96*se, xmax = coef+1.96*se)) + 
    labs(x = "Coefficient estimate", y = NULL) +
    theme_minimal()
  return (p)
}

plot_terms <- function(obj) {
  sign_vars <- which(summary(obj)$coef[, "Pr(>|z|)"] < 0.05)
  
  par(mfrow=c(1, length(sign_vars)), oma=c(0,0,2,0))
  termplot(
    obj,
    se=T,
    terms=sign_vars,
    ylabs="Log-hazard"
  )
}