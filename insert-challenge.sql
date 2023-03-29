CREATE TABLE people(fname VARCHAR(20), lname VARCHAR(20), age INT);
INSERT INTO people (fname, lname, age)
VALUES ('Tina', 'Belcher', 13);

INSERT INTO people (fname, lname, age)
VALUES ('Bob', 'Belcher', 42);

INSERT INTO people (fname, lname, age)
VALUES('Linda', 'Belcher', 45),
      ('Phillip', 'Frond', 38),
      ('Calvin', 'Fischoeder', 70);

SELECT * FROM people;
DROP TABLE people;