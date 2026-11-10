
-- Retail Sales Analysis
-- Portfolio Project

-- 1. Total Revenue
SELECT SUM(Sales) AS Total_Revenue
FROM retail_sales;

-- 2. Total Orders
SELECT COUNT(DISTINCT Order_ID) AS Total_Orders
FROM retail_sales;

-- 3. Revenue by Product
SELECT
    Product,
    SUM(Sales) AS Total_Revenue
FROM retail_sales
GROUP BY Product
ORDER BY Total_Revenue DESC;

-- 4. Average Order Value
SELECT
    ROUND(
        SUM(Sales) * 1.0 /
        COUNT(DISTINCT Order_ID), 2
    ) AS Average_Order_Value
FROM retail_sales;

-- 5. High Revenue Products
SELECT
    Product,
    SUM(Sales) AS Total_Revenue
FROM retail_sales
GROUP BY Product
HAVING SUM(Sales) > 50000;

-- 6. Revenue by Category
SELECT
    Category,
    SUM(Sales) AS Total_Revenue
FROM retail_sales
GROUP BY Category
ORDER BY Total_Revenue DESC;
