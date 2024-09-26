-- Total Sales and Revenue Report
SELECT 
    (SELECT COUNT(sale_ID) FROM Sales) AS total_sales,
    (SELECT SUM(total_Amount) FROM Sales) AS total_revenue_before_discount,
    (SELECT SUM(discount_Applied) FROM Sales) AS total_discounts,
    (SELECT SUM(final_Amount) FROM Sales) AS total_revenue_after_discount;

-- Items Sold by Product Category
SELECT 
    P.product_Type,
    COUNT(SI.sale_Item_ID) AS total_items_sold,
    SUM(SI.quantity) AS total_quantity_sold,
    SUM(SI.total_Price) AS total_sales_amount
FROM Sale_Items SI
JOIN Products P ON SI.product_ID = P.product_ID
GROUP BY P.product_Type;

-- Detailed Sales by Product
SELECT 
    P.product_Name,
    P.product_Type,
    SUM(SI.quantity) AS total_quantity_sold,
    SUM(SI.total_Price) AS total_sales_amount
FROM Sale_Items SI
JOIN Products P ON SI.product_ID = P.product_ID
GROUP BY P.product_Name, P.product_Type
ORDER BY total_sales_amount DESC;


-- MONTHLY SALES REPORT
-- Monthly Sales Summary
SELECT 
    DATE_FORMAT(S.sale_Date, '%Y-%m') AS sale_month,
    COUNT(S.sale_ID) AS total_sales,
    SUM(S.total_Amount) AS total_revenue_before_discount,
    SUM(S.discount_Applied) AS total_discounts,
    SUM(S.final_Amount) AS total_revenue_after_discount
FROM Sales S
GROUP BY sale_month
ORDER BY sale_month DESC;

-- Monthly Sales by Product Type
SELECT 
    DATE_FORMAT(S.sale_Date, '%Y-%m') AS sale_month,
    SI.product_Type,
    SUM(SI.quantity) AS total_quantity_sold,
    SUM(SI.total_Price) AS total_sales_amount
FROM Sale_Items SI
JOIN Sales S ON SI.sale_ID = S.sale_ID
GROUP BY sale_month, SI.product_Type
ORDER BY sale_month DESC, SI.product_Type;

-- Monthly Sales by Product
SELECT 
    DATE_FORMAT(S.sale_Date, '%Y-%m') AS sale_month,
    SI.product_Name,
    SI.product_Type,
    SUM(SI.quantity) AS total_quantity_sold,
    SUM(SI.total_Price) AS total_sales_amount
FROM Sale_Items SI
JOIN Sales S ON SI.sale_ID = S.sale_ID
GROUP BY sale_month, SI.product_Name, SI.product_Type
ORDER BY sale_month DESC, SI.product_Name;
