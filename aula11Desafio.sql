
# SQL Aula 11 DESAFIO GROUP BY 

/*1 - eu preciso saber quantas pessoas tem o mesmo MiddleName agrupadas 
por MiddleName
*/

SELECT *
FROM Person.Person;
--COUNT	MiddleName GROUP BY MiddleName

SELECT DISTINCT(MiddleName),COUNT(MiddleName) AS "QUANTIDADE"
FROM Person.Person
GROUP BY MiddleName;


/*2 - Eu preciso saber em media qual é a quantidade(quantity) que cada produto 
é vendido na loja */

SELECT *
FROM Sales.SalesOrderDetail
--AVG (quantity)

SELECT ProductID, AVG(OrderQty) AS "MEDIA"
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

/*3 - Eu quero saber qual foram as 10 vendas que no total tiveram os maiores valores 
de vendas (lineTotal) por produto do maior valor para o menor*/

SELECT *
FROM Sales.SalesOrderDetail;

SELECT TOP 10 ProductID, SUM(LineTotal) AS "SOMA"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(LineTotal) DESC;

/*4 - Eu preciso saber quantos produtos e qual e quantidade media de produtos temos 
cadastrados nas nossas ordem de serviço (WorkOrder), agrupados por productID */

SELECT *
FROM Production.WorkOrder

SELECT ProductID,COUNT( ProductID) "CONTAGEM", AVG(OrderQty) AS "MEDIA"
FROM Production.WorkOrder
GROUP BY ProductID;