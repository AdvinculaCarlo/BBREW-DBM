-- DISCOUNT TABLE --
CREATE TABLE Discounts (
    discount_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    discount_Type VARCHAR(50) NOT NULL,  -- PWD, Senior, etc.
    discount_Percentage DECIMAL(4,2) NOT NULL,  -- Discount percentage
    applicable_To VARCHAR(50) NOT NULL  -- All Products or specific category (e.g., Milk_Tea)
);
-- SALES TABLE --
-- TO GENERATE RECEIPT --
CREATE TABLE Sales (
    sale_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    user_ID INT(5),  -- Foreign Key from Users table (optional)
    sale_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_Amount DECIMAL(6,2) NOT NULL,
    discount_Applied DECIMAL(4,2) DEFAULT 0,  -- Discount percentage applied (if any)
    final_Amount DECIMAL(6,2) NOT NULL,  -- Final amount after discount
    FOREIGN KEY (user_ID) REFERENCES Users(user_ID)
);
CREATE TABLE Sale_Items (
    sale_Item_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    sale_ID INT(5),  -- Foreign Key from Sales table
    product_Type VARCHAR(50) NOT NULL,  -- Type: Milk_Tea, Cold_Coffee, etc.
    product_Name VARCHAR(150) NOT NULL,  -- Name of the product
    quantity INT(3) NOT NULL,
    price DECIMAL(6,2) NOT NULL,  -- Price per item
    total_Price DECIMAL(6,2) NOT NULL,  -- price * quantity
    FOREIGN KEY (sale_ID) REFERENCES Sales(sale_ID)
);
