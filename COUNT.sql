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