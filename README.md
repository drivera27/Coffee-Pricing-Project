# Coffee-Pricing-Project

## Project Background
This project is based on a fictional online business, The Daily Grind, that sells various coffee products, including blend packs and home brewers. A significant decrease in profit margin was observed in 2025 due to rising costs and tariffs, effects that many real businesses have experienced as of recent. The objective of this project is to:
1) Identify products with low gross margin percentage (below 30%)
2) Create a dashboard showing KPIs such as year-over-year GMP and revenue by product, region, etc.
3) Provide data-backed recommendations on which items require pricing reassessment

## Data Structure and Initial Changes
<img width="700" height="600" alt="coffee_ERD" src="https://github.com/user-attachments/assets/09ae9427-3041-4f0b-af7e-23782ac6ca44" />

The dataset contains 5 tables, including product details, information on customers, and orders placed from 2023-2025.

The tables were relatively tidy and required minimal cleaning. However, some orders had null values for revenue. I was able to clean the data and fill in any missing revenue values by calculating it in SQL using the existing `Price` and `Quantity` columns.

Files including the original data and modifications made can be found [here](https://github.com/drivera27/Coffee-Pricing-Project/tree/b58762adf190c7f360547d256b55b54e9fe3ed19/data).
The SQL queries used to pull from these tables can be found [here](https://github.com/drivera27/Coffee-Pricing-Project/blob/b58762adf190c7f360547d256b55b54e9fe3ed19/coffee_query.sql).


## Executive Summary
### Overview
To evaluate sales performance and assess pricing, I focused on the following metrics:
* Revenue and Year-Over-Year revenue
* Profit and Year-over-Year profit
* Gross Margin Percentage (GMP)

**Revenue (2025)**
* Revenue was down 17.8% from 2024, decreasing from $309.6K to $253.6K.
* 57% of revenue came from *Grinders and Brewers* products. The second-largest category in revenue came from subscription purchases.
* Revenue largely came from orders in the East and West regions, making up 73% of revenue combined.

**Profit and GMP (2025)**
* Profit decreased an even larger 22% from 2024, going from $170.2K to $132.8K. This can be explained by both a decrease in products sold as well as rising COGS.
* Gross Margin Percentage (GMP) in 2025 was 52%, compared to 2024's 55%.
* GMP decreased steadily for nearly all products, but I identified six products that had significantly low margins (below 30% GMP) in 2025:

  * Pour-Over Starter Kit
  * Branded Ceramic Mug
  * Gooseneck Electric Kettle
  * Logo Hoodie (Black)
  * Chemex Filters (100 pack)
  * Minimalist Keychain
  
Most of these are merchandise products, which only made up for 7% of 2025 revenue; the lowest of any product category. Many of these have had historically low profit margins, but rising costs resulted in even more diminishing returns this year. 

### Recommendations
* **Raise prices for several products:** Pour-Over Starter Kit, Branded Ceramic Mug, Gooseneck Electric Kettle, Chemex Filters, and Minimalist Keychain should all have prices raised. The data has shown consistently strong sales for each of these products, so raising prices by 25% may help offset rising COGS.
* **Discontinue *Logo Hoodie (Black)*:** Orders are down 35% from 2023, and have held consistently weak margins (as low as 12% in 2025). Due to weak sales and rising costs, it may be best to discontinue this product.

### Dashboard Preview
The complete dashboard, created in PowerBI, can be found [here](https://github.com/drivera27/Coffee-Pricing-Project/blob/d322dc01d9be3554215906c04ccd813d5c4999d7/sales_dashboard_updated.pbix).

This dashboard enables users to filter by year and quarter, while focusing on KPI trends like revenue and profit. These metrics are then broken down by product, product category, and region.

<img width="706" height="396" alt="Screenshot 2026-02-04 103822" src="https://github.com/user-attachments/assets/1a540dbf-e664-4329-ab51-14491d97f02f" />

## Caveats and Assumptions
