# baboon

## Report Log

1. 0102 lasso and cox regression
  - Report: [View](reports/lasso-and-cox-regression.html), [Source](Rmd/lasso-and-cox-regression.Rmd)
  - Data: `Aim3-early-adversity-subjects-F-survival-2020-10-09.xlsx`
  - Method: variable selection with lasso, cox model on the selected variables

2. 0109 lasso and cox regression on a larger dataset
  - Report: [View](reports/lasso-and-cox-regression-larger-dataset.html), [Source](Rmd/lasso-and-cox-regression-larger-dataset.Rmd)
  - Data: `Aim3-early-adversity-subjects-F-survival-2021-01-07.xlsx`
  - Method: For the three age groups: run a full model; run lasso to select variables; cox model on the selected variables
  
3. 0116 three age groups comparison
  - Report: [View](reports/comparison-of-three-age-subgroups.html), [Source](Rmd/comparison-of-three-age-subgroups.Rmd)
  - Data: `Aim3-early-adversity-subjects-F-survival-2021-01-07.xlsx`
  - Method: For the three age groups: run a cox model with all covariates; run a cox model with lasso selected covariates; run a cox model with bic selected covariates; run a cox model with adv_mom and other composite adversities
  
4. 0207 three age groups comparison with SCI
  - Report: [View](reports/comparison-of-three-age-subgroups_with_sci.html), [Source](Rmd/comparison-of-three-age-subgroups.Rmd)
  - Data: `Aim3-early-adversity-subjects-F-survival-2021-01-29.xlsx`
  - Method: Replace the `adv_dsi` with `adv_sci`; Use a finer categorized `adv_other_cumulative`.

