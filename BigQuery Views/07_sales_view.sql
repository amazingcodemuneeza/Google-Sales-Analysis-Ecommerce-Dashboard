CREATE OR REPLACE VIEW
`stellar-access-495213-h2.GoogleAnalytics_Dashboard.ecommerce_sales_view`
AS

SELECT

  date,

  geoNetwork.city AS city,

  product.v2ProductName AS product_name,

  COUNT(*) AS purchases,

  ROUND(
      SUM(product.productRevenue)/1000000,
      2
  ) AS revenue

FROM
`bigquery-public-data.google_analytics_sample.ga_sessions_*`,
UNNEST(hits) AS hits,
UNNEST(hits.product) AS product

WHERE
  product.productRevenue IS NOT NULL
  AND geoNetwork.city != "not available in demo dataset"

GROUP BY
  date,
  city,
  product_name;