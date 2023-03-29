SELECT REPLACE ('Hello World', 'Hell', '%$#@');
-- prints '%$#@o World'

SELECT REPLACE('cheese bread coffee milk', ' ', ' and ');
-- prints 'cheese and bread and coffee and milk'

-- REPLACE is case sensitive!
SELECT REPLACE('I am Chloe!', 'chloe', 'Mrs. Brooks');
-- doesn't throw an error, but also doesn't do the replace
-- prints 'I am Chloe!'

SELECT REPLACE('I am Chloe!', 'Chloe', 'Mrs. Brooks');
-- prints 'I am Mrs. Brooks!'

-- books -> replace all spaces with dashes in titles
SELECT REPLACE(title, ' ', '-') FROM books;