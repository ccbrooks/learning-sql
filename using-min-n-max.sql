-- find the minimum released_year
SELECT MIN(released_year) FROM books;

-- select most pages
SELECT MAX(pages) FROM books;

-- find "lowest in alphabet" author last name - A, B, C...
SELECT MIN(author_lname) FROM books;

-- find "highest in alphabet" author last name - Z, Y, X...
SELECT MAX(author_lname) FROM books;

-- find the title of the longest book
SELECT MAX(pages), title FROM books;
-- says it doesn't work in tutorial, ERROR 1140, but works on mine