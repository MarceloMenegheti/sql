-----------------------------------------TOP

SELECT TOP 10 *
FROM production.product;

    --- aula 10***
/*3 - Eu quero saber qual foram as 10 vendas que no total tiveram os maiores valores 
de vendas (lineTotal) por produto do maior valor para o menor*/

SELECT *
FROM Sales.SalesOrderDetail;

SELECT TOP 10 ProductID, SUM(LineTotal) AS "SOMA"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(LineTotal) DESC;