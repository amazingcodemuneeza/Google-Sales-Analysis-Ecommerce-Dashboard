-- ============================================
-- CREATE FUNNEL ANALYSIS VIEW
-- ============================================

CREATE OR REPLACE VIEW
`stellar-access-495213-h2.GoogleAnalytics_Dashboard.funnel_analysis_view`
AS

SELECT

  date,

  COUNTIF(hits.eCommerceAction.action_type = '2') AS product_views,

  COUNTIF(hits.eCommerceAction.action_type = '3') AS add_to_cart,

  COUNTIF(hits.eCommerceAction.action_type = '6') AS purchases,

  SAFE_DIVIDE(
    COUNTIF(hits.eCommerceAction.action_type = '3'),
    COUNTIF(hits.eCommerceAction.action_type = '2')
  ) AS view_to_cart_rate,

  SAFE_DIVIDE(
    COUNTIF(hits.eCommerceAction.action_type = '6'),
    COUNTIF(hits.eCommerceAction.action_type = '3')
  ) AS cart_to_purchase_rate,

  SAFE_DIVIDE(
    COUNTIF(hits.eCommerceAction.action_type = '6'),
    COUNTIF(hits.eCommerceAction.action_type = '2')
  ) AS overall_conversion_rate

FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_*`,
  UNNEST(hits) AS hits

GROUP BY
  date

ORDER BY
  date;