
select * from TABELA_DE_VENDEDORES;
select * from TABELA_DE_CLIENTES;

select A.NOME, A.BAIRRO, B.NOME from TABELA_DE_VENDEDORES A inner join TABELA_DE_CLIENTES B 
on A.BAIRRO = B.BAIRRO;
/*Cl�udia Morais	Jardins	�rica Carvalho
M�rcio Almeida Silva	Tijuca	C�sar Teixeira
M�rcio Almeida Silva	Tijuca	Eduardo Jorge
M�rcio Almeida Silva	Tijuca	Paulo C�sar Mattos
Pericles Alves	Santo Amaro	Gabriel Araujo
Cl�udia Morais	Jardins	Valdeci da Silva
Cl�udia Morais	Jardins	Carlos Eduardo
Temos 15 clientes, entretanto s� 7 que moram no mesmo bairro que nosso vendedores atendem
*/

/*Agora irei utilizar o left join  para mostrar todos campos, iondep�ndentemente se se conectam ou n�o*/
select A.NOME, A.BAIRRO, B.NOME from TABELA_DE_VENDEDORES A left join TABELA_DE_CLIENTES B 
on A.BAIRRO = B.BAIRRO;
/*M�rcio Almeida Silva	Tijuca	C�sar Teixeira
M�rcio Almeida Silva	Tijuca	Eduardo Jorge
M�rcio Almeida Silva	Tijuca	Paulo C�sar Mattos
Cl�udia Morais	Jardins	�rica Carvalho
Cl�udia Morais	Jardins	Valdeci da Silva
Cl�udia Morais	Jardins	Carlos Eduardo
Roberta Martins	Copacabana	NULL
Pericles Alves	Santo Amaro	Gabriel Araujo

Perceba que agora temos uma vis�os sobre a roberta martins, que reside em copacabana, 
entretanto nenhum cliente resite em copacabana
*/

/*Agora vamos utilizar right join para visualizaer os cliente que n�o residem no mesmo bairro que os vendedores*/
select A.NOME, A.BAIRRO, B.NOME from TABELA_DE_VENDEDORES A right join TABELA_DE_CLIENTES B 
on A.BAIRRO = B.BAIRRO;

/*Resultado
Cl�udia Morais	Jardins	�rica Carvalho
NULL	NULL	Fernando Cavalcante
M�rcio Almeida Silva	Tijuca	C�sar Teixeira
NULL	NULL	Marcos Nougeuira
M�rcio Almeida Silva	Tijuca	Eduardo Jorge
NULL	NULL	Abel Silva 
NULL	NULL	Petra Oliveira
M�rcio Almeida Silva	Tijuca	Paulo C�sar Mattos
Pericles Alves	Santo Amaro	Gabriel Araujo
NULL	NULL	Marcelo Mattos
Cl�udia Morais	Jardins	Valdeci da Silva
Cl�udia Morais	Jardins	Carlos Eduardo
NULL	NULL	Edson Meilelles
NULL	NULL	Walber Lontra
NULL	NULL	F�bio Carvalho

Perceba que temos muitos clientes que n�o residem no  mesmo lugar que os vendedores. Entretanto a roberta, 
vendedora que n�o coincide em nenhum bairro dos clientes, n�o aparece nessa consulta, para isso iremos utiliozar
o full join, que nos retorna todos os campos iindependentemente se est� ligado ou n�o
*/

/*Exemplo de full join:*/

select A.NOME, A.BAIRRO, B.NOME from TABELA_DE_VENDEDORES A full join TABELA_DE_CLIENTES B 
on A.BAIRRO = B.BAIRRO;

