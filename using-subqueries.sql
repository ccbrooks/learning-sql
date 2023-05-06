-- one way to find the title of the longest book
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;

-- subquery
SELECT * FROM books 
WHERE pages = (SELECT MIN(pages) FROM books);

-- subquery
SELECT * FROM books 
WHERE pages = (SELECT MAX(pages) FROM books);

-- add another book with 634 pages
-- INSERT INTO books(title, pages) VALUES('my life in words', 634);

SELECT * FROM books 
WHERE pages = (SELECT MAX(pages) FROM books);

SELECT MIN(released_year) FROM books;

SELECT title, released_year FROM books
WHERE released_year = (SELECT MIN(released_year) FROM books);
-- returns both books with max page count