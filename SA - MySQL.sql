
create database SA;
use SA;
create table cliente (
	id int NOT NULL auto_increment,
    nome varchar(30) NOT NULL,
    nascimento date NOT NULL,
    cpf bigint NOT NULL,
    dadosdocartao bigint NOT NULL,
    primary key(id)
);
create table produto (
	id int NOT NULL auto_increment,
    categoria varchar(30) NOT NULL,
    preco double NOT NULL,
    variacao varchar(30) NOT NULL,
    primary key(id)
);
create table nota_fiscal (
	id int NOT NULL auto_increment,
    id_cliente int NOT NULL,
    id_produto int NOT NULL,
    nomedocomprador varchar(30) NOT NULL,
    data_compra date NOT NULL,
    valor_total double NOT NULL,
    produto_comprado varchar(30) NOT NULL,
    primary key(id),
    foreign key(id_cliente) references cliente(id),
    foreign key(id_produto) references produto(id)
);