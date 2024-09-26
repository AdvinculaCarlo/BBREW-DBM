-- Inserting Milk Tea products
INSERT INTO Products (product_Name, product_Type, medio_Price, grande_Price)
SELECT MT_Name, 'Milk_Tea', MT_Medio_Price, MT_Grande_Price FROM Milk_Tea;

-- Inserting Cold Coffee products
INSERT INTO Products (product_Name, product_Type, medio_Price, grande_Price)
SELECT CC_Name, 'Cold_Coffee', CC_Medio_Price, CC_Grande_Price FROM Cold_Coffee;

-- Inserting Hot Coffee products
INSERT INTO Products (product_Name, product_Type, single_Price)
SELECT HC_Name, 'Hot_Coffee', HC_Price FROM Hot_Coffee;

-- Inserting Fruit Tea products
INSERT INTO Products (product_Name, product_Type, medio_Price, grande_Price)
SELECT FT_Name, 'Fruit_Tea', FT_Medio_Price, FT_Grande_Price FROM Fruit_Tea;

-- Inserting Praf products
INSERT INTO Products (product_Name, product_Type, medio_Price, grande_Price)
SELECT Praf_Name, 'Praf', Praf_Medio_Price, Praf_Grande_Price FROM Praf;

-- Inserting Brosty products
INSERT INTO Products (product_Name, product_Type, medio_Price, grande_Price)
SELECT Brosty_Name, 'Brosty', Brosty_Medio_Price, Brosty_Grande_Price FROM Brosty;

-- Inserting Premiums products
INSERT INTO Products (product_Name, product_Type, single_Price)
SELECT Premium_Name, 'Premiums', Premium_Price FROM Premiums;

-- Inserting Add Ons products
INSERT INTO Products (product_Name, product_Type, single_Price)
SELECT Add_Ons_Name, 'Add_Ons', Add_Ons_Price FROM Add_Ons;
