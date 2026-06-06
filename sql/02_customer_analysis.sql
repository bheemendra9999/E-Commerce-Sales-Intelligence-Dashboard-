-- Top Customers

SELECT
    customer_name,
    ROUND(SUM(sales),2) AS sales,
    ROUND(SUM(profit),2) AS profit
FROM superstore_sales
GROUP BY customer_name
ORDER BY sales DESC
LIMIT 10;

-- Customer Ranking

SELECT
    customer_name,
    ROUND(SUM(sales),2) AS total_sales,
    RANK() OVER(
        ORDER BY SUM(sales) DESC
    ) AS customer_rank
FROM superstore_sales
GROUP BY customer_name;
