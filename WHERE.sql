
-----------------------------------------conditionals

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