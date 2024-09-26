-- USER TABLES --
CREATE TABLE Users (
    user_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    first_Name VARCHAR(20) UNIQUE,
    last_Name VARCHAR(20) UNIQUE,
    position VARCHAR(20) UNIQUE,
    manager_PIN VARCHAR(20) UNIQUE
);

-- SALES TABLE --
CREATE TABLE Sales (
    sale_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    user_ID INT,  -- Foreign Key from Users table (optional)
    sale_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_Amount DECIMAL(6,2) NOT NULL,
    discount_Applied DECIMAL(4,2) DEFAULT 0,  -- Discount percentage applied (if any)
    final_Amount DECIMAL(6,2) NOT NULL,  -- Final amount after discount
    FOREIGN KEY (user_ID) REFERENCES Users(user_ID)
);

-- SALE ITEMS TABLE --
CREATE TABLE Sale_Items (
    sale_Item_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    sale_ID INT,  -- Foreign Key from Sales table
    product_Type VARCHAR(50) NOT NULL,  -- Type: Milk_Tea, Cold_Coffee, etc.
    product_Name VARCHAR(150) NOT NULL,  -- Name of the product
    quantity INT NOT NULL,
    price DECIMAL(6,2) NOT NULL,  -- Price per item
    total_Price DECIMAL(6,2) NOT NULL,  -- price * quantity
    FOREIGN KEY (sale_ID) REFERENCES Sales(sale_ID)
);

-- SALES REPORT TABLE --
CREATE TABLE Sales_Report (
    report_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    sale_ID INT NOT NULL,  -- Foreign Key from Sales table
    total_Amount DECIMAL(6,2) NOT NULL,
    discount_Applied DECIMAL(4,2) DEFAULT 0,  -- Discount percentage applied (if any)
    final_Amount DECIMAL(6,2) NOT NULL,  -- Final amount after discount
    sale_Date TIMESTAMP NOT NULL,
    user_ID INT,  -- Optional, Foreign Key from Users table
    FOREIGN KEY (sale_ID) REFERENCES Sales(sale_ID),
    FOREIGN KEY (user_ID) REFERENCES Users(user_ID)
);

-- RECEIPT TABLE --
CREATE TABLE Receipt (
    receipt_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    sale_ID INT NOT NULL,  -- Foreign Key from Sales table
    user_ID INT,  -- Foreign Key from Users table (optional)
    issue_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_Method VARCHAR(20) NOT NULL,  -- e.g., Cash, Card, etc.
    FOREIGN KEY (sale_ID) REFERENCES Sales(sale_ID),
    FOREIGN KEY (user_ID) REFERENCES Users(user_ID)
);

-- DISCOUNT TABLE --
CREATE TABLE Discounts (
    discount_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    discount_Type VARCHAR(50) NOT NULL,  -- PWD, Senior, etc.
    discount_Percentage DECIMAL(4,2) NOT NULL,  -- Discount percentage
    applicable_To VARCHAR(50) NOT NULL  -- All Products or specific category (e.g., Milk_Tea)
);

-- DISCOUNT AUTHORIZATION TABLE --
CREATE TABLE Discount_Authorization (
    authorization_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    discount_ID INT NOT NULL,  -- Foreign Key from Discounts table
    user_ID INT NOT NULL,  -- Foreign Key from Users table (authorized person)
    sale_ID INT NOT NULL,  -- Foreign Key from Sales table
    authorization_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    discount_Reason VARCHAR(100) NOT NULL,  -- Reason for discount (e.g., PWD, Senior)
    FOREIGN KEY (discount_ID) REFERENCES Discounts(discount_ID),
    FOREIGN KEY (user_ID) REFERENCES Users(user_ID),
    FOREIGN KEY (sale_ID) REFERENCES Sales(sale_ID)
);

-- PRODUCT TABLES --
CREATE TABLE Milk_Tea (
    MT_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    MT_Name VARCHAR(150) UNIQUE,
    MT_Medio_Price DECIMAL(4,2) NOT NULL,
    MT_Grande_Price DECIMAL(4,2) NOT NULL
);

CREATE TABLE Cold_Coffee (
    CC_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    CC_Name VARCHAR(150) UNIQUE,
    CC_Medio_Price DECIMAL(4,2) NOT NULL,
    CC_Grande_Price DECIMAL(4,2) NOT NULL
);

CREATE TABLE Hot_Coffee (
    HC_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    HC_Name VARCHAR(150) UNIQUE,
    HC_Price DECIMAL(4,2) NOT NULL
);

CREATE TABLE Fruit_Tea (
    FT_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    FT_Name VARCHAR(150) UNIQUE,
    FT_Medio_Price DECIMAL(4,2) NOT NULL,
    FT_Grande_Price DECIMAL(4,2) NOT NULL
);

CREATE TABLE Praf (
    Praf_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Praf_Name VARCHAR(150) UNIQUE,
    Praf_Medio_Price DECIMAL(4,2) NOT NULL,
    Praf_Grande_Price DECIMAL(4,2) NOT NULL
);

CREATE TABLE Brosty (
    Brosty_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Brosty_Name VARCHAR(150) UNIQUE,
    Brosty_Medio_Price DECIMAL(4,2) NOT NULL,
    Brosty_Grande_Price DECIMAL(4,2) NOT NULL
);

CREATE TABLE Premiums (
    Premium_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Premium_Name VARCHAR(150) UNIQUE,
    Premium_Price DECIMAL(4,2) NOT NULL
);

CREATE TABLE Add_Ons (
    Add_OnsID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Add_Ons_Name VARCHAR(100) NOT NULL UNIQUE,
    Add_Ons_Price DECIMAL(4,2) NOT NULL
);
