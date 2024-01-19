-----------------------------------------LIKE - NOT LIKE
SELECT *
FROM person.Person
WHERE FirstName like 'ovi%';

SELECT *
FROM person.Person
WHERE FirstName like '%ta';

SELECT *
FROM person.Person
WHERE FirstName like '%y_';

SELECT *
FROM person.Person
WHERE FirstName NOT like '_y%';