-- general use
-- SELECT CONCAT(<element>, <element>, <element>);
-- how to concat
SELECT CONCAT('pi', 'ckle');
SELECT CONCAT('h', 'e', 'l');

-- concat first name and last name for a full author name
-- cannot do just CONCAT, need SELECT
SELECT CONCAT(author_fname, '!!!') FROM books;
-- makes a list of first and last names, no space!
SELECT CONCAT(author_fname, author_lname);
-- here's a space
-- give alias so it looks cleaner
SELECT CONCAT(author_fname, ' ', author_lname) AS full_name;

SELECT CONCAT_WS('-', title, author_fname, author_lname)
FROM books;

SELECT CONCAT_WS('!', 'hi', 'bye', 'lol');

-- create a unique "url" for books
-- not fullproof because titles may have spaces, but just an example for now
SELECT CONCAT_WS('-', title, author_fname, author_lname);