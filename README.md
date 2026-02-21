Market Basket Analysis – Product Bundling & Cross-Sell Insights


Project Overview
This project analyzes customer purchase behavior using the UCI Online Retail dataset to identify frequently bought-together products and generate data-driven product bundle and cross-sell recommendations aimed at increasing Average Order Value (AOV).
Using SQL-based market basket analysis, the project calculates Support, Confidence, and Lift to uncover meaningful product associations and translate them into actionable business strategies.

Business Problem
Which products are frequently purchased together, and how can these insights be used to create product bundles and cross-sell recommendations that increase revenue?

Key Business Questions
What is the average basket size (items per order)?
Which product pairs are most frequently purchased together?
What factors drive customers to buy certain products together?
How do purchase patterns vary by country and time?
Which product bundles should be created to maximize AOV?

Dataset
Source: UCI Machine Learning Repository – Online Retail Dataset
Time Period: December 2010 – September 2011
Records: 541,909 transactions
Industry: UK-based online retail

Data Fields
Column |	Description
InvoiceNo	|	Unique transaction ID
StockCode	|	Product identifier
Description	|	Product name
Quantity	|	Units purchased
UnitPrice	|	Price per unit
InvoiceDate	|	Timestamp
CustomerID	|	Customer identifier
Country	|	Customer country

Key Metrics
Metric	|	Description
Basket Size	|	Number of unique items per order
Support	|	% of orders containing an item or item pair
Confidence	|	Probability of buying item B given item A
Lift	|	Strength of association between two products
AOV	|	Average order value
Cross-sell Rate	|	% of multi-item orders

Data Cleaning Rules
The following records were excluded:
Cancellations (InvoiceNo starting with 'C')
Returns (Quantity ≤ 0)
Non-product codes (POST, D, M, BANK CHARGES)
Invalid pricing (UnitPrice ≤ 0)

Tools & Technologies
SQL (PostgreSQL)
Excel (initial inspection)
Power BI (visualization)
GitHub (version control & portfolio)

Analysis Workflow

1. Data Exploration
Validated date ranges
Counted invoices, customers, and products
Identified missing values and cancellations

2. Data Profiling
Basket size distribution
Top-selling products
Revenue concentration
Order patterns by day and hour

3. Data Cleaning
Removed invalid transactions
Standardized product descriptions
Created a clean transactional dataset

4. Data Shaping
Built order–product matrix
Generated all product pair combinations per order
Calculated Support, Confidence, and Lift

5. Data Analysis
Identified high-lift product pairs
Segmented baskets (Small / Medium / Large)
Compared purchasing behavior across countries

Key Insights
Certain product pairs are purchased 4–8× more frequently than expected by chance
Customers with 4+ items per basket generate over 2× higher AOV
Top 5 product pairs represent a significant share of multi-item orders
Purchase behavior varies meaningfully by country

Business Recommendations
Create product bundles for pairs with Lift > 3
Offer 5–10% bundle discounts to increase conversion
Add “Frequently Bought Together” sections on product pages
Trigger post-purchase cross-sell emails within 48 hours
A/B test bundle pricing to optimize revenue impact

Dashboards (Power BI)
Basket Size Distribution
Top Product Pairs by Lift
Cross-Sell Heatmap
Product Network Graph
Recommended Product Bundles
