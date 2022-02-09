CREATE MODEL `bqml_tutorial.sample_model`
OPTIONS(model_type = 'logistic_reg') AS
SELECT
  IF(totals.transactions IS NULL, 0, 1) AS label,
  totals.pageviews AS pageviews,
  device.isMobile AS ismobile,
  country as country
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
  
