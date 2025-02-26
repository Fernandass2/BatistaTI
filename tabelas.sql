/* DML -> Data Manipulation linguage
CRUD  -> C ->  Create(Insert)
		 R -> | Retriaver(Ler|Capturar) Select
         U -> Update(Atualizar)
         D -> Delete (Apagar)
*/
-- Selecionar o banco de dados
use dbcasaoliveira;
-- Inserir  um novo contato de um cliente
-- Descrever a tabela pra ver os campos

desc contato;

insert into contato(
telefone_residencial,
telefone_comercial,
telefone_celular,
email
)
Values(
"1166549228",
"11-45872856",
"11-975050975",
"pedro.oliveira@gmail.com"
);
-- Selecionar * (Todas as colunar) FROM (origem)
select * from contato;
---------------------------------------------------------------------------------------------------------
-- Descrever a tabeça endereço
desc endereco;

insert into endereco(
tipo_logradouro,
logradouro,
numero,
complemento,
cep,
bairro,
cidade,
estado)
Values(
"Travessa","Tijuco Preto","51","Casa2","04544-051","Tatuapé","São Paulo","SP");
select * FROM endereco;
-------------------------------------------------------------------------------------------------------------
desc cliente;

insert into cliente(
nome_cliente,
cpf_cliente,
data_nascimento_cliente,
contato,
endereco)
values(
"Valéria Torres de Oliveira",
"335.286.448-12",
"1986-10-05",1,1);
select * From cliente
-------------------------------------------------------------------------------------------------------
desc fornecedor;

insert into fornecedor(
razao_social,
nome_fantasia,
cnpj,
contato,
endereco
)
values(
"Goiasminas industria de laticinios LTDA","Italac","01.257.995/0001-33",2,2);
select * from fornecedor
-----------------------------------------------------------------------------------------------------------
insert into categoria (
nome_categoria,
descricao_categoria
)
values(
"Laticionios","Produtos derivados de leite");
select * From categoria;
----------------------------------------------------------------------------------------------------------
desc produto;

insert into produto(
nome_produto,
preco,
data_validade,
data_fabricacao,
fornecedor,
categoria)
values(
"Queijo Ralado","3.60","2025-04-10","2025-12-06",1,1);
select * From produto;
-----------------------------------------------------------------------------------------------------------
desc estoque;

insert into estoque(
produto,
quantidade_estoque,
data_aqisicao
)
values(4,70,"2025-10-5");
select * from estoque

-----------------------------------------------------------------------------------------------------
desc funcionario;
insert into funcionario(
nome_funcionario,
cpf_funcionario,
data_funcionario,
horario_expediente,
cargo,
contato,
endereco)
values(
"Pedro de Oliveira",
"5454785547",
"1978-10-02",
"08:00 às 17:00",1,3,3)
select * from funcionario;
-------------------------------------------------------------------------------------------------
desc cargos;
insert into cargos(
funcao,
salario,
descricao_cargos,
beneficios)
values(
"Operador de caixa",2500.90,"Atender os clientes","Vale Transporte, Vale Refeição");
select * from cargos;
--------------------------------------------------------------------------------------------------
desc vendas;

insert into vendas(
cliente,
funcionario)
values (3,1);
select * from vendas;
-----------------------------------------------------------------------------------------------------
desc itensvenda
insert into itensvenda(
vendas,
produto,
quantidade_venda,
total)
values(
2,4,10,36)

select * from itensvenda;
----------------------------------------------------------------------------------------------------------
select sum(total) from itensvenda 

select * from vendas;
update vendas set subtotal=240.40 where id_vendas=2;
----------------------------------------------------------------------------------------------------------
desc pagamento;
insert into pagamento(
vendas,
forma_pagamento,
valor_pagar,
parcelas,
valor_parcela,
troco)
values(2,"Pix",240.40,1,240.00,0);
select * from pagamento;
------------------------------------------------------------------------------------------------------------
