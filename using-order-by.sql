-- data is in an "order" based on order data is inserted into the database
SELECT book_id, title, author_lname FROM books;

-- order by comes AFTER the select statement
SELECT author_lname FROM books ORDER BY author_lname;

-- alphabetized by last name
SELECT book_id, author_fname, author_lname FROM books ORDER BY author_lname;

-- alphabetized by first name; NULL values come first!
SELECT book_id, author_fname, author_lname FROM books ORDER BY author_fname;

-- selects by first name in descending order
SELECT book_id, author_fname, author_lname FROM books ORDER BY author_fname DESC;

SELECT pages, title FROM books;

SELECT pages, title FROM books ORDER BY pages;
-- you do not need to select a column to sort by it
SELECT pages, title FROM books ORDER BY released_year;

-- order by when using a number means to order by the # selected column
-- this will order by author_fname;
SELECT title, author_fname, author_lname FROM books ORDER BY 2;

-- sort by one column at a time in the order they are provided
-- sort by last name, and then sort by first name
SELECT author_fname, author_lname FROM books ORDER BY author_lname, author_fname;
-- good for use with duplicates

SELECT author_fname, author_lname FROM books ORDER BY author_lname, author_fname DESC;

-- you can order by columns you make
SELECT CONCAT(author_fname, ' ', author_lname) AS author FROM books ORDER BY author;