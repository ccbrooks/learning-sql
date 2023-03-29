-- to create a default value
CREATE TABLE cats3(
	name VARCHAR(50) DEFAULT 'unnamed',
	age INT DEFAULT 99
);

-- when creating blank cat, default values will occur
INSERT INTO cats3()
VALUES();

-- sets a cat's name and age to NULL
INSERT INTO cats3(name, age)
VALUES (NULL, NULL);

-- combine NOT NULL and DEFAULT
CREATE TABLE cats4(
name VARCHAR(20) NOT NULL DEFAULT 'unnamed',
age INT NOT NULL DEFAULT 99
);

-- insert an empty cat, not a NULL cat
INSERT INTO cats4()
VALUES ();