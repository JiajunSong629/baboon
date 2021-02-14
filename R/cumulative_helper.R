get_cumulative_dataset <- function(data, below_one=FALSE) {
  if (below_one) {
    data = data %>%
      mutate(adv_other_cumulative = adv_rain+adv_mom_sci+adv_mom_rank+adv_density) %>%
      mutate(adv_other_cumulative = case_when(
        adv_other_cumulative == 0 ~ "0",
        adv_other_cumulative == 1 ~ "1",
        adv_other_cumulative == 2 ~ "2",
        TRUE ~ "2+"
      )) %>%
      select(age, dead, adv_mom, adv_other_cumulative)
  } else {
    data = data %>%
      mutate(adv_other_cumulative = adv_sib+adv_rain+adv_mom_sci+adv_mom_rank+adv_density) %>%
      mutate(adv_other_cumulative = case_when(
        adv_other_cumulative == 0 ~ "0",
        adv_other_cumulative == 1 ~ "1",
        adv_other_cumulative == 2 ~ "2",
        TRUE ~ "2+"
      )) %>%
      select(age, dead, adv_mom, adv_other_cumulative)
  }
  
  return (data)
}

get_cumulative <- function(data, below_one=FALSE) {
  data = get_cumulative_dataset(data, below_one)
  cox = coxph(
    formula = as.formula("Surv(age, dead) ~ . + adv_mom:adv_other_cumulative"),
    data = data
  )
  return (cox)
}