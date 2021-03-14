create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id_categoria bigint auto_increment,
tipo varchar (100),
ativo boolean,
primary key (id_categoria)
);

insert into tb_categoria (tipo,ativo) value ("cosmeticos", true);
insert into tb_categoria (tipo,ativo) value ("manipulados",true);
insert into tb_categoria (tipo,ativo) value ("higiene", true);
insert into tb_categoria (tipo,ativo) value ("vitaminas",true);
insert into tb_categoria (tipo,ativo) value ("alimentos",true);


create table tb_produto(
id_produto bigint auto_increment,
nome varchar (155),
marca varchar (100),
valor int,
categoria_id bigint,
primary key (id_produto),
foreign key (categoria_id) references tb_categoria (id_categoria)
);

insert into tb_produto (nome,marca,valor,categoria_id) values ("rimel", "boca rosa", 37.80, 1);
insert into tb_produto (nome,marca,valor,categoria_id) values ("dipirona", "medley", 2.70, 2);
insert into tb_produto (nome,marca,valor,categoria_id) values ("sabonete", "nivea", 3.40, 3);
insert into tb_produto (nome,marca,valor,categoria_id) values ("barra de cereal", "nutry", 5.99, 5);
insert into tb_produto (nome,marca,valor,categoria_id) values ("polaramine", "anticorp", 57.45, 2);
insert into tb_produto (nome,marca,valor,categoria_id) values ("escova de dente", "colgate", 8.15, 3);
insert into tb_produto (nome,marca,valor,categoria_id) values ("baton", "eudora", 28.30, 1);
insert into tb_produto (nome,marca,valor,categoria_id) values ("vitamina c", "vegan", 12.90, 4);

select * from tb_produto;


select * from tb_produto where valor >50.00;
select * from tb_produto where valor between 3.00 and 60.00;
select * from tb_produto where nome like "%b%";
select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id_categoria;

select tb_produto.nome from tb_produto where tb_produto.categoria_id = 2;