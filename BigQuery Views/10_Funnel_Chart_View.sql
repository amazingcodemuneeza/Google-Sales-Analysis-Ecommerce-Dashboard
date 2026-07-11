CREATE OR REPLACE VIEW
`stellar-access-495213-h2.GoogleAnalytics_Dashboard.funnel_chart_view`
AS

SELECT
  'Product Views' AS funnel_stage,
  SUM(product_views) AS total_events
FROM
`stellar-access-495213-h2.GoogleAnalytics_Dashboard.funnel_analysis_view`

UNION ALL

SELECT
  'Add to Cart',
  SUM(add_to_cart)
FROM
`stellar-access-495213-h2.GoogleAnalytics_Dashboard.funnel_analysis_view`

UNION ALL

SELECT
  'Purchases',
  SUM(purchases)
FROM
`stellar-access-495213-h2.GoogleAnalytics_Dashboard.funnel_analysis_view`;