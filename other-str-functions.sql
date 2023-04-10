-- INSERT
-- 6 is the position to insert at, 0 means replace no characters
SELECT INSERT ('Hello Bobby', 6, 0, 'There');
-- replace 4 characters
SELECT INSERT ('Hello Bobby', 6, 4, 'There');

-- LEFT
-- gets 3 leftmost characters
-- prints 'omg'
SELECT LEFT ('omhgagalol!', 3);
SELECT LEFT (author_lname, 1) FROM books;
-- prints first character of each last name

-- RIGHT
-- gets 4 rightmost characters
-- prints 'lol!'
SELECT RIGHT ('omghahalol!', 4);

-- REPEAT
-- repeats string 4 times
-- prints 'hahahaha'
SELECT REPEAT ('ha', 4);

-- TRIM
-- trims leading and trailing spaces
-- prints 'boston'
SELECT TRIM ('      boston ');

-- does NOT trim spaces between words
-- returns 'san antonio'
SELECT TRIM ('     san antonio   ');

-- removes leading '.'
-- prints 'san antonio..'
-- SELECT TRIM (LEADING '.' FROM '......san antonio..');

-- removes trailing '.'
-- prints '......san antonio'
-- SELECT TRIM (TRAILING '.' FROM '......san antonio..');

-- removes leading and trailing '.'
-- prints 'san antonio'
-- SELECT TRIM (BOTH '.' FROM '......san antonio..');
