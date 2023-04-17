SELECT book_id, title, released_year FROM books;
-- this will return 25 rows

SELECT book_id, title, released_year FROM books LIMIT 5;
-- this will return the first 5 results in the order they were entered in database

SELECT book_id, title, released_year FROM books ORDER BY released_year LIMIT 5;
-- first 5 results ordered by release year. Order by and limit work really well together

SELECT book_id, title, released_year FROM books ORDER BY released_year LIMIT 0, 5;
-- returns from starting number, and then the number of rows you want to return

SELECT book_id, title, released_year FROM books ORDER BY released_year LIMIT 3, 10;

SELECT book_id, title, released_year FROM books ORDER BY released_year LIMIT 40;
-- even though there are not 40 rows in the table, there will be no error from this. It will just print all rows it can