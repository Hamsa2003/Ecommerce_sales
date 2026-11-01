CREATE TABLE ecommerce_orders (
    order_id VARCHAR(50),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    state VARCHAR(100),
    country VARCHAR(100),
    market VARCHAR(50),
    region VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name TEXT,
    sales NUMERIC(12, 2),
    quantity INT,
    discount NUMERIC(6, 4),
    profit NUMERIC(12, 2),
    shipping_cost NUMERIC(12, 2),
    order_priority VARCHAR(50),
    year INT
);

Select * from ecommerce_orders;

--TASK 2: SQL QUERIES

-- 1. Top 10 profitable products
SELECT 
    product_name, 
    ROUND(SUM(profit), 2) AS total_profit
FROM ecommerce_orders
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;

-- 2. Top 10 customers by sales
SELECT 
    customer_name, 
    ROUND(SUM(sales), 2) AS total_sales
FROM ecommerce_orders
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

-- 3. Region-wise total sales
SELECT 
    region, 
    ROUND(SUM(sales), 2) AS total_sales
FROM ecommerce_orders
GROUP BY region
ORDER BY total_sales DESC;

-- 4. Category-wise average profit
SELECT 
    category, 
    ROUND(AVG(profit), 2) AS avg_profit
FROM ecommerce_orders
GROUP BY category
ORDER BY avg_profit DESC;

-- 5. Highest discount category
SELECT 
    category, 
    ROUND(AVG(discount) * 100, 2) AS avg_discount_percentage
FROM ecommerce_orders
GROUP BY category
ORDER BY avg_discount_percentage DESC
LIMIT 1;

-- 6. Orders with negative profit (Loss-making orders)
SELECT 
    order_id, 
    customer_name, 
    product_name, 
    sales, 
    profit
FROM ecommerce_orders
WHERE profit < 0
ORDER BY profit ASC;

-- 7. Monthly sales trend
SELECT 
    TO_CHAR(order_date, 'YYYY-MM') AS order_month, 
    ROUND(SUM(sales), 2) AS monthly_sales
FROM ecommerce_orders
GROUP BY order_month
ORDER BY order_month;

-- 8. Market-wise revenue analysis
SELECT 
    market, 
    ROUND(SUM(sales), 2) AS total_revenue, 
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin_pct
FROM ecommerce_orders
GROUP BY market
ORDER BY total_revenue DESC;

-- 9. Top-performing sub-categories (by Revenue & Profit)
SELECT 
    sub_category, 
    ROUND(SUM(sales), 2) AS total_sales, 
    ROUND(SUM(profit), 2) AS total_profit
FROM ecommerce_orders
GROUP BY sub_category
ORDER BY total_sales DESC;

-- 10. Ship mode usage analysis
SELECT 
    ship_mode, 
    COUNT(*) AS total_orders, 
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM ecommerce_orders), 2) AS percentage_share
FROM ecommerce_orders
GROUP BY ship_mode
ORDER BY total_orders DESC;


================================================================================
EXECUTIVE SQL INSIGHTS 
================================================================================

1. REVENUE DRIVERS:
   - APAC leads global sales at $3,581,785, followed by EU ($2,937,166) and US ($2,297,022).
   - High revenue in APAC and EU reflects strong volume in high-ticket Technology items.

2. PROFITABILITY & MARGIN LEAKAGE:
   - Technology delivers the highest margins ($663,337 total profit, $65.44 avg/order).
   - Tables is severely underperforming (-$64,113.55 loss) due to excessive discount tiers.
   - Recommended Action: Cap discount thresholds below 15% on furniture and review table pricing structures.

3. LOGISTICS DISTRIBUTION:
   - 60.00% of customers prioritize cost over speed by selecting Standard Class.
   - Low adoption of Same Day delivery (5.26%) indicates commercial bulk shipping rather than urgent consumer deliveries.
================================================================================
