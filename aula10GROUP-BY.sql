#   SQL aula 10 GROUP BY + Desafio(intermediario)
# o GROUP BY basicamente divide o resultado da sua pesquisa em grupos
# para cada grupo você pode aplicar uma função de agregação, por exemplo:
#-calcular a soma dos itens
#-contar o numero de itens naquele grupo
/* 
    SELECT coluna1,funcaoAgregacao(coluna2)
    FROM nomeTabela
    GROUP BY coluna;
*/
SELECT *
FROM sales.salesOrderDetail

SELECT SpecialOfferID, SUM(UnitPrice) AS "SOMA"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

SELECT SpecialOfferID,UnitPrice
FROM Sales.SalesOrderDetail
WHERE SpecialOfferID = 9

SELECT *
FROM Sales.SalesOrderDetail

SELECT ProductID, COUNT(productID) AS "CONTAGEM"
FROM Sales.SalesOrderDetail
GROUP BY productID

/* vamos dizer que eu quero saber quantos nomes de cada nome temos cadastrado
nosso no banco de dados*/

SELECT * 
FROM Person.Person

SELECT DISTINCT(FirstName), COUNT(FirstName) AS "CONTAGEM"
FROM Person.Person
GROUP BY FirstName;

/*na tabela produduction.product eu quero saber a media de preço para os produtos
que são pratas(silver)
*/

SELECT * 
FROM Production.Product;
--avg price para silver

SELECT Color, AVG(listPrice) AS "MediaPrice"
FROM Production.Product
WHERE Color like 'silver'
GROUP BY Color;