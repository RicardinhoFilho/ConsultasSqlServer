select * from  TABELA_DE_CLIENTES;

/*Limite total de cada estado*/
select ESTADO, Sum(LIMITE_DE_CREDITO) from  TABELA_DE_CLIENTES group by ESTADO;

/*Query inválida pois não podemos acusar um filtro para o árias*/
/*select ESTADO, Sum(LIMITE_DE_CREDITO) as LimiteTotal from  TABELA_DE_CLIENTES where LimiteTotal>80000 group by ESTADO  ;*/
/*A solução é utilizarmos o comando having*/
select ESTADO, Sum(LIMITE_DE_CREDITO) as LimiteTotal from  TABELA_DE_CLIENTES group by ESTADO having SUM(LIMITE_DE_CREDITO)>=80000;

select EMBALAGEM, Sum(PRECO_DE_LISTA)as TotPreco, MAX(PRECO_DE_LISTA) as Maximo, MIN(PRECO_DE_LISTA)as Minimo from TABELA_DE_PRODUTOS group by EMBALAGEM

/*Filtrando preco máximo da lista, preco minimo e soma de todos os preços, aplicando filtro que o minimo deve ser menor que 5 e/ou o maximo deve ser maior que 10 e a soma de todos os precos agrupados pelaembalagem deve ser maior que 50000*/
select EMBALAGEM, Sum(PRECO_DE_LISTA)as TotPreco, MAX(PRECO_DE_LISTA) as Maximo, MIN(PRECO_DE_LISTA)as Minimo from TABELA_DE_PRODUTOS group by EMBALAGEM having MIN(PRECO_DE_LISTA) > 5 or Max(PRECO_DE_LISTA) > 10 and Sum(PRECO_DE_LISTA) > 5000;



/*Quais são os clientes que fizeram mais de 2000 compras em 2016?*/

SELECT CPF, COUNT(*) FROM [NOTAS_FISCAIS] 
WHERE YEAR(DATA_VENDA) = '2016'
GROUP BY CPF 
HAVING COUNT(*) > 2000;














