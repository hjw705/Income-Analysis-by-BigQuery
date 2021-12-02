# Predict the income class of all respondents in the prediction data frame
SELECT
  *
FROM
  ML.PREDICT (MODEL `census.census_model`,
    (
    SELECT
      *
    FROM
      `census.input_view`
    WHERE
      dataframe = 'prediction'
     )
  )
