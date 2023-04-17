SELECT * FROM books WHERE title LIKE '%';
-- we'd want this to return where values are a %, but this instead returns all possible values

SELECT * FROM books WHERE title LIKE '%\%%';
-- this will find all books with a % in their title

SELECT * FROM books WHERE title LIKE '_';
-- we'd want this to return where values are an _. but this insteads returns all values that are one character long

SELECT * FROM books WHERE title LIKE '%\_%';
-- this will find all books with an _ in their title