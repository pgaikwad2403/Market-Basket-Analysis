
-- Total rows: 541909
SELECT COUNT(*) FROM online_retail;

-- Date range: "2010-12-01 08:26:00" "2011-12-09 12:50:00"
SELECT 
  MIN(invoice_date) AS start_date,
  MAX(invoice_date) AS end_date
FROM online_retail;

-- Unique counts: orders:25900	products:4070 customers:4372
SELECT
  COUNT(DISTINCT invoice_no) AS total_orders,
  COUNT(DISTINCT stock_code) AS total_products,
  COUNT(DISTINCT customer_id) AS total_customers
FROM online_retail;

-- Null customers: 135080
SELECT COUNT(*) 
FROM online_retail
WHERE customer_id IS NULL;
