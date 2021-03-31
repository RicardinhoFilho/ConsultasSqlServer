/*S� podemos utilizar union em colunas do mesmo tipo*/

select * from TABELA_DE_CLIENTES;

select * from TABELA_DE_VENDEDORES;

select  CPF, Nome, BAIRRO from TABELA_DE_CLIENTES
union 
select  MATRICULA, Nome, Bairro from TABELA_DE_VENDEDORES;
/*Percebam que acima estamos fazendo as duas consultas e apresentando as tabelas unificadas

00235	M�rcio Almeida Silva	Tijuca
00236	Cl�udia Morais	Jardins
00237	Roberta Martins	Copacabana
00238	Pericles Alves	Santo Amaro
1471156710	�rica Carvalho	Jardins
19290992743	Fernando Cavalcante	�gua Santa
2600586709	C�sar Teixeira	Tijuca
3623344710	Marcos Nougeuira	Inhauma
492472718	Eduardo Jorge	Tijuca
50534475787	Abel Silva 	Humait�
5576228758	Petra Oliveira	Lapa
5648641702	Paulo C�sar Mattos	Tijuca
5840119709	Gabriel Araujo	Santo Amaro
7771579779	Marcelo Mattos	Br�s
8502682733	Valdeci da Silva	Jardins
8719655770	Carlos Eduardo	Jardins
9283760794	Edson Meilelles	Cidade Nova
94387575700	Walber Lontra	Piedade
95939180787	F�bio Carvalho	Barra da Tijuca

*/

select  BAIRRO from TABELA_DE_CLIENTES
union  
select  Bairro from TABELA_DE_VENDEDORES;
/*Neste exemplo acima utilzando somente union recemos como retorno todos os registros aplicando distinct
�gua Santa
Barra da Tijuca
Br�s
Cidade Nova
Copacabana
Humait�
Inhauma
Jardins
Lapa
Piedade
Santo Amaro
Tijuca
*/

select  BAIRRO from TABELA_DE_CLIENTES
union all 
select  Bairro from TABELA_DE_VENDEDORES;
/*Se utilizarmos all, retiramos o distinct, nos retorno dados repetidos tamb�m:

Jardins
�gua Santa
Tijuca
Inhauma
Tijuca
Humait�
Lapa
Tijuca
Santo Amaro
Br�s
Jardins
Jardins
Cidade Nova
Piedade
Barra da Tijuca
Tijuca
Jardins
Copacabana
Santo Amaro

*/