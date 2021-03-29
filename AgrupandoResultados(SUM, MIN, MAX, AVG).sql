Use Sucos_Vendas;

select * from TABELA_DE_CLIENTES;

/*Filtrando o estado e o limite de credito de cada cliente*/
select ESTADO, LIMITE_DE_CREDITO from TABELA_DE_CLIENTES;


/*Agrupando o limite de crédipo por estado*/
select ESTADO, Sum(LIMITE_DE_CREDITO) from TABELA_DE_CLIENTES group by ESTADO; 

/*Agrupando a média de crédipo por estado*/
select ESTADO, AVG(LIMITE_DE_CREDITO) from TABELA_DE_CLIENTES group by ESTADO;

/*Selecionando soma de crédios de todos os clientes de São Paulo agrupado pelo bairro e ordenado pela some que eu atribui um árias SomaLimite*/
select BAIRRO, SUM(LIMITE_DE_CREDITO) as SomaLimite from TABELA_DE_CLIENTES where ESTADO = 'SP' group by BAIRRO order by SomaLimite Desc;

/*-----------------------------------------------------------------------------------*/
select * from TABELA_DE_PRODUTOS;

/*Selecionando os produtos mais caros agrupados por Embalagem*/
select EMBALAGEM, MAX(PRECO_DE_LISTA) from TABELA_DE_PRODUTOS group by EMBALAGEM;

/*Selecionando os produtos mais baratos agrupados por Embalagem*/
select EMBALAGEM, MIN(PRECO_DE_LISTA) from TABELA_DE_PRODUTOS group by EMBALAGEM;

/*Contando quantos produtos tenho em cada embalagem*/
select EMBALAGEM, Count(*) from TABELA_DE_PRODUTOS group by EMBALAGEM;

/*Contando quantos produtos tenho em cada embalagem*/
select EMBALAGEM, Count(*) from TABELA_DE_PRODUTOS group by EMBALAGEM;

/*-----------------------------------------------------------------------------------*/

/*Aproveitando o exercício anterior, quantos itens de venda existem com a maior quantidade de venda para o produto '1101035'?*/

select MAX(QUANTIDADE) from ITENS_NOTAS_FISCAIS where CODIGO_DO_PRODUTO = '1101035';/*99 produtos*/

select Count(*) from ITENS_NOTAS_FISCAIS where CODIGO_DO_PRODUTO = '1101035' and QUANTIDADE = 99;/*71 ocorrencias/





