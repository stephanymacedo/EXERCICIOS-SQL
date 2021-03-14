create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id_categoria bigint (5) auto_increment,
tipo varchar (100),
ativo boolean,
primary key (id_categoria)     
);

insert into tb_categoria (tipo, ativo) value ("Indiomas",true); 
insert into tb_categoria (tipo, ativo) value ("Informatica",true); 
insert into tb_categoria (tipo, ativo) value ("Educação",true); 
insert into tb_categoria (tipo, ativo) value ("saúde",true); 
insert into tb_categoria (tipo, ativo) value ("engenharia",true); 

create table tb_produto(
id_produto bigint (5) auto_increment,
nome varchar (255),
tempo INT,
valor DECIMAL (10,2),
categoria_id bigint ,
primary key (id_produto),
foreign key (categoria_id) references tb_categoria (id_categoria)
);

insert into tb_produto (nome, tempo, valor, categoria_id) values ("Odontologia",5,2.000,4);
insert into tb_produto (nome, tempo, valor, categoria_id) values ("Engenharia Ambiental",5,1.100,5);
insert into tb_produto (nome, tempo, valor, categoria_id) values ("ingles",6,350.00,3);
insert into tb_produto (nome, tempo, valor, categoria_id) values ("Hotelaria e Turismo",2,2.150,5);
insert into tb_produto (nome, tempo, valor, categoria_id) values ("Letras",3,780.00,3);
insert into tb_produto (nome, tempo, valor, categoria_id) values ("medicina",6,8.000,4);
insert into tb_produto (nome, tempo, valor, categoria_id) values ("Ciência da Computação",1,400.00,2);
insert into tb_produto (nome, tempo, valor, categoria_id) values ("Sistemas de Informação",4,700.00,2);

select  *  from tb_produto;

select  *  from tb_produto where valor >  50.00;

select  *  from tb_produto where valor between 3.00 and 60.00;

select  *  from tb_produto where nome like  "%j%";

select  *  from tb_produto inner join  tb_categoria on tb_produto.categoria_id = tb_categoria.id_categoria;

select  tb_produto.nome  from tb_produto where  tb_produto . categoria_id  =  4;


