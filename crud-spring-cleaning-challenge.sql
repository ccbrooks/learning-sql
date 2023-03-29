### Create
-- Create a new database → shirts_db
CREATE DATABASE shirts_db;
--make sure to use the database!
USE shirts_db;

-- Create a new table → shirts
CREATE TABLE shirts(
shirt_id INT PRIMARY KEY AUTO_INCREMENT,
article VARCHAR(20),
color VARCHAR(20),
shirt_size VARCHAR(20),
last_worn INT
);

-- Insert data
INSERT INTO shirts(article, color, shirt_size, last_worn)
VALUES ('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

-- make sure that it works
SELECT * FROM shirts;

-- Add a new shirt

-- purple polo, size M, last worn 50 days ago
INSERT INTO shirts(article, color, shirt_size, last_worn)
VALUES ('polo', 'purple', 'M', 50);

## Read
-- Select all shirts, and then print out the article and color
SELECT article, color FROM shirts;

-- Select all medium shirts and print out their shirt_id
SELECT article, color, shirt_size, last_worn FROM shirts
WHERE shirt_size = 'M';

## Update
-- Update all polo shirts so their size is large
UPDATE shirts SET shirt_size = 'L'
WHERE article = 'polo';

-- Update the shirt last worn 15 days ago to 0
UPDATE shirts SET last_worn = 0
WHERE last_worn = 15;

-- Update all white shirts to be size XS and color to be “off-white”
UPDATE shirts SET shirt_size = 'XS', color = 'off-white'
WHERE color = 'white';

## Delete
-- Delete all tank tops
DELETE FROM shirts
WHERE article = 'tank top';

-- Delete all shirts
DELETE FROM shirts;

-- Drop shirts table
DROP TABLE shirts;