-- select all titles in books that contain 'stories'
SELECT title FROM books WHERE title LIKE '%stories%';
-- my solutions
-- find the longest title and longest page count
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;

-- print a summary containing title and year for 3 most recent books
SELECT CONCAT(title, ' - ', released_year) FROM books AS summary ORDER BY released_year DESC LIMIT 3;

-- find all books with author_lname that contain a space
SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';

-- Find 3 books with lowest stock quantity, select title, year, and stock quantity
SELECT title, released_year, stock_quantity FROM books ORDER BY stock_quantity LIMIT 3;

-- print title and author_lname sorted first by author_lname and then by title
SELECT title, author_lname FROM books ORDER BY author_lname, title;

-- sort alphabetically by last name, call it yell, make it say 'MY FAVORITE AUTHOR IS' and the author's name, in all caps
SELECT UPPER(
CONCAT('My favorite author is ', author_lname, ' ', author_fname, '!')) FROM books AS yell ORDER BY author_lname;

-- the solutions
SELECT title FROM books WHERE title LIKE '%stories%';
 
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;
 
SELECT 
    CONCAT(title, ' - ', released_year) AS summary 
FROM books ORDER BY released_year DESC LIMIT 3;
 
SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';
 
SELECT title, released_year, stock_quantity 
FROM books ORDER BY stock_quantity LIMIT 3;
 
SELECT title, author_lname 
FROM books ORDER BY author_lname, title;
 
SELECT title, author_lname 
FROM books ORDER BY 2,1;
 
SELECT
    CONCAT(
        'MY FAVORITE AUTHOR IS ',
        UPPER(author_fname),
        ' ',
        UPPER(author_lname),
        '!'
    ) AS yell
FROM books ORDER BY author_lname;