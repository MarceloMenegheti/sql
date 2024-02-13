/* SQL Aula 13 'AS'*/

--1 encontrar o FirstName e LastName da tabela Person.person e renomealas.
SELECT * FROM Person.Person;
SELECT FirstName AS "Nome",LastName AS "Sobrenome"
FROM Person.Person;

--2 encontrar o UnitPrice da tabela Sales.SalesOrderDetail e renomealas.
SELECT	* FROM Sales.SalesOrderDetail;
SELECT	UnitPrice AS "Preço Unitario" FROM Sales.SalesOrderDetail;

--3 encontrar o ProductNumber da tabela Production.Product e renomealas.
SELECT * FROM Production.Product;
SELECT ProductNumber AS "Numero do Produto" FROM Production.Product