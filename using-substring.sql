-- general use
-- SELECT SUBSTRING(<string>, <start_position>, <distance_from_start_position>);
-- how to use SUBSTRING
SELECT SUBSTRING ('Hello World', 1, 4);
-- prints 'Hell'

SELECT SUBSTRING('Hello World', 1, 6);
-- prints 'Hello '

SELECT SUBSTRING('Hello World', 1, 7);
-- prints 'Hello W'

SELECT SUBSTRING('Hello World', 2, 4);
-- prints 'ello'

SELECT SUBSTRING ('Hello World', 7);
-- prints 'World'

SELECT SUBSTRING ('Hello World', 7, 2);
-- prints 'Wo'

SELECT SUBSTRING ('Hello World', 5);
-- prints 'o World'

-- negative makes it pull from the end of the string instead of the front
SELECT SUBSTRING ('Hello World', -3);
-- prints 'rld'

-- in books data
SELECT title FROM books;
SELECT SUBSTRING(title, 1, 15) FROM books;
-- for all titles in the table, only display the first 15 characters

-- first character of author's last name
SELECT SUBSTRING(autho_lname, 1, 1) AS initial, author_lname FROM books;