-- MY SOLUTIONS
-- reverse and uppercase the following sentence
-- 'Why does my cat look at me with such hatred?'
SELECT UPPER(
	REVERSE('Why does my cat look at me with such hatred?')
);

-- what does this print out?
SELECT 
	REPLACE
(
CONCAT('I', ' ', 'like', ' ', 'cats'),
' ',
'_'
);
-- 'prints 'I_like_cats'
-- the idea is to replace all spaces with underscores

-- replace spaces in book titles with '->'
-- name column title

-- need to make books database and table again
CREATE DATABASE book_shop;
USE book_shop;
CREATE TABLE books 
	(
		book_id INT AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);
SELECT REPLACE (title, ' ', '->') AS title FROM books;

-- print the last name of every author with column name forwards
-- print each last name backwards with column name backwards
SELECT author_lname AS forwards, REVERSE(author_lname) AS backwards FROM books;

-- generate a table with first and last name of author in all caps, called full name in caps
SELECT UPPER (
	CONCAT (author_fname, ' ', author_lname)
) AS 'full name in caps' FROM books;


-- take title of each book, release year of each book, and combine them into a sentence
SELECT(
	CONCAT(title, ' was released in ', released_year)
)
AS blurb FROM books;

-- print book title and then the length of each title as character count
SELECT title, CHAR_LENGTH(title) AS 'character count' FROM books;

-- print 3 columns: short_title as 10 characters from name, then 3 dots, author name as last name, first name, and how many books are in stock
SELECT CONCAT(
SUBSTRING(title, 1, 10), '...') AS short_title,
CONCAT_WS(', ', author_lname, author_fname) AS author,
CONCAT(stock_quantity, ' in stock') AS quantity FROM books;

-- THE SOLUTIONS
SELECT REVERSE(UPPER('Why does my cat look at me with such hatred?'));
 
SELECT REPLACE(title, ' ', '->') AS title FROM books;
 
SELECT 
    author_lname AS forwards, REVERSE(author_lname) AS backwards
FROM
    books;
    
 
SELECT UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps' FROM books;
 
 
SELECT CONCAT(title, ' was released in ', released_year) AS blurb FROM books;
 
SELECT title, CHAR_LENGTH(title) AS character_count FROM books;
 
SELECT 
    CONCAT(SUBSTR(title, 1, 10), '...') AS short_title,
    CONCAT(author_lname, ',', author_fname) AS author,
    CONCAT(stock_quantity, ' in stock') AS quantity
FROM
    books;