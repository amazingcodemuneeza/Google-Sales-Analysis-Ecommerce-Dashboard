-- ============================================
-- CREATE TRAFFIC PERFORMANCE VIEW
-- Purpose:
-- Dashboard-ready traffic performance data
-- ============================================

CREATE OR REPLACE VIEW
`stellar-access-495213-h2.GoogleAnalytics_Dashboard.traffic_performance_view`
AS

SELECT

  date,

CASE
  WHEN trafficSource.medium = '(none)' THEN 'Direct'
  WHEN trafficSource.medium = '(not set)' THEN 'Unknown'
  ELSE trafficSource.medium
END AS traffic_channel,

  COUNT(*) AS sessions,

  SUM(IFNULL(totals.transactions,0)) AS transactions,
  ROUND(
    SAFE_DIVIDE(
      SUM(IFNULL(totals.transactions, 0)),
      COUNT(*)
    ) * 100,
    2
  ) AS conversion_rate

FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_*`

GROUP BY
  date,
  traffic_channel;