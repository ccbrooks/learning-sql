--see what tables we still have
SHOW TABLES;
-- delete cats table
DROP TABLE cats;
-- recreate cats table
CREATE TABLE cats(
cat_id INT AUTO_INCREMENT,
name VARCHAR(100),
breed VARCHAR(100),
age INT,
PRIMARY KEY(cat_id)
);
-- insert new data into cats
INSERT INTO cats(name, breed, age)
VALUES('Ringo', 'Tabby', 4),
			('Cindy', 'Maine Coon', 10),
			('Dumbledore', 'Maine Coon', 11),
			('Egg', 'Persian', 4),
			('Misty', 'Tabby', 13),
			('George Michael', 'Ragdoll', 9),
			('Jackson', 'Sphynx', 7);
            
-- SELECT expression can be narrowed
SELECT name FROM cats;
SELECT age FROM cats;
SELECT name, age FROM cats;
SELECT name, breed FROM cats;

-- WHERE happens before the SELECT, so we don;t have to SELECT a column we use
SELECT * FROM cats WHERE age = 4;

-- case-sensitivity can exist, but we haven't done that yet
-- case-insensitive in this example
SELECT * FROM cats WHERE name = 'Egg';

-- how to update
UPDATE cats SET breed = 'Shorthair'
WHERE breed = 'Tabby';

SELECT * FROM cats WHERE name = 'Misty';
UPDATE cats SET age = 14 
WHERE name = 'Misty';
-- quick rule of thumb
-- check SELECT first to make sure we're targeting the right thing for the update
	-- SELECT * FROM cats WHERE name = 'Misty';

-- deletes all data in a table, NOT THE TABLE ITSELF
DELETE FROM cats;

-- deletes certain info from table
DELETE FROM cats WHERE name = 'Egg';

-- delete all data, but not table
DELETE FROM employees;
SELECT * FROM employees;
-- Empty set (0.00 sec)

-- table still exists
DESC employees;