-----------------------------------------ORDER BY - ASC/DESC

SELECT *
FROM person.person
ORDER BY FirstName ASC;

SELECT *
FROM person.person
ORDER BY FirstName DESC;


SELECT FirstName,LastName
FROM person.person
ORDER BY FirstName ASC,LastName DESC;


SELECT  FirstName,MiddleName,LastName
FROM person.person
ORDER BY MiddleName DESC;

--DESAFIO 1 
/*Obter p ProductID dos 10 produtos mais caros cadastrados no sistema
listando mais caro para o mais barato.*/
SELECT TOP 10 ProductID,Name,listPrice
FROM production.product
ORDER BY listPrice DESC;

--DESAFIO 2
/*Obter o nome e numero do produto dos produtos que tem o PorductID
entre 1~4*/
SELECT TOP 4 Name,productNumber
FROM production.product
ORDER BY ProductID;
