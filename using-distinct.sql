-- returns distinct last names from books table
SELECT DISTINCT author_lname FROM books;
-- returns 11/19
-- treats different people with same last name as one person; doesn't consider them distinct

SELECT * FROM books;
SELECT DISTINCT released_year FROM books;
-- returns 16/19

-- two ways to select unique authors
SELECT DISTINCT (CONCAT (author_fname, ' ', author_lname)) FROM books;
-- solution tbookso keep distinct authors with the same last name but different first name
-- returns 12/19

SELECT DISTINCT (author_fname, author_lname) FROM books;
-- returns 12/19
SELECT DISTINCT (author_fname, author_lname, released_year) FROM books;
-- returns 12/19