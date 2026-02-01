# Coffee-Pricing-Project

## Project Background
This project is based on a fictional online business that sells various coffee products, including blend packs and home brewers. A **significant decrease in profit margin was observed in 2025 due to rising costs and tariffs**, effects that many real businesses have experienced as of recent. The objective of this project is to:
1) Identify products with low gross margin percentage (below 30%)
2) Create a dashboard showing KPIs such as year-over-year GMP and revenue by product, region, etc.
3) Provide data-backed recommendations on which items require pricing reassessment

## Data Structure and Initial Changes
<img width="700" height="600" alt="coffee_ERD" src="https://github.com/user-attachments/assets/09ae9427-3041-4f0b-af7e-23782ac6ca44" />

The dataset contains 5 tables, including product details, information on customers, and orders placed from 2023-2025.

The tables were relatively tidy and required minimal cleaning. Some orders had null values for revenue, but because of the existing `Price` and `Quantity` columns, I was able to create a new column in SQL and recalculate the revenue.

Files including the original data and modifications made can be found [here](https://github.com/drivera27/Coffee-Pricing-Project/tree/b58762adf190c7f360547d256b55b54e9fe3ed19/data).
The SQL queries used to pull from these tables can be found [here](https://github.com/drivera27/Coffee-Pricing-Project/blob/b58762adf190c7f360547d256b55b54e9fe3ed19/coffee_query.sql).


## Executive Summary
### Overview
* Change in revenue, profit
* I identified six products that had significantly low margins (below 30% GMP) in 2025:

  * Pour-Over Starter Kit
  * Branded Ceramic Mug
  * Gooseneck Electric Kettle
  * Logo Hoodie (Black)
  * Chemex Filters (100 pack)
  * Minimalist Keychain
  
Most of these are merchandise products, which only made up for **7% of 2025's total revenue**; the lowest of any product category. Many of these have had historically low profit margins, but rising costs resulted in even more diminishing returns this year. 

### Recommendations
* **Raise prices for several products:**
* **Discontinue *Logo Hoodie (Black)*:** Orders are down 35% from 2023, and have held consistently weak margins - as low as 12% as of 2025. Due to weak sales and rising costs, it may be best to discontinue this product.

### Dashboard Preview
The complete dashboard, created in PowerBI, can be found [here](https://github.com/drivera27/Coffee-Pricing-Project/blob/2cb0d2962782c435a2c07f422881b1c6648a646f/sales_dashboard_updated.pbix).
This dashboard enables users to filter by year and quarter, while focusing on KPI trends like revenue and profit. These metrics are then broken down by product, product category, and region.

<img width="826" height="460" alt="Screenshot 2026-01-31 214127" src="https://github.com/user-attachments/assets/64757e85-28a4-4591-b990-a2e9f9f59145" />

## Caveats and Assumptions
