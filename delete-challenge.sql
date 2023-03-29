-- Delete all 4 year old cats
DELETE FROM cats
WHERE age = 4;
SELECT * FROM cats;

-- Delete cats whose cat_id = age
DELETE FROM cats
WHERE cat_id = age;

-- Delete all cats, but don’t drop table
DELETE FROM cats;