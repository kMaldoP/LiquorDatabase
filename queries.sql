--Slect productname and quantity by distributor and category--
SELECT productname FROM inventory
WHERE distributor = '' AND category = '';
--Select productname and quantity by distributor--
SELECT productname FROM inventory
WHERE distributor = '';
--Selecting productname, Standardretail and category in ascending order omitting null values
SELECT productname, Standardretail, category FROM inventory
WHERE standardretail IS NOT NULL
ORDER BY  category,Standardretail ASC;
--grouping total items by Standardretail amount
SELECT COUNT (Standardretail)
FROM inventory
WHERE Standardretail = MONEY('number here')
--Selecting Items by category in ascending order
SELECT productname, category, Standardretail FROM inventory
ORDER BY category, Standardretail ASC
--Selecting Items by category and ascenging order ommitting null values
--Display all records with Standardretail null values by id,category,grouped by distributor
SELECT id,productname, distributor,category FROM INVENTORY
WHERE Standardretail IS NULL
ORDER BY category 

DELETE FROM inventory: