-- general use
-- SELECT CHAR_LENGTH(<string>);

-- use char_length
SELECT CHAR_LENGTH('Hello World!');
-- prints 11
SELECT CHAR_LENGTH('Hey!');
-- prints 4

-- return character lengths of all titles in books table
SELECT CHAR_LENGTH(title) AS len, title FROM books;