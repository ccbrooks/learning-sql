-- general use
-- SELECT UPPER(<string>);

SELECT UPPER('Hello World');
-- prints 'HELLO WORLD'

-- general use
-- SELECT LOWER(<string>);

SELECT LOWER('Hello World');
-- prints 'hello world'

SELECT * FROM books;
SELECT UPPER(title) FROM books;

SELECT CONCAT (
'I LOVE', 
UPPER(title), ' !!!') 
FROM books;