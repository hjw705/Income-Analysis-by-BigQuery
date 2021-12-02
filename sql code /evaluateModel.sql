# After creating the model, performance of the model is evaluated using the ML.EVALUATE function
SELECT
  *
FROM
  ML.EVALUATE (MODEL `census.census_model`,
    (
    SELECT
      *
    FROM
      `census.input_view`
    WHERE
      dataframe = 'evaluation'
    )
  )