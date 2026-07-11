-- ============================================
-- CHECK PRODUCTS USING UNNEST
-- ============================================

SELECT

  product.v2ProductName AS product_name


FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_*`,

  UNNEST(hits) AS hits,

  UNNEST(hits.product) AS product


LIMIT 20;



-- ============================================
-- TOP PRODUCTS BY PURCHASE COUNT
-- ============================================

SELECT

  product.v2ProductName AS product_name,

  COUNT(*) AS purchase_count


FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_*`,

  UNNEST(hits) AS hits,

  UNNEST(hits.product) AS product


WHERE
  product.productRevenue IS NOT NULL


GROUP BY
  product_name


ORDER BY
  purchase_count DESC


LIMIT 10;