create database db_construindo_a_nossa_vida ;

use db_construindo_a_nossa_vida;

create table  tb_categoria (
id_categoria bigint (5) auto_increment,
tipo varchar (100),
ativo boolean,
primary key (id_categoria)     
);

INSERT INTO tb_categoria (tipo, ativo) VALUE ("Hidráulica",true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Ferramentas",true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Material de construção",true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("massas",true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Elétrico",true);

SELECT  *  FROM tb_categoria;

create table  tb_produto (
id_produto bigint (5) AUTO_INCREMENT,
nome varchar (255),
quantidade INT,
valor DECIMAL (10,2),
categoria_id bigint ,
primary key (id_produto),
foreign key (categoria_id) references tb_categoria (id_categoria)
);

insert into tb_produto (nome, Quantidade, valor, categoria_id) values ("Chuveiro",1,55.00,5);
insert into tb_produto (nome, Quantidade, valor, categoria_id) values ("Tomada",7,25.00,5);
insert into tb_produto (nome, Quantidade, valor, categoria_id) values ("pedra",10,6.000,3);
insert into tb_produto (nome, Quantidade, valor, categoria_id) values ("Torneira",1,8.99,5);
insert into tb_produto (nome, Quantidade, valor, categoria_id) values ("Cantoneira",6,25.99,4);
insert into tb_produto (nome, Quantidade, valor, categoria_id) values ("Martelo",2,35.00,2);
insert into tb_produto (nome, Quantidade, valor, categoria_id) values ("Chave de fenda",5,80.00,2);
insert into tb_produto (nome, Quantidade, valor, categoria_id) values ("Cimento",8,50.00,3);

select  *  from tb_produto;

select  *  from tb_produto where valor >  50.00;

select  *  from tb_produto where valor between 3.00 and 60.00;

select  *  from tb_produto where nome like  "%C%";

select  *  from tb_produto inner join  tb_categoria on tb_produto.categoria_id = tb_categoria.id_categoria;

select  tb_produto.nome  from tb_produto where  tb_produto . categoria_id  =  2 ;