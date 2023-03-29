-- get first 10 characters of title
SELECT SUBSTR(title, 1, 10) FROM books;

-- in Workbench
-- inside function runs first (substring, then concat)
SELECT CONCAT(SUBSTR(title, 1, 10), '...') AS short_title FROM books;

-- another way to write it using indentation
SELECT CONCAT(
		SUBSTR(title, 1, 10),
		'...'
	) AS short_title
FROM books;

-- create a column that is author's initials
SELECT CONCAT(
SUBSTR(author_fname, 1, 1), '.', SUBSTR(author_lname, 1, 1), '.'
) AS author_initials
FROM books;