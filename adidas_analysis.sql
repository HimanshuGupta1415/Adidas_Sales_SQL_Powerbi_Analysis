-- A) File upload and creating table

DROP TABLE IF EXISTS adidas;

CREATE TABLE adidas (
  retailer TEXT,
  retailer_id TEXT,
  invoice_date TEXT,
  region TEXT,
  state TEXT,
  city TEXT,
  product TEXT,
  price_per_unit TEXT,
  units_sold TEXT,
  total_sales TEXT,
  operating_profit TEXT,
  operating_margin TEXT,
  sales_method TEXT
);

-- B) Import CSV in pgAdmin:
-- Right-click table adidas -> Import/Export -> choose CSV -> Header = Yes -> OK

-- C) Clean version

DROP TABLE IF EXISTS adidas_clean;

CREATE TABLE adidas_clean AS
SELECT
  retailer,
  retailer_id::INT AS retailer_id,
  TO_DATE(TRIM(invoice_date), 'MM/DD/YYYY') AS invoice_date,
  region,
  state,
  city,
  product,
  REPLACE(TRIM(price_per_unit), '$', '')::NUMERIC AS price_per_unit,
  REPLACE(TRIM(units_sold), ',', '')::INT AS units_sold,
  REPLACE(REPLACE(TRIM(total_sales), '$', ''), ',', '')::NUMERIC AS total_sales,
  REPLACE(REPLACE(TRIM(operating_profit), '$', ''), ',', '')::NUMERIC AS operating_profit,
  REPLACE(REPLACE(TRIM(operating_margin), '%', ''), ',', '')::NUMERIC AS operating_margin,
  sales_method
FROM adidas;

-- D) KPI 1: Total Sales
SELECT SUM(total_sales) AS total_sales
FROM adidas_clean;

-- E) KPI 2: Operating Profit
SELECT SUM(operating_profit) AS operating_profit
FROM adidas_clean;

SELECT ROUND(SUM(operating_profit)/1000000, 0) || 'M' AS operating_profit_millions
FROM adidas_clean;

-- F) KPI 3: Units Sold
SELECT SUM(units_sold) AS total_units_sold
FROM adidas_clean;

SELECT ROUND(SUM(units_sold)/1000000, 1) || 'M' AS units_sold_millions
FROM adidas_clean;

-- G) KPI 4: Avg Price per Unit
SELECT '$' || ROUND(AVG(price_per_unit), 0) AS avg_price
FROM adidas_clean;

-- H) KPI 5: Operating Margin (%)
SELECT ROUND((SUM(operating_profit) / SUM(total_sales)) * 100, 0) || '%' AS operating_margin
FROM adidas_clean;

-- I) Total Sales by Month
SELECT
  TO_CHAR(invoice_date, 'Month') AS month,
  SUM(total_sales) AS total_sales
FROM adidas_clean
GROUP BY month, DATE_PART('month', invoice_date)
ORDER BY DATE_PART('month', invoice_date);

-- K) Total Sales by Region
SELECT
  region,
  SUM(total_sales) AS total_sales
FROM adidas_clean
GROUP BY region
ORDER BY total_sales DESC;