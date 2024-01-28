#SQL aula 9 MIN MAX SUM AVG

# funções de agregração basicamento agregam ou combinam 
#dados de uma tabela em 1 resultado só


SELECT TOP 10 SUM(linetotal) AS "Soma"
FROM Sales.salesOrderDetail

SELECT TOP 10 MIN(linetotal) AS "Minimo"
FROM Sales.salesOrderDetail

SELECT TOP 10 MAX(linetotal) AS "Maximo"
FROM Sales.salesOrderDetail

SELECT TOP 10 AVG(linetotal) AS "Media"
FROM Sales.salesOrderDetail