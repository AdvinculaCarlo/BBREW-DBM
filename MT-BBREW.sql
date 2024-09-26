/* CREATE TABLE Milk_Tea (
MT_ID INT(5) PRIMARY KEY AUTO_INCREMENT NOT NULL,
MT_Name VARCHAR(150) UNIQUE,
MT_Medio_Price DECIMAL(4,2) NOT NULL UNIQUE,
MT_Grande_Price DECIMAL(4,2) NOT NULL UNIQUE
); */
-- Insert data into the table --
INSERT INTO Milk_Tea (MT_Name, MT_Medio_Price, MT_Grande_Price) 
VALUES
('MT Dark Choco', 29.00, 39.00),
('MT Cookies and Cream', 29.00, 39.00),
('MT Okinawa', 29.00, 39.00),
('MT Wintermelon', 29.00, 39.00),
('MT Cheesecake', 29.00, 39.00),
('MT Matcha', 29.00, 39.00),
('MT Chocolate', 29.00, 39.00),
('MT Red Velvet', 29.00, 39.00),
('MT Salted Caramel', 29.00, 39.00),
('MT Choco Kisses', 29.00, 39.00),
('MT Taro', 29.00, 39.00),
('MT Strawberry', 29.00, 39.00);
