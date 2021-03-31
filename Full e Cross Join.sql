
select * from TABELA_DE_VENDEDORES;
select * from TABELA_DE_CLIENTES;

select A.NOME, A.BAIRRO, B.NOME from TABELA_DE_VENDEDORES A inner join TABELA_DE_CLIENTES B 
on A.BAIRRO = B.BAIRRO;
/*Cláudia Morais	Jardins	Érica Carvalho
Márcio Almeida Silva	Tijuca	César Teixeira
Márcio Almeida Silva	Tijuca	Eduardo Jorge
Márcio Almeida Silva	Tijuca	Paulo César Mattos
Pericles Alves	Santo Amaro	Gabriel Araujo
Cláudia Morais	Jardins	Valdeci da Silva
Cláudia Morais	Jardins	Carlos Eduardo
Temos 15 clientes, entretanto só 7 que moram no mesmo bairro que nosso vendedores atendem
*/

/*Agora irei utilizar o left join  para mostrar todos campos, iondepéndentemente se se conectam ou não*/
select A.NOME, A.BAIRRO, B.NOME from TABELA_DE_VENDEDORES A left join TABELA_DE_CLIENTES B 
on A.BAIRRO = B.BAIRRO;
/*Márcio Almeida Silva	Tijuca	César Teixeira
Márcio Almeida Silva	Tijuca	Eduardo Jorge
Márcio Almeida Silva	Tijuca	Paulo César Mattos
Cláudia Morais	Jardins	Érica Carvalho
Cláudia Morais	Jardins	Valdeci da Silva
Cláudia Morais	Jardins	Carlos Eduardo
Roberta Martins	Copacabana	NULL
Pericles Alves	Santo Amaro	Gabriel Araujo

Perceba que agora temos uma visãos sobre a roberta martins, que reside em copacabana, 
entretanto nenhum cliente resite em copacabana
*/

/*Agora vamos utilizar right join para visualizaer os cliente que não residem no mesmo bairro que os vendedores*/
select A.NOME, A.BAIRRO, B.NOME from TABELA_DE_VENDEDORES A right join TABELA_DE_CLIENTES B 
on A.BAIRRO = B.BAIRRO;

/*Resultado
Cláudia Morais	Jardins	Érica Carvalho
NULL	NULL	Fernando Cavalcante
Márcio Almeida Silva	Tijuca	César Teixeira
NULL	NULL	Marcos Nougeuira
Márcio Almeida Silva	Tijuca	Eduardo Jorge
NULL	NULL	Abel Silva 
NULL	NULL	Petra Oliveira
Márcio Almeida Silva	Tijuca	Paulo César Mattos
Pericles Alves	Santo Amaro	Gabriel Araujo
NULL	NULL	Marcelo Mattos
Cláudia Morais	Jardins	Valdeci da Silva
Cláudia Morais	Jardins	Carlos Eduardo
NULL	NULL	Edson Meilelles
NULL	NULL	Walber Lontra
NULL	NULL	Fábio Carvalho

Perceba que temos muitos clientes que não residem no  mesmo lugar que os vendedores. Entretanto a roberta, 
vendedora que não coincide em nenhum bairro dos clientes, não aparece nessa consulta, para isso iremos utiliozar
o full join, que nos retorna todos os campos iindependentemente se está ligado ou não
*/

/*Exemplo de full join:*/

select A.NOME, A.BAIRRO, B.NOME from TABELA_DE_VENDEDORES A full join TABELA_DE_CLIENTES B 
on A.BAIRRO = B.BAIRRO;

/*Resultado:
Márcio Almeida Silva	Tijuca	César Teixeira
Márcio Almeida Silva	Tijuca	Eduardo Jorge
Márcio Almeida Silva	Tijuca	Paulo César Mattos
Cláudia Morais	Jardins	Érica Carvalho
Cláudia Morais	Jardins	Valdeci da Silva
Cláudia Morais	Jardins	Carlos Eduardo
Roberta Martins	Copacabana	NULL
Pericles Alves	Santo Amaro	Gabriel Araujo
NULL	NULL	Fernando Cavalcante
NULL	NULL	Marcos Nougeuira
NULL	NULL	Abel Silva 
NULL	NULL	Petra Oliveira
NULL	NULL	Marcelo Mattos
NULL	NULL	Edson Meilelles
NULL	NULL	Walber Lontra
NULL	NULL	Fábio Carvalho

Perceba que todos os campos aparecem, tanto vendedores quanto clientes, 
entretanto quando os bairros não coincidem o campo que deveria coincidir aparece null!


*/

select A.NOME, A.BAIRRO, B.NOME from TABELA_DE_VENDEDORES A cross join TABELA_DE_CLIENTES B;

/*No exemplo acima temos um cross join(não utilizamos o on, pois não nos preocupamos com igualdade)
Serve para fazermos uma análise combinatória entre as tabelas: 

Cláudia Morais	Jardins	Fernando Cavalcante
Cláudia Morais	Jardins	César Teixeira
Cláudia Morais	Jardins	Marcos Nougeuira
Cláudia Morais	Jardins	Eduardo Jorge
Cláudia Morais	Jardins	Abel Silva 
Cláudia Morais	Jardins	Petra Oliveira
Cláudia Morais	Jardins	Paulo César Mattos
Cláudia Morais	Jardins	Gabriel Araujo
Cláudia Morais	Jardins	Marcelo Mattos
Cláudia Morais	Jardins	Valdeci da Silva
Cláudia Morais	Jardins	Carlos Eduardo
Cláudia Morais	Jardins	Edson Meilelles
Cláudia Morais	Jardins	Walber Lontra
Cláudia Morais	Jardins	Fábio Carvalho
Roberta Martins	Copacabana	Érica Carvalho
Roberta Martins	Copacabana	Fernando Cavalcante
Roberta Martins	Copacabana	César Teixeira
Roberta Martins	Copacabana	Marcos Nougeuira
Roberta Martins	Copacabana	Eduardo Jorge
Roberta Martins	Copacabana	Abel Silva 
Roberta Martins	Copacabana	Petra Oliveira
Roberta Martins	Copacabana	Paulo César Mattos
Roberta Martins	Copacabana	Gabriel Araujo
Roberta Martins	Copacabana	Marcelo Mattos
Roberta Martins	Copacabana	Valdeci da Silva
Roberta Martins	Copacabana	Carlos Eduardo
Roberta Martins	Copacabana	Edson Meilelles
Roberta Martins	Copacabana	Walber Lontra
Roberta Martins	Copacabana	Fábio Carvalho
Pericles Alves	Santo Amaro	Érica Carvalho
Pericles Alves	Santo Amaro	Fernando Cavalcante
Pericles Alves	Santo Amaro	César Teixeira
Pericles Alves	Santo Amaro	Marcos Nougeuira
Pericles Alves	Santo Amaro	Eduardo Jorge
Pericles Alves	Santo Amaro	Abel Silva 
Pericles Alves	Santo Amaro	Petra Oliveira
Pericles Alves	Santo Amaro	Paulo César Mattos
Pericles Alves	Santo Amaro	Gabriel Araujo
Pericles Alves	Santo Amaro	Marcelo Mattos
Pericles Alves	Santo Amaro	Valdeci da Silva
Pericles Alves	Santo Amaro	Carlos Eduardo
Pericles Alves	Santo Amaro	Edson Meilelles
Pericles Alves	Santo Amaro	Walber Lontra
Pericles Alves	Santo Amaro	Fábio Carvalho


*/