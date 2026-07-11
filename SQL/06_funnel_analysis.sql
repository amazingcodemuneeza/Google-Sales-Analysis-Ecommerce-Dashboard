-- ============================================
-- ECOMMERCE FUNNEL ANALYSIS
-- ============================================

SELECT


CASE

WHEN hits.eCommerceAction.action_type = '2'
THEN 'Product View'


WHEN hits.eCommerceAction.action_type = '3'
THEN 'Add to Cart'


WHEN hits.eCommerceAction.action_type = '6'
THEN 'Purchase'


END AS funnel_stage,


COUNT(*) AS total_actions


FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_*`,

  UNNEST(hits) AS hits


WHERE

hits.eCommerceAction.action_type IN ('2','3','6')


GROUP BY

funnel_stage


ORDER BY

total_actions DESC;



-- ============================================
-- PRODUCT LEVEL FUNNEL
-- ============================================

SELECT

product.v2ProductName AS product_name,


COUNTIF(
hits.eCommerceAction.action_type = '2'
) AS product_views,


COUNTIF(
hits.eCommerceAction.action_type = '3'
) AS add_to_cart,


COUNTIF(
hits.eCommerceAction.action_type = '6'
) AS purchases


FROM
`bigquery-public-data.google_analytics_sample.ga_sessions_*`,


UNNEST(hits) AS hits,


UNNEST(hits.product) AS product


GROUP BY

product_name


ORDER BY

purchases DESC


LIMIT 10;