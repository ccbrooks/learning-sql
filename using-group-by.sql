SELECT author_lname FROM  books
GROUP BY author_lname;
-- every author's name appears once, but out of user view, the groups will be made by autjor names

SELECT author_lname, COUNT(*) FROM books
GROUP BY author_lname;
-- shows count in each group

SELECT author_lname, COUNT(*) AS books_written FROM books
GROUP BY author_lname ORDER BY books_written DESC;

SELECT released_yeaar FROM  books;

SELECT released_yeaar FROM  books
GROUP BY released_year;

SELECT released_year, COUNT(*) FROM books
GROUP BY released_year;

SELECT * FROM books GROUP BY author_lname;
-- can't do this
-- ERROR 1055 (42000)

SELECT author_lname, title FROM books
GROUP BY author_lname;
-- cannot do this either; title is not author_lname
-- ERROR 1055 (42000)