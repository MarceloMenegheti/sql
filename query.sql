SELECT DISTINCT LastName 
FROM person.person;


-----------------------------------------CONDITION

--buscando uma pessoa especifica.
SELECT *
FROM person.person
WHERE LastName = 'miller' and FirstName = 'anna';

--buscando todos os produtos de cor azul ou preto.
SELECT *
FROM production.product
WHERE color ='blue' or color ='black';

--DESAFIO 1
/*a equipe de produção de produtos precisa do nome de todas as peças
que pesam mais que 500kg mas não mais que 700kg para inspeção.*/
SELECT Name
FROM production.product
WHERE weight >=500.00 and weight <=700.00;

-- DESAFIO 2
/*foi pedido pelo marketing um relação de todos os empregados(employees)
que são casados(single=solteiro,married=casado) e são asalariados(salaried).*/
SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' and SalariedFlag = 1;


-- DESAFIO 3
/*um usuario chamado Peter Krebs esta devendo um pagamento, consiga o email
dele para que possamos enviar uma cobrança!*/
SELECT *
FROM person.person
WHERE firstName ='Peter' and LastName = 'Krebs';

SELECT EmailAddress
FROM person.emailAddress
WHERE BusinessEntityID ='26';

-----------------------------------------COUNT

--DESAFIO 1 
/* eu quero saber quanos produtos temos cadastrados em nossas tabelas de
produtos(production.product)*/
SELECT COUNT(ProductID)
FROM production.product;

--DESAFIO 2
/* euquero saber quantos tamanhos de produtos temos cadastrados em nossa
tabela(production.product)*/
SELECT COUNT(Size)
FROM production.product;

--DESAFIO 3
/*quero saber quantos tamanhos de produtos eu tenho cadastrados em nossa 
tabela(production.product)*/
SELECT COUNT(DISTINCT Size)
FROM production.product;

-----------------------------------------TOP

SELECT TOP 10 *
FROM production.product;

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

-----------------------------------------BETWEEN -NOT BETWEEN

SELECT *
FROM production.product
WHERE ListPrice between 1000 and 1500;

SELECT *
FROM production.product
WHERE ListPrice NOT between 1000 and 1500;

SELECT *
FROM HumanResources.Employee
WHERE HireDate between '2009/01/01' and '2010/01/01'
ORDER BY HireDate;

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
WHERE FirstName like '_y%';

-----------------------------------------DESAFIOS SOBRE OS FUNDAMENTOS

--DESAFIO 1
/*quantos produtos temos cadastrados no sistema que custam maus 
que 1500 dollares?*/
SELECT COUNT(listprice)
FROM Production.Product
WHERE ListPrice > 1500.00;

--DESAFIO 2
/* quantas pessoas temos com o sobrenome que incia com a letra p?*/
SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName like 'p%';

--DESAFIO 3
/*   Em quantas cidades unicas estão cadastrados nossos clientes?*/
SELECT COUNT(DISTINCT City)
FROM Person.Address;

--DESAFIO 4
/*   quais são as cidades unicas estão cadastrados nossos clientes?*/
SELECT DISTINCT(City)
FROM Person.Address;

--DESAFIO 4
/* Quantos produtos vermelhos tem os preços entre 500 a 1000 Dolares?*/
SELECT COUNT(*)
FROM Production.Product
WHERE color = 'red' and ListPrice between 500.00 and 1000;

--DESAFIO 5
/*Quantos produtos cadastrados tem a palavra 'road' no nome dele?*/
SELECT COUNT(*)
FROM Production.Product
WHERE name like '%road%';
