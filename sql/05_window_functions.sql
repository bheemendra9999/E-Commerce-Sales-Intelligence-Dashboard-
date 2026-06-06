-- Customer Ranking

SELECT
    customer_name,
    ROUND(SUM(sales),2) AS total_sales,
    RANK() OVER(
        ORDER BY SUM(sales) DESC
    ) AS customer_rank
FROM superstore_sales
GROUP BY customer_name;

-- Product Ranking

SELECT
    product_name,
    ROUND(SUM(profit),2) AS total_profit,
    DENSE_RANK() OVER(
        ORDER BY SUM(profit) DESC
    ) AS product_rank
FROM superstore_sales
GROUP BY product_name;