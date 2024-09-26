/* CREATE TABLE Brosty (
Brosty_ID INT(5) PRIMARY KEY AUTO_INCREMENT NOT NULL,
Brosty_Name VARCHAR(150) UNIQUE,
Brosty_Medio_Price DECIMAL(4,2) NOT NULL UNIQUE,
Brosty_Grande_Price DECIMAL(4,2) NOT NULL UNIQUE
); */
-- Insert data into the table --
INSERT INTO Brosty (Brosty_Name, Brosty_Medio_Price, Brosty_Grande_Price) 
VALUES
('B Lychee', 49.00, 59.00),
('B Green Apple', 49.00, 59.00),
('B Blueberry', 49.00, 59.00),
('B Lemon', 49.00, 59.00),
('B Strawberry', 49.00, 59.00),
('B Kiwi', 49.00, 59.00),
('B Mango', 49.00, 59.00),
('B Honey Peach', 49.00, 59.00);