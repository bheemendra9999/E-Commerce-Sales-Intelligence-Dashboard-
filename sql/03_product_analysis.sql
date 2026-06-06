-- Top Revenue Products

SELECT
    product_name,
    ROUND(SUM(sales),2) AS sales,
    ROUND(SUM(profit),2) AS profit
FROM superstore_sales
GROUP BY product_name
ORDER BY sales DESC
LIMIT 10;

-- Most Profitable Products

SELECT
    product_name,
    ROUND(SUM(profit),2) AS total_profit
FROM superstore_sales
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;

-- Loss Making Products

SELECT
    product_name,
    ROUND(SUM(profit),2) AS total_profit
FROM superstore_sales
GROUP BY product_name
HAVING total_profit < 0
ORDER BY total_profit;