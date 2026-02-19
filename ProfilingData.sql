-- Basket Size Distribution
-- Total rows: 20728
SELECT 
  invoice_no,
  COUNT(DISTINCT stock_code) AS basket_size
FROM online_retail
WHERE quantity>0
GROUP BY invoice_no;


-- Most Purchased Products
SELECT
  description,
  SUM(quantity) AS total_units
FROM online_retail
WHERE Quantity > 0
GROUP BY Description
ORDER BY total_units DESC
LIMIT 10;


-- Revenue Distribution
SELECT
  description,
  SUM(quantity * unit_price) AS revenue
FROM online_retail
WHERE quantity > 0
GROUP BY description
ORDER BY revenue DESC
LIMIT 10;


-- Time Patterns
SELECT
  EXTRACT(DOW FROM invoice_date) AS day_of_week,
  COUNT(DISTINCT invoice_no) AS orders 
FROM online_retail
GROUP BY day_of_week