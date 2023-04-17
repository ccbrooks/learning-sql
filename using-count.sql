SELECT COUNT(*) FROM books;
-- count rows in books

SELECT title, author_fname, COUNT(*) FROM books;
-- the video says this is incompatible, but my sql works with this command fine

SELECT COUNT(author_fname) FROM books;
-- count all of the author's names in the column, NULL will not be counted

INSERT INTO books () VALUES ();
INSERT INTO books () VALUES ();

SELECT COUNT (*) FROM books;
-- returns 27

SELECT COUNT(author_fname) FROM books;
-- returns 25, 2 of the author's names are NULL and do not count

SELECT COUNT (DISTINCT author_fname) FROM books;
-- count how many distinct author's names are in books
-- gives me an error
-- ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DISTINCT author_fname) FROM books' at line 1
-- count CANNOT have a space like this!

-- DO THIS!
SELECT COUNT(DISTINCT author_fname) FROM books;
-- returns 12

SELECT COUNT(DISTINCT released_year) FROM books;
-- returns 16

SELECT COUNT(DISTINCT author_lname) FROM books;
-- returns 11

SELECT title FROM books WHERE title LIKE '%the%';
-- returns all books with titles that contain 'the'

SELECT COUNT(*) FROM books WHERE title LIKE '%the%';
-- returns a count of all books that contain 'the'
-- returns 8