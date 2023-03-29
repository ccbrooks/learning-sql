USE pet_shop;
CREATE TABLE cats(name VARCHAR(50), age INT);

-- in Command Line Client
INSERT INTO cats(name, age)
VALUES ('Blue Steele', 5);

-- in Workbench
INSERT INTO cats(name, age)
VALUES( 'Jenkins', 7);

-- order doesn't matter as long as the correct info is going into the right columns
INSERT INTO cats(age, name)
VALUES(2, 'Beth');

SELECT * FROM cats;

-- bad example
-- INSERT INTO cats(name, age)
-- VALUES(8, 'Linus');
-- ERROR 1366 (HY000): Incorrect integer value: 'Linus' for column 'age' at row 1
-- error prevents row from being created

-- multiple insert
-- example, unused
INSERT INTO cats(name, age)
VALUES ('Charlie', 10),
		   ('Sadie', 3),
		   ('Lazy Bear', 1);
-- Workbench
INSERT INTO cats(name, age)
VALUES ('Meatball', 5),
	     ('Turkey', 1),
       ('Potato face', 15);