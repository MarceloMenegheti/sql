-----------------------------------------IN - NOT IN 
SELECT *
FROM person.Person
WHERE BusinessEntityID IN (2, 7, 13);

-- outra forma
SELECT *
FROM person.Person
WHERE BusinessEntityID = 2
OR BusinessEntityID = 7
OR BusinessEntityID = 13;