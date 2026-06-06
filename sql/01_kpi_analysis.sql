-- Executive KPIs

SELECT
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers
FROM superstore_sales;

SELECT
    ROUND(
        (SUM(profit)/SUM(sales))*100,
        2
    ) AS profit_margin_pct
FROM superstore_sales;