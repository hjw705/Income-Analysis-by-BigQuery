# Return 100 rows for checking data
SELECT
  age,
  workclass,
  marital_status,
  education_num,
  occupation,
  hours_per_week,
  income_bracket
FROM
  `bigquery-public-data.ml_datasets.census_adult_income`
LIMIT
  100;