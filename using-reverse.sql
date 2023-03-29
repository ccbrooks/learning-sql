-- general use
-- SELECT REVERSE (<element>);

SELECT REVERSE ('Hello World');
-- prints 'dlroW olleH'

SELECT REVERSE ('chicken nuggets');
-- prints 'steggun nekcihc'

-- reverse every author's name in books table
SELECT author_fname FROM books;
SELECT REVERSE(author_fname) FROM books;

-- make every author's name a palindrome
SELECT CONCAT(
	author_fname,
	REVERSE(author_fname)
) FROM books;