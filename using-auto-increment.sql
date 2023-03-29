--creating a table with a primary key
CREATE TABLE unique_cats(
cat_id INT PRIMARY KEY,
name VARCHAR(100),
age INT
);

--ANOTHER OPTION
CREATE TABLE unique_cats(
cat_id INT,
name VARCHAR(100),
age INT,
PRIMARY KEY(cat_id)
);

-- if we try to insert into unique_cats...
-- this is fine
INSERT INTO unique_cats(cat_id, name, age)
VALUES(1, 'Oingo', 2);

-- this is not fine
	-- INSERT INTO unique_cats(cat_id, name, age)
	-- VALUES('Oingo', 2);
-- ERROR 1136 (21S01): Column count doesn't match value count at row 1

-- this is also not fine
	-- INSERT INTO unique_cats(name, age)
	-- VALUES('Oingo', 2);
-- ERROR 1364 (HY000): Field 'cat_id' doesn't have a default value

-- how to add auto increment
CREATE TABLE unique_cats3(
cat_id INT AUTO_INCREMENT,
name VARCHAR(100),
age INT, PRIMARY KEY (cat_id)
);

-- don't need to specify primary key because it will auto increment
INSERT INTO unique_cats3(name, age)
VALUES ('Boingo', 1);

-- insert a bunch of the same cat name and age, they will all have different ids
INSERT INTO unique_cats3(name, age)
VALUES ('Boingo', 1);
INSERT INTO unique_cats3(name, age)
VALUES ('Boingo', 1);
INSERT INTO unique_cats3(name, age)
VALUES ('Boingo', 1);
INSERT INTO unique_cats3(name, age)
VALUES ('Boingo', 1);
INSERT INTO unique_cats3(name, age)
VALUES ('Boingo', 1);
INSERT INTO unique_cats3(name, age)
VALUES ('Boingo', 1);
INSERT INTO unique_cats3(name, age)
VALUES ('Boingo', 1);