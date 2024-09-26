/* CREATE TABLE Cold_Coffee (
CC_ID INT(5) PRIMARY KEY AUTO_INCREMENT NOT NULL,
CC_Name VARCHAR(150) UNIQUE,
CC_Medio_Price DECIMAL(4,2) NOT NULL UNIQUE,
CC_Grande_Price DECIMAL(4,2) NOT NULL UNIQUE
); */
-- Insert data into the table --
INSERT INTO Cold_Coffee (CC_Name, CC_Medio_Price, CC_Grande_Price) 
VALUES
('Cold Brusko', 29.00, 39.00),
('Cold Mocha', 29.00, 39.00),
('Cold Macchiato', 29.00, 39.00),
('Cold Vanilla', 29.00, 39.00),
('Cold Caramel', 29.00, 39.00),
('Cold Fudge', 29.00, 39.00),
('Cold Spanish', 29.00, 39.00);