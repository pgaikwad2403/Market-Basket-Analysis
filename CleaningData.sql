-- Total Rows in Original Dataset
SELECT COUNT(*) AS total_rows
FROM online_retail;

-- Returns (Quantity ≤ 0)
SELECT COUNT(*) AS return_rows
FROM online_retail
WHERE Quantity <= 0;

-- Cancellations (InvoiceNo starting with 'C')
SELECT COUNT(*) AS cancellation_rows
FROM online_retail
WHERE invoice_no LIKE 'C%';

-- Non-Product Items (Test / Service Codes)
SELECT COUNT(*) AS non_product_rows
FROM online_retail
WHERE stock_code IN ('POST', 'D', 'M', 'BANK CHARGES');

-- Total Rows Removed (Combined, No Double Counting)
SELECT COUNT(*) AS total_removed_rows
FROM online_retail
WHERE quantity <= 0
   OR invoice_no LIKE 'C%'
   OR stock_code IN ('POST', 'D', 'M', 'BANK CHARGES');
   
-- Final Clean Dataset Row Count
SELECT COUNT(*) AS final_clean_rows
FROM online_retail
WHERE quantity > 0
  AND invoice_no NOT LIKE 'C%'
  AND stock_code NOT IN ('POST', 'D', 'M', 'BANK CHARGES');
  
-- Percentage of Dataset Removed
WITH counts AS (
  SELECT COUNT(*) AS total FROM online_retail
),
removed AS (
  SELECT COUNT(*) AS removed
  FROM online_retail
  WHERE quantity <= 0
     OR invoice_no LIKE 'C%'
     OR stock_code IN ('POST', 'D', 'M', 'BANK CHARGES')
)
SELECT
  removed,
  total,
  ROUND((removed * 100.0 / total), 2) AS percent_removed
FROM counts, removed;

-- Percentage of Final Clean Dataset
WITH counts AS (
  SELECT COUNT(*) AS total FROM online_retail
),
clean AS (
  SELECT COUNT(*) AS clean_rows
  FROM online_retail
  WHERE quantity > 0
    AND invoice_no NOT LIKE 'C%'
    AND stock_code NOT IN ('POST', 'D', 'M', 'BANK CHARGES')
)
SELECT
  clean_rows,
  total,
  ROUND((clean_rows * 100.0 / total), 2) AS percent_clean
FROM counts, clean;