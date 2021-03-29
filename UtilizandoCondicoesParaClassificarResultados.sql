select * from TABELA_DE_PRODUTOS;

/*Atribuindo definição se baseando no valor dos produtos*/
select NOME_DO_PRODUTO, case when PRECO_DE_LISTA >=12 THEN 'Produto Caro' when PRECO_DE_LISTA >= 7 and 
PRECO_DE_LISTA < 12 then 'Produto em conta' else 'Produto Barato' end as Definicao
from TABELA_DE_PRODUTOS ;

/*Número total d enotas fiscais*/
select count(*) from NOTAS_FISCAIS;

/*Vendas por dia*/
select DATA_VENDA,count(*) from NOTAS_FISCAIS group by DATA_VENDA;


/*Vendas por Ano*/
select Year(DATA_VENDA),count(*) from NOTAS_FISCAIS group by year(DATA_VENDA);


/*Veja o ano de nascimento dos clientes e classifique-os como: nascidos antes de 1990 são adultos, 
nascidos entre 1990 e 1995 são jovens e nascidos depois de 1995 são crianças. 
Liste o nome do cliente e esta classificação.*/

select * from TABELA_DE_CLIENTES;

select NOME, IDADE,DATA_DE_NASCIMENTO,CASE WHEN (YEAR(DATA_DE_NASCIMENTO)< 1990) then 'Adulto' 
WHEN (YEAR(DATA_DE_NASCIMENTO) between 1990 and  1995) then 'Joven' 
else 'Crianças' end
from TABELA_DE_CLIENTES;


/*Between os que são menores ou igual e maiores ou igual*/




















