# Google Merchandise Store Sales Analysis | Business Insights Dashboard

## Project Overview

This project presents an end-to-end ecommerce analytics solution using Google Analytics Sample Dataset data from the Google Merchandise Store.
The objective was to analyse ecommerce performance, understand customer acquisition channels, identify revenue drivers, and evaluate the customer conversion funnel.
The project demonstrates the complete analytics workflow:

Raw Data → SQL Analysis → BigQuery Views → Looker Studio Dashboard → Business Recommendations

---

# Business Questions

This analysis focuses on answering key ecommerce questions:

- How is revenue performing over time?
- Which traffic channels generate the most valuable customers?
- Which products contribute the highest revenue?
- Which cities generate the most revenue?
- Where do customers drop off during the purchasing journey?

---

# Dataset

## Google Analytics Sample Dataset

Source:

`bigquery-public-data.google_analytics_sample.ga_sessions_*`

The dataset contains ecommerce interaction data from the Google Merchandise Store, including:

- Website sessions
- Traffic sources
- Ecommerce actions
- Product information
- Revenue data
- Geographic information

---

# Tools & Technologies

## Data Analysis

- SQL
- Google BigQuery

## Data Modelling

- BigQuery Views

## Data Visualisation

- Looker Studio (formerly Google Data Studio)

---

# Repository Structure

```text
Google-Sales-Analysis-Ecommerce-Dashboard

│
├── SQL
│   └── SQL analysis queries
│
├── BigQuery_Views
│   └── Analytical views
│
├── Looker_Studio_Dashboard
│   ├── Ecommerce Dashboard PDF
│   └── Dashboard images
│
├── Report
│   └── Business Analysis Report
│
└── README.md
```

# SQL Analysis

SQL queries were developed in BigQuery to explore and transform raw Google Analytics data.

The analysis included:

- Session Analysis
- Traffic Channel Analysis
- Product Analysis
- Geographic Revenue Analysis
- Ecommerce Funnel Analysis

---

# BigQuery Views

Four reusable BigQuery views were created for reporting:

| View | Purpose |
|---|---|
| ecommerce_sales_view | Product and revenue analysis |
| traffic_performance_view | Traffic and conversion analysis |
| funnel_analysis_view | Event-level funnel metrics |
| funnel_chart_view | Funnel visualisation dataset |

---

# Dashboard

The transformed BigQuery views were connected to Looker Studio to create two interactive dashboard pages for deep-dive reporting:

The complete interactive dashboard is available here:

🔗 **Looker Studio Dashboard:**  
[View Ecommerce Performance Dashboard](https://datastudio.google.com/reporting/44df5c74-f346-45cf-ac2b-8a13577fae0e)


## Page 1: Google Analytics Ecommerce Performance Dashboard

Includes:

- Revenue trend analysis
- Revenue KPI
- Purchase KPI
- Sessions by traffic channel
- Conversion rate by traffic channel
- Top products by revenue
- Revenue by city

## Page 2: Ecommerce Conversion Funnel Analysis

Includes:

- Product Views
- Add-to-Cart Actions
- Purchases
- Purchase Conversion Rate
- Daily funnel performance
- Ecommerce event trends
- Conversion rate trends

---

# Key Metrics

| Metric | Value |
|---|---:|
| Total Revenue | $964,592.82 |
| Total Transactions | 21,660 |
| Product Views | 362,607 |
| Add-to-Cart Actions | 121,427 |
| Funnel Purchases | 24,532 |
| Purchase Conversion Rate | 6.77% |

---

# Key Business Insights

- Direct traffic generated the highest session volume and strong conversion performance.
- Organic traffic contributed significant visitors but showed opportunities for conversion improvement.
- Revenue contribution was concentrated among a smaller number of high-performing products.
- Geographic analysis identified cities contributing the highest revenue.
- The conversion funnel showed significant drop-off between product views, cart additions, and completed purchases.

---

# Business Recommendations

## Optimise high-performing acquisition channels:
Invest further in channels that combine high traffic volume with strong conversion rates.
## Improve organic conversion: 
Analyse landing pages and product pages receiving organic traffic to identify opportunities to improve purchase completion.
## Focus on high-revenue products:
Promote high-revenue products through targeted campaigns and merchandising strategies.
## Reduce funnel drop-off:
Investigate reasons for customer drop-off after adding products to carts. Focus engineering and UX improvements on:

•	Checkout complexity and page latency.

•	Hidden shipping costs or rigid delivery timelines.

•	Alternative modern payment gateways.
## Monitor performance trends: 
Continue tracking revenue and conversion trends to identify seasonal patterns and changes in customer behaviour.

---

# Conclusion

This project demonstrates an end-to-end ecommerce analytics workflow using SQL, Google BigQuery, and Looker Studio.
The analysis transforms raw Google Analytics data into actionable business insights covering revenue performance, customer acquisition, product performance, and conversion behaviour.
