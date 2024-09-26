/* CREATE TABLE Praf (
Praf_ID INT(5) PRIMARY KEY AUTO_INCREMENT NOT NULL,
Praf_Name VARCHAR(150) UNIQUE,
Praf_Medio_Price DECIMAL(4,2) NOT NULL UNIQUE,
Praf_Grande_Price DECIMAL(4,2) NOT NULL UNIQUE
); */
-- Insert data into the table --
INSERT INTO Praf (Praf_Name, Praf_Medio_Price, Praf_Grande_Price) 
VALUES
('P Java Chip', 49.00, 59.00),
('P Cheesecake', 49.00, 59.00),
('P Cookies and Cream', 49.00, 59.00),
('P Creamy Avocado', 49.00, 59.00),
('P Chocolate', 49.00, 59.00),
('P Coffee Jelly', 49.00, 59.00),
('P Matcha', 49.00, 59.00),
('P Caramel Macchiato', 49.00, 59.00),
('P Strawberry', 49.00, 59.00),
('P Mocha', 49.00, 59.00),
('P Taro', 49.00, 59.00),
('P Vanilla', 49.00, 59.00);