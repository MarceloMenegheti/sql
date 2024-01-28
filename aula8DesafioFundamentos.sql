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
