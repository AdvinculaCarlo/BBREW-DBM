/* CREATE TABLE Fruit_Tea (
FT_ID INT(5) PRIMARY KEY AUTO_INCREMENT NOT NULL,
FT_Name VARCHAR(150) UNIQUE,
FT_Medio_Price DECIMAL(4,2) NOT NULL UNIQUE,
FT_Grande_Price DECIMAL(4,2) NOT NULL UNIQUE
); */
-- Insert data into the table --
INSERT INTO Fruit_Tea (FT_Name, FT_Medio_Price, FT_Grande_Price) 
VALUES
('FT Lychee', 29.00, 39.00),
('FT Green Apple', 29.00, 39.00),
('FT Blueberry', 29.00, 39.00),
('FT Lemon', 29.00, 39.00),
('FT Strawberry', 29.00, 39.00),
('FT Kiwi', 29.00, 39.00),
('FT Mango', 29.00, 39.00),
('FT Honey Peach', 29.00, 39.00);