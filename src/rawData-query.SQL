SELECT
  date,
  trafficSource.campaign,
  IF(totals.transactions IS NULL, 0, 1) AS transactions,
  totals.pageviews AS pageviews,
  device.isMobile AS ismobile,
  geoNetwork.country as country
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
WHERE _TABLE_SUFFIX BETWEEN '20160801' AND '20170631'
LIMIT 5000
