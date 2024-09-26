-- Total Sales and Revenue:
SELECT 
    COUNT(sale_ID) AS total_sales,
    SUM(total_Amount) AS total_revenue_before_discount,
    SUM(discount_Applied) AS total_discounts,
    SUM(final_Amount) AS total_revenue_after_discount
FROM Sales;

-- Total Items Sold by Product Type:
SELECT 
    P.product_Type,
    COUNT(SI.sale_Item_ID) AS total_items_sold,
    SUM(SI.quantity) AS total_quantity_sold,
    SUM(SI.total_Price) AS total_sales_amount
FROM Sale_Items SI
JOIN Products P ON SI.product_ID = P.product_ID
GROUP BY P.product_Type;

-- Detailed Sales Report by Product:
SELECT 
    P.product_Name,
    P.product_Type,
    SUM(SI.quantity) AS total_quantity_sold,
    SUM(SI.total_Price) AS total_sales_amount
FROM Sale_Items SI
JOIN Products P ON SI.product_ID = P.product_ID
GROUP BY P.product_Name, P.product_Type
ORDER BY total_sales_amount DESC;

-- Report for a Specific Date Range:
SELECT 
    COUNT(sale_ID) AS total_sales,
    SUM(total_Amount) AS total_revenue_before_discount,
    SUM(discount_Applied) AS total_discounts,
    SUM(final_Amount) AS total_revenue_after_discount
FROM Sales
WHERE sale_Date BETWEEN '2024-09-01' AND '2024-09-30';  -- Example for September 2024

