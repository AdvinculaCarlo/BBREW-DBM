-- Example: Insert a Milk Tea sale into Sale_Items
INSERT INTO Sale_Items (sale_ID, product_ID, quantity, price, total_Price)
VALUES (1, 3, 2, 29.00, 58.00);  -- This assumes product_ID 3 is a Milk Tea product

-- Example Query to Fetch Sales with Product Details
SELECT 
    S.sale_ID,
    P.product_Name,
    P.product_Type,
    SI.quantity,
    SI.price,
    SI.total_Price
FROM Sales S
JOIN Sale_Items SI ON S.sale_ID = SI.sale_ID
JOIN Products P ON SI.product_ID = P.product_ID
WHERE S.sale_ID = 1;

-- Example: Issuing a Receipt
-- Insert Sale Entry into Sales
INSERT INTO Sales (user_ID, total_Amount, discount_Applied, final_Amount)
VALUES (1, 100.00, 10.00, 90.00);  -- Example values

-- Insert Items into Sale_Items
INSERT INTO Sale_Items (sale_ID, product_ID, quantity, price, total_Price)
VALUES (1, 3, 2, 29.00, 58.00),  -- Milk Tea, 2 items at 29.00 each
       (1, 5, 1, 39.00, 39.00);  -- Hot Coffee, 1 item at 39.00

-- Retrieve Sale Information for the Receipt
-- to issue the receipt for sale_ID = 1
SELECT 
    S.sale_ID,
    U.first_Name AS cashier,
    S.sale_Date,
    P.product_Name,
    P.product_Type,
    SI.quantity,
    SI.price AS unit_Price,
    SI.total_Price,
    S.total_Amount,
    S.discount_Applied,
    S.final_Amount
FROM Sales S
JOIN Users U ON S.user_ID = U.user_ID
JOIN Sale_Items SI ON S.sale_ID = SI.sale_ID
JOIN Products P ON SI.product_ID = P.product_ID
WHERE S.sale_ID = 1;
