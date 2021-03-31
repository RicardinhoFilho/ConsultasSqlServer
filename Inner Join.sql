select * from TABELA_DE_VENDEDORES;
select * from NOTAS_FISCAIS;

/*Juntando tablea de vendedores com tabelas de notas fiscais pelo campo incomum, neste caso "Matricula"*/
select * from TABELA_DE_VENDEDORES inner join NOTAS_FISCAIS on 
TABELA_DE_VENDEDORES.MATRICULA = NOTAS_FISCAIS.MATRICULA;

/*Estamos selecionando a matricula, o nome, e a soma de todas as notas fiscais emitidas 
para cada um de nossos vendedores, percebam que no campo Nome não defini a coluna, pois este campo não é
incomun, pertence somente à tabela Vendedores*/

select TABELA_DE_VENDEDORES.MATRICULA, NOME, count(*) from TABELA_DE_VENDEDORES inner join 
NOTAS_FISCAIS on 
TABELA_DE_VENDEDORES.MATRICULA = NOTAS_FISCAIS.MATRICULA 
group by TABELA_DE_VENDEDORES.MATRICULA, TABELA_DE_VENDEDORES.NOME;

/*Como podemos perceber nossa consulta ficou grande e talvez um pouco ruim de ser entendida, 
para isso utiçlizaremos áreas, simplificando nossa consulta, chamamos a Tabela de vendedores de A e a tabela de 
Notas Fistcais de B*/

select A.MATRICULA, NOME, count(*) from TABELA_DE_VENDEDORES as A inner join 
NOTAS_FISCAIS as B on 
A.MATRICULA = B.MATRICULA 
group by A.MATRICULA, A.NOME;

/*Agora faremos a mesma consulta, entretanto separaremos o ano das notas emitidas: */
select A.MATRICULA, NOME, year(B.DATA_VENDA), count(*) from TABELA_DE_VENDEDORES as A inner join 
NOTAS_FISCAIS as B on 
A.MATRICULA = B.MATRICULA 
group by A.MATRICULA, A.NOME,year(B.DATA_VENDA) 

/*Agora faremos a mesma consulta, entretanto também iremos ordenar, para nosso resultado da consulta ficar
um tanbto quanto mais organizado.*/
select A.MATRICULA, NOME, year(B.DATA_VENDA), count(*) from TABELA_DE_VENDEDORES as A inner join 
NOTAS_FISCAIS as B on 
A.MATRICULA = B.MATRICULA 
group by A.MATRICULA, A.NOME,year(B.DATA_VENDA) 
order by year(B.DATA_VENDA);

/*Obtenha o faturamento anual da empresa. 
Leve em consideração que o valor financeiro das vendas consiste em multiplicar a quantidade pelo preço.
*/

/*1- consulto tabelas para analisar qual é o campo de igualdade*/
select * from ITENS_NOTAS_FISCAIS;
select * from NOTAS_FISCAIS;

/*2- aplico o inner join*/
select * from NOTAS_FISCAIS A inner join
ITENS_NOTAS_FISCAIS B on A.NUMERO = B.NUMERO; 

/*3- Resolução final, selecionando a data de venda, e a soma da quantidade * preco, agrupando pelo ano*/
select year(DATA_VENDA), sum(B.QUANTIDADE * B.PRECO) as TotalVenda
from NOTAS_FISCAIS A inner join
ITENS_NOTAS_FISCAIS B on A.NUMERO = B.NUMERO group by year(DATA_VENDA); 

