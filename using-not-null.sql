-- this makes the columns for the cats2 table unable to be Null
CREATE TABLE cats2(name VARCHAR(50) NOT NULL, age INT NOT NULL);

INSERT INTO cats2(name)
VALUES('Bilbo');
-- ERROR 1364 (HY000): Field 'age' doesn't have a default value
-- when we set age to be NOT NULL, we made it require a value

-- nothing
SELECT * FROM cats2;

-- includes all required columns
INSERT INTO cats2(name, age)
VALUES('Bilbo', 19);

-- works
SELECT * FROM cats2;

-- unlike DESC cats, DESC cats2 will say that the NULL field is NO
DESC cats2;