/* CREATE TABLE Hot_Coffee (
HC_ID INT(5) PRIMARY KEY AUTO_INCREMENT NOT NULL,
HC_Name VARCHAR(150) UNIQUE,
HC_Price DECIMAL(4, 2) NOT NULL UNIQUE
); */
-- Insert data into the table --
INSERT INTO Hot_Coffee (HC_Name, HC_Price) 
VALUES
('Hot Brusko', 39.00),
('Hot Mocha', 39.00),
('Hot Macchiato', 39.00),
('Hot Vanilla', 39.00),
('Hot Caramel', 39.00),
('Hot Fudge', 39.00),
('Hot Spanish', 39.00);