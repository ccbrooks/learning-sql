SELECT title, author_fname, author_lname FROM books WHERE author_fname = 'David';
-- returns all exact instances where the author's first name is David

SELECT title, author_fname, author_lname FROM books WHERE author_fname LIKE '%da%';
-- the percents mean that there are '0 or more characters'
-- so, this says, find a name where there are 0 or more characters before da and after da

SELECT * FROM books WHERE title LIKE '%:%';
-- returns all book titles that have a colon in them

SELECT * FROM books WHERE author_fname LIKE '____';
-- finds all author names 4 charcters long

SELECT * FROM books WHERE author_fname LIKE '_a_';
-- finds all names that are one character, an a, and then one more character

SELECT * FROM books WHERE author_fname LIKE '%n';
-- find all author names that end in an n