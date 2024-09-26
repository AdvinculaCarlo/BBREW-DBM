/* CREATE TABLE Premiums (
Premium_ID INT(5) PRIMARY KEY AUTO_INCREMENT NOT NULL,
Premium_Name VARCHAR(150) UNIQUE,
Premium_Price DECIMAL(4,2) NOT NULL UNIQUE
); */
-- Insert data into the table --
INSERT INTO Premiums (Premium_Name, Premium_Price) 
VALUES
('PR BlackPink', 66.00),
('PR Kape KMJS', 60.00),
('PR Super Choco', 49.00),
('PR Supreme Mocha', 52.00),
('PR Boss Brew', 66.00),
('PR Kara-Van', 70.00),
('PR Cutie Drink', 48.00),
('PR Choco Berry', 39.00);
