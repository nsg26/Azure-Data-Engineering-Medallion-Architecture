--Total Revenue
--How much revenue did the company generate?

SELECT SUM(total_sales) AS total_revenue
FROM sales_summary;

--Total Transactions

--How many sales transactions occurred?

SELECT COUNT(*) AS total_transactions
FROM sales_summary;

--Sales by Region
--Which region generates the most revenue?

SELECT
    region,
    SUM(total_sales) AS total_sales
FROM sales_summary
GROUP BY region
ORDER BY total_sales DESC;

--Number of Regions
--In how many regions do we operate?
SELECT COUNT(DISTINCT region) AS total_regions
FROM sales_summary;

--Average Transaction Value
--What is the average sales amount per transaction?
SELECT AVG(total_sales) AS avg_transaction_value
FROM sales_summary;

--Lowest Single Sale
--What was the smallest transaction?
SELECT MIN(total_sales) AS lowest_sale
FROM sales_summary;