/*Resultado:
M�rcio Almeida Silva	Tijuca	C�sar Teixeira
M�rcio Almeida Silva	Tijuca	Eduardo Jorge
M�rcio Almeida Silva	Tijuca	Paulo C�sar Mattos
Cl�udia Morais	Jardins	�rica Carvalho
Cl�udia Morais	Jardins	Valdeci da Silva
Cl�udia Morais	Jardins	Carlos Eduardo
Roberta Martins	Copacabana	NULL
Pericles Alves	Santo Amaro	Gabriel Araujo
NULL	NULL	Fernando Cavalcante
NULL	NULL	Marcos Nougeuira
NULL	NULL	Abel Silva 
NULL	NULL	Petra Oliveira
NULL	NULL	Marcelo Mattos
NULL	NULL	Edson Meilelles
NULL	NULL	Walber Lontra
NULL	NULL	F�bio Carvalho

Perceba que todos os campos aparecem, tanto vendedores quanto clientes, 
entretanto quando os bairros n�o coincidem o campo que deveria coincidir aparece null!


*/

select A.NOME, A.BAIRRO, B.NOME from TABELA_DE_VENDEDORES A cross join TABELA_DE_CLIENTES B;

/*No exemplo acima temos um cross join(n�o utilizamos o on, pois n�o nos preocupamos com igualdade)
Serve para fazermos uma an�lise combinat�ria entre as tabelas: 

Cl�udia Morais	Jardins	Fernando Cavalcante
Cl�udia Morais	Jardins	C�sar Teixeira
Cl�udia Morais	Jardins	Marcos Nougeuira
Cl�udia Morais	Jardins	Eduardo Jorge
Cl�udia Morais	Jardins	Abel Silva 
Cl�udia Morais	Jardins	Petra Oliveira
Cl�udia Morais	Jardins	Paulo C�sar Mattos
Cl�udia Morais	Jardins	Gabriel Araujo
Cl�udia Morais	Jardins	Marcelo Mattos
Cl�udia Morais	Jardins	Valdeci da Silva
Cl�udia Morais	Jardins	Carlos Eduardo
Cl�udia Morais	Jardins	Edson Meilelles
Cl�udia Morais	Jardins	Walber Lontra
Cl�udia Morais	Jardins	F�bio Carvalho
Roberta Martins	Copacabana	�rica Carvalho
Roberta Martins	Copacabana	Fernando Cavalcante
Roberta Martins	Copacabana	C�sar Teixeira
Roberta Martins	Copacabana	Marcos Nougeuira
Roberta Martins	Copacabana	Eduardo Jorge
Roberta Martins	Copacabana	Abel Silva 
Roberta Martins	Copacabana	Petra Oliveira
Roberta Martins	Copacabana	Paulo C�sar Mattos
Roberta Martins	Copacabana	Gabriel Araujo
Roberta Martins	Copacabana	Marcelo Mattos
Roberta Martins	Copacabana	Valdeci da Silva
Roberta Martins	Copacabana	Carlos Eduardo
Roberta Martins	Copacabana	Edson Meilelles
Roberta Martins	Copacabana	Walber Lontra
Roberta Martins	Copacabana	F�bio Carvalho
Pericles Alves	Santo Amaro	�rica Carvalho
Pericles Alves	Santo Amaro	Fernando Cavalcante
Pericles Alves	Santo Amaro	C�sar Teixeira
Pericles Alves	Santo Amaro	Marcos Nougeuira
Pericles Alves	Santo Amaro	Eduardo Jorge
Pericles Alves	Santo Amaro	Abel Silva 
Pericles Alves	Santo Amaro	Petra Oliveira
Pericles Alves	Santo Amaro	Paulo C�sar Mattos
Pericles Alves	Santo Amaro	Gabriel Araujo
Pericles Alves	Santo Amaro	Marcelo Mattos
Pericles Alves	Santo Amaro	Valdeci da Silva
Pericles Alves	Santo Amaro	Carlos Eduardo
Pericles Alves	Santo Amaro	Edson Meilelles
Pericles Alves	Santo Amaro	Walber Lontra
Pericles Alves	Santo Amaro	F�bio Carvalho


*/