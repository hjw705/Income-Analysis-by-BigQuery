#standardSQL
#Printing out predicted result and result explanation column  (top k- features)

SELECT
*
FROM
ML.EXPLAIN_PREDICT(MODEL `census.census_model`,
  (
  SELECT
    *
  FROM
    `census.input_view`
  WHERE
    dataframe = 'evaluation'),
  STRUCT(3 as top_k_features))