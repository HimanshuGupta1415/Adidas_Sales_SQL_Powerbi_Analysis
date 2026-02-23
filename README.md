Adidas_Sales_SQL_PowerBI_Analysis
"End-to-end Sales Analysis using SQL + Power BI"

This project presents a comprehensive sales analysis of Adidas US retail data using SQL and Power BI. It focuses on analyzing sales performance across regions, states, products, and retailers, providing key business insights through KPIs and interactive visualizations.

🔷 Project Title
Adidas US Sales Analytics Dashboard (SQL + Power BI)


![Dashboard](ADIDAS%20Retail%20Analysis%20Dashboard%20Image.png)



👉 [Download Dashboard](ADIDAS%20SALES%20PBIT.pbit)

⚠️ Note: The dataset is not included. Please connect your own dataset when opening the .pbit file.

🧩 Problem

Retail businesses often face challenges in analyzing large-scale sales data distributed across multiple regions, products, and sales channels. Without a structured analysis, it becomes difficult to track performance, identify trends, and optimize business strategies.

💡 Solution

Developed an end-to-end analytics solution using SQL and Power BI.

* SQL was used for data cleaning, transformation, and KPI calculations
* Power BI was used to build an interactive dashboard

The solution provides insights into sales trends, regional performance, product-level analysis, and retailer contribution.

🛠️ Tools & Technologies

SQL (PostgreSQL for data cleaning & analysis)
Power BI (dashboard & visualization)
Excel (raw data source)

📊 Output

Interactive dashboard with key KPIs:

* Total Sales
* Operating Profit
* Units Sold
* Average Price per Unit
* Operating Margin

--> Visual breakdown by:

* Monthly Sales Trend
* State-wise Sales Distribution
* Region-wise Contribution
* Product Category Performance
* Retailer-wise Sales Analysis

🧮 SQL Queries

* Created raw and cleaned tables using SQL
* Handled data cleaning (removed $, %, commas using REPLACE & TRIM)
* Converted data types for accurate analysis
* Applied aggregations (SUM, AVG) for KPI calculations
* Used GROUP BY for region, state, and product-level analysis
* Implemented time-based analysis using DATE functions
* Used window functions for percentage contribution

![SQL Output](Adidas%20SQL%20Query%20Image.png)

📈 Business Impact

* Identified top-performing regions and states
* Highlighted high-revenue products and retailers
* Enabled better understanding of sales trends over time
* Supported data-driven decision-making
* Provided a scalable approach for real
