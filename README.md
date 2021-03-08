# baboon

## Report Log

1. 0102 lasso and cox regression
  - Report: [View](jiajunsong629.github.io/baboon/reports/lasso-and-cox-regression.html), [Source](jiajunsong629.github.io/baboon/Rmd/lasso-and-cox-regression.Rmd)
  - Data: `Aim3-early-adversity-subjects-F-survival-2020-10-09.xlsx`
  - Method: variable selection with lasso, cox model on the selected variables

2. 0109 lasso and cox regression on a larger dataset
  - Report: [View](jiajunsong629.github.io/baboon/jiajunsong629.github.io/baboon/reports/lasso-and-cox-regression-larger-dataset.html), [Source](jiajunsong629.github.io/baboon/Rmd/lasso-and-cox-regression-larger-dataset.Rmd)
  - Data: `Aim3-early-adversity-subjects-F-survival-2021-01-07.xlsx`
  - Method: For the three age groups: run a full model; run lasso to select variables; cox model on the selected variables
  
3. 0116 three age groups comparison
  - Report: [View](jiajunsong629.github.io/baboon/reports/comparison-of-three-age-subgroups.html), [Source](jiajunsong629.github.io/baboon/jiajunsong629.github.io/baboon/Rmd/comparison-of-three-age-subgroups.Rmd)
  - Data: `Aim3-early-adversity-subjects-F-survival-2021-01-07.xlsx`
  - Method: For the three age groups: run a cox model with all covariates; run a cox model with lasso selected covariates; run a cox model with bic selected covariates; run a cox model with adv_mom and other composite adversities
  
4. 0207 three age groups comparison with SCI
  - Report: [View](jiajunsong629.github.io/baboon/reports/comparison-of-three-age-subgroups_with_sci.html), [Source](jiajunsong629.github.io/baboon/Rmd/comparison-of-three-age-subgroups.Rmd)
  - Data: `Aim3-early-adversity-subjects-F-survival-2021-01-29.xlsx`
  - Method: Replace the `adv_dsi` with `adv_sci`; Use a finer categorized `adv_other_cumulative`.

5. 0228 continuous effects of early adversities
  - Report: [View](jiajunsong629.github.io/baboon/reports/continuous_effects.html), [Source](jiajunsong629.github.io/baboon/Rmd/continuous_effects.Rmd)
  - Data: `Aim3-early-adversity-subjects-F-survival-2021-02-17.csv`
  - Method: first analyze adversity by adversity, with linear terms and later add quadratic terms. No model selection or interaction for now

6. 0308 continuous effects with interaction terms considered
  - Report: [View](jiajunsong629.github.io/baboon/reports/continuous_effects_with_interactions.html), [Source](jiajunsong629.github.io/baboon/Rmd/continuous_effects_with_interactions.Rmd)
  - Data: `Aim3-early-adversity-subjects-F-survival-2021-01-29.xlsx`
  - Method: based on the 0228, include interaction of terms that are significant when modeled individually. run lasso to further select the variables.
