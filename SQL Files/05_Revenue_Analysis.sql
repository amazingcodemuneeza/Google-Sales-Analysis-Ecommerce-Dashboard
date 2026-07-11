-- ============================================
-- TOP PRODUCTS BY REVENUE
-- ============================================

SELECT

  product.v2ProductName AS product_name,


  ROUND(
    SUM(product.productRevenue) / 1000000,
    2
  ) AS total_revenue


FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_*`,

  UNNEST(hits) AS hits,

  UNNEST(hits.product) AS product


WHERE
  product.productRevenue IS NOT NULL


GROUP BY
  product_name


ORDER BY
  total_revenue DESC


LIMIT 10;



-- ============================================
-- TOP CITIES BY REVENUE
-- ============================================

SELECT

  geoNetwork.city AS city,


  ROUND(
    SUM(product.productRevenue) / 1000000,
    2
  ) AS total_revenue


FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_*`,

  UNNEST(hits) AS hits,

  UNNEST(hits.product) AS product


WHERE
  product.productRevenue IS NOT NULL


GROUP BY
  city


ORDER BY
  total_revenue DESC


LIMIT 10;



-- ============================================
-- TOP CITIES BY REVENUE CLEANED
-- Removes unknown city values
-- ============================================

SELECT

  geoNetwork.city AS city,


  ROUND(
    SUM(product.productRevenue) / 1000000,
    2
  ) AS total_revenue


FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_*`,

  UNNEST(hits) AS hits,

  UNNEST(hits.product) AS product


WHERE

  product.productRevenue IS NOT NULL

  AND geoNetwork.city != "not available in demo dataset"


GROUP BY

  city


ORDER BY

  total_revenue DESC


LIMIT 10;