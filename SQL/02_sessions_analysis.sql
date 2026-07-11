-- ============================================
-- TOTAL SESSIONS
-- ============================================

SELECT
  COUNT(*) AS total_sessions
FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_*`;


-- ============================================
-- SESSIONS BY DATE
-- ============================================

SELECT
  date,
  COUNT(*) AS sessions
FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_*`
GROUP BY
  date
ORDER BY
  date;


