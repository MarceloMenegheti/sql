/* SQL AULA 14 HAVING + DESAFIOS 
O HAVING é basicamente muito usado em junçao com o GROUP BY para filtrar resultados de um agrupamento.

de uma forma mais simples eu gosto de entender ele com basicamente um  where para agrupados.

SINTAXE 

SELECT coluna1, funcaoAgregação(coluna2)
FROM nomrTabela 
GROUP BY coluna1
HAVING condição;

A grande diferença entre HAVING E WHERE.
é que o group by é aplicado depois que os dados foram agrupados, enquanto o WHERE é aplicado antes dos dados serem agroupados.*/

/*1 - vamos dizer que queremos saber quais nomes no sistema tem um ocorrencia maior que 10 vezes*/

SELECT FirstName, COUNT(FirstName) AS "quantidade"
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) >10;

--2 - quais produtos que no total de vendas estão entre 162k a 500k
SELECT TOP 10 * FROM Sales.SalesOrderDetail;

SELECT ProductID, SUM(LineTotal) AS "Total"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING	SUM(LineTotal) BETWEEN 162000 AND 500000;

--3 quais nomes no sistemas tem um ocorrencia maior que 10 vezes, porem somente onde o titulo é 'Mr'.
SELECT * FROM Person.Person

SELECT FirstName, COUNT(FirstName) AS "QUANTIDADE"
FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING COUNT(FirstName) > 10;


/* DESAFIO 1. Estamos querendo identificar as provincias(stateProvinceID) com o maior numero de cadastros no nosso sistema, então é preciso encontrar quais provincias (stateProvinceID) estão resistradas no BD mais que 1000 vezes*/

SELECT StateProvinceID, COUNT(StateProvinceID) AS "Qty"
FROM Person.Address
GROUP BY StateProvinceID 
HAVING COUNT(StateProvinceID) > 1000;

/* DESAFIO 2. Sendo que se trata de uma multinacional os gerentes querem saber quais produtos (ProductID) não estão trazendo em media no minimo 1 milhão em total de vendas (LineTotal)*/

SELECT productID, AVG(LineTotal) AS "Qty"
FROM Sales.SalesOrderDetail
GROUP BY ProductID 
HAVING  AVG(LineTotal) < 1000000 ;