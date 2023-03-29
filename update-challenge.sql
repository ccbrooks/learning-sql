-- In the cats table, change Jackson’s name to “Jack”
UPDATE cats SET name = 'Jack'
WHERE name = 'Jackson';

-- Change Ringo’s breed to “British Shorthair”
UPDATE cats SET breed = 'British Shorthair'
WHERE name = 'Ringo';

-- Change both Maine Coon’s ages to be 12
UPDATE cats SET age = 12
WHERE breed = 'Maine Coon';