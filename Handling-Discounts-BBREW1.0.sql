-- Handling Discounts (For PWD, Senior, etc.)
-- Fetch discount percentage
SELECT discount_Percentage 
FROM Discounts 
WHERE discount_Type = 'Senior';  -- Assuming the customer is a Senior

-- Apply the discount (example calculation)
UPDATE Sales
SET discount_Applied = 10.00,  -- 10% discount
    final_Amount = total_Amount - (total_Amount * 0.10)
WHERE sale_ID = 1;

