# Create a view to compile training data.
# Select data for logistic regression model
# Data is divided by train, prediction, and evaluation  dataframe in a ratio of 8:1:1.

CREATE OR REPLACE VIEW
  `census.input_view` AS
SELECT
  age,
  workclass,
  marital_status,
  education_num,
  occupation,
  hours_per_week,
  income_bracket,
  CASE
    WHEN MOD(functional_weight, 10) < 8 THEN 'training'
    WHEN MOD(functional_weight, 10) = 8 THEN 'evaluation'
    WHEN MOD(functional_weight, 10) = 9 THEN 'prediction'
  END AS dataframe
FROM
  `bigquery-public-data.ml_datasets.census_adult_income`