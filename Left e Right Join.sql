/*Agruando clientes com notas fiscais*/
select * from TABELA_DE_CLIENTES inner join NOTAS_FISCAIS on TABELA_DE_CLIENTES.CPF = NOTAS_FISCAIS.CPF; 

select A.NOME, count(*) from TABELA_DE_CLIENTES as A inner join NOTAS_FISCAIS as B on A.CPF = B.CPF 
group by A.NOME; 
/*Resultado: Abel Silva 	6365
		     Carlos Eduardo	6085
		     C�sar Teixeira	6226
		     Edson Meilelles	6308
		     �rica Carvalho	6310
		     Fernando Cavalcante	6240
		     Gabriel Araujo	6273
		     Marcelo Mattos	6179
		     Marcos Nougeuira	6352
		     Paulo C�sar Mattos	6379
		     Petra Oliveira	6384
		     Valdeci da Silva	6251
		     Walber Lontra	6292
Como podemos perceber obtivemos 14 resultados, entretanto na verdade temos 15 clientes: */

select Nome from TABELA_DE_CLIENTES;
/*Resultado: 
�rica Carvalho
Fernando Cavalcante
C�sar Teixeira
Marcos Nougeuira
Eduardo Jorge
Abel Silva 
Petra Oliveira
Paulo C�sar Mattos
Gabriel Araujo
Marcelo Mattos
Valdeci da Silva
Carlos Eduardo
Edson Meilelles
Walber Lontra
F�bio Carvalho

Isso significa que um de nosso clientes n�o fez nenhuma compra!
Para verificarmos isto iremos utilizar o left e o right join: 
*/

select A.NOME, count(B.DATA_VENDA) from TABELA_DE_CLIENTES as A left join NOTAS_FISCAIS as B on A.CPF = B.CPF 
group by A.NOME;

/*Resultado: 
Abel Silva 	6365
Carlos Eduardo	6085
C�sar Teixeira	6226
Edson Meilelles	6308
Eduardo Jorge	6233
�rica Carvalho	6310
F�bio Carvalho	0
Fernando Cavalcante	6240
Gabriel Araujo	6273
Marcelo Mattos	6179
Marcos Nougeuira	6352
Paulo C�sar Mattos	6379
Petra Oliveira	6384
Valdeci da Silva	6251
Walber Lontra	6292
Perceba que agora F�bio Carvalho apareceu, entretanto ele n�o teve nenhuma ocorrencia na data_venda, 
isso sgnifica que ele n�o comprou nada.

Utilizamos Left join para selecionar todos os elementos que estavam na tabela da esquerda:Tabela de Clientes
independentemente se ele estava tamb�m na tabela de Notas fiscais! Se utilizamos inner join, so aparecer� os
clientes que j� fizeram alguma compra!
*/

/*Utilizaremos o mesmo exemplo que o acima, entretanto invertendo a ordem das tabelas, 
utilizando assim o right join:*/
select A.NOME, count(B.DATA_VENDA) from NOTAS_FISCAIS as B  right join TABELA_DE_CLIENTES as A on A.CPF = B.CPF 
group by A.NOME;

/*Resultado: 
Abel Silva 	6365
Carlos Eduardo	6085
C�sar Teixeira	6226
Edson Meilelles	6308
Eduardo Jorge	6233
�rica Carvalho	6310
F�bio Carvalho	0
Fernando Cavalcante	6240
Gabriel Araujo	6273
Marcelo Mattos	6179
Marcos Nougeuira	6352
Paulo C�sar Mattos	6379
Petra Oliveira	6384
Valdeci da Silva	6251
Walber Lontra	6292

Temos o mesmo resultado!
*/