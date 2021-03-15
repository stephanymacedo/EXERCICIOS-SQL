create database db_nomeminha_casa_mais_bonita;
use db_nomeminha_casa_mais_bonita;


create table tb_categoria(
id_categoria bigint (5) auto_increment,
tipo varchar (100),
ativo boolean,
primary key (id_categoria)     
);

INSERT INTO tb_categoria (tipo, ativo) VALUE ("Cozinha",true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Sala",true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Quarto",true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Banheiro",true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Lavanderia",true);

create table tb_produto(
id_produto bigint (5) AUTO_INCREMENT,
nome varchar (255),
quantidade INT,
valor DECIMAL (10,2),
categoria_id bigint ,
primary key (id_produto),
foreign key (categoria_id) references tb_categoria (id_categoria)
);

insert into tb_produto (nome, Quantidade, valor, categoria_id) values ("máquina de lavar",1,1.500,5);
insert into tb_produto (nome, Quantidade, valor, categoria_id) values ("cama",1,800.00,3);
insert into tb_produto (nome, Quantidade, valor, categoria_id) values ("espelho",1,50.00,4);
insert into tb_produto (nome, Quantidade, valor, categoria_id) values ("televisão",1,1.000,2);
insert into tb_produto (nome, Quantidade, valor, categoria_id) values ("panela de pressão",2,198.00,1);
insert into tb_produto (nome, Quantidade, valor, categoria_id) values ("guarda roupa",1,1.050,3);
insert into tb_produto (nome, Quantidade, valor, categoria_id) values ("detergente",1,2.05,1);
insert into tb_produto (nome, Quantidade, valor, categoria_id) values ("sofá",2,3.100,2);

create table tb_usuario(
id_produto bigint (5) AUTO_INCREMENT,
nome varchar (255),
idade int,
email varchar(255),
categoria_id bigint ,
primary key (id_produto)
);

insert into tb_usuario (nome, idade, email, categoria_id) values ("Diogo",23,"diogomacedo@gmail.com",2);
insert into tb_usuario (nome, idade, email, categoria_id) values ("Steicy",17,"steicyvilanova@hotmail.com",4);
insert into tb_usuario (nome, idade, email, categoria_id) values ("Stanlley",19,"stanlleyvilanova@gmail.com",5);
insert into tb_usuario (nome, idade, email, categoria_id) values ("Beatriz",20,"beatrizalves@hotmail.com",3);
insert into tb_usuario (nome, idade, email, categoria_id) values ("Heitor",10,"heitorlopes@gmail.com",1);


select  *  from tb_produto;

select  *  from tb_produto where valor >  50.00;

select  *  from tb_produto where valor between 3.00 and 60.00;

select  *  from tb_produto where nome like  "%p%";

select  *  from tb_produto where nome like  "%g%";

select  *  from tb_produto inner join  tb_categoria on tb_produto.categoria_id = tb_categoria.id_categoria;

select  tb_produto.nome  from tb_produto where  tb_produto . categoria_id  = 2;


