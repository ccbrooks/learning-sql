-- create a table with a primary key
CREATE TABLE unique_cats(
cat_id INT NOT NULL PRIMARY KEY,
name VARCHAR(100),
age INT
);

-- insert a cat into the table
INSERT INTO unique_cats(cat_id, name, age)
VALUES (1, 'Bingo', 2);

-- insert a cat with same id into the table
-- INSERT INTO unique_cats(cat_id, name, age)
-- VALUES(1, 'Bongo', 3);
-- ERROR 1062 (23000): Duplicate entry '1' for key 'unique_cats.PRIMARY'
-- need a different primary key, cannot be the same!