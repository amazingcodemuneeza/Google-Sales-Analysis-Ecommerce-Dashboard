-- ============================================
-- SESSIONS BY TRAFFIC SOURCE
-- ============================================

SELECT

  trafficSource.medium AS traffic_channel,

  COUNT(*) AS sessions

FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_*`

GROUP BY
  traffic_channel

ORDER BY
  sessions DESC;



-- ============================================
-- CONVERSION RATE BY TRAFFIC CHANNEL
-- ============================================

SELECT

  trafficSource.medium AS traffic_channel,

  COUNT(*) AS sessions,

  SUM(totals.transactions) AS transactions,


  ROUND(
    SAFE_DIVIDE(
      SUM(totals.transactions),
      COUNT(*)
    ) * 100,
    2
  ) AS conversion_rate_percentage


FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_*`


GROUP BY
  traffic_channel


ORDER BY
  conversion_rate_percentage DESC;