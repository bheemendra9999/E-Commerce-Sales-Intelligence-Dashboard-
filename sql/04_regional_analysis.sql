SELECT
    region,
    ROUND(SUM(sales),2) AS sales,
    ROUND(SUM(profit),2) AS profit
FROM superstore_sales
GROUP BY region
ORDER BY sales DESC;

SELECT
    category,
    ROUND(SUM(sales),2) AS sales,
    ROUND(SUM(profit),2) AS profit
FROM superstore_sales
GROUP BY category
ORDER BY sales DESC;