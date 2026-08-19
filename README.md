# Chinook SQL Analysis Portfolio

This project demonstrates SQL analytics skills using the Chinook sample database (MySQL). It contains four analytical queries covering revenue analysis, genre performance, monthly trends, and customer segmentation.

## Queries

### 01_revenue_by_country.sql
**Purpose:** Calculate total revenue grouped by customer country to identify top markets.
**Key Finding:** USA leads with $523.06 in revenue, followed by Canada ($303.96) and France ($195.10). Top 3 countries account for ~55% of total revenue.

### 02_top_genres.sql
**Purpose:** Analyze revenue by music genre to understand customer preferences.
**Key Finding:** Rock dominates with $826.65 (42% of total), followed by Latin ($382.14) and Metal ($261.36). Rock generates more revenue than the next 5 genres combined.

### 03_monthly_revenue_trend.sql
**Purpose:** Track monthly revenue trends over time to identify seasonal patterns and growth.
**Key Finding:** Revenue shows seasonal spikes in January, April, and November across years. Steady baseline of ~$37.62/month with peaks reaching $52.62. Notable growth from 2021 to 2024.

### 04_customer_segmentation.sql
**Purpose:** Segment customers by value (total spent) and recency (days since last purchase) for targeted marketing.
**Key Finding:** 14 customers (23%) are "High Value - Active" (spent ≥$40, purchased within 90 days). 28 customers (47%) are "High Value - At Risk" (spent ≥$40, inactive >90 days). Only 16 customers (27%) are actively engaged with lower spend.

## Database
Chinook sample database for MySQL 8.0

## Usage
Run queries against local MySQL:
```bash
mysql -u root -p chinook < sql/01_revenue_by_country.sql
```