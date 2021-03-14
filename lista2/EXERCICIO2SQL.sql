-- criando banco de dados
CREATE  DATABASE  db_pizzaria_legal;

-- informando qual banco de dados vou usar
USE db_pizzaria_legal;

-- criando tabela
create table  tb_categoria (
id_categoria BIGINT (5) auto_increment,
tipo VARCHAR (100),
ativo boolean,
primary key (id_categoria)
);

-- informando o banco de dados que irei usar
USE db_pizzaria_legal;

-- populando tabela
insert into tb_categoria (tipo, ativo) values ("Vegana" , true);
insert into tb_categoria (tipo, ativo) values ("Promoção" , true);
insert into tb_categoria (tipo, ativo) values ("Doce" , true);
insert into tb_categoria (tipo, ativo) values("Tradicional" , true);
insert into tb_categoria (tipo, ativo) values ("Especial" , true);

select  *  from tb_categoria;

-- informando banco de dados que irei usar
USE db_pizzaria_legal;

-- criando tabela
create table  tb_pizza (
id_pizza bigint (5) auto_increment,
nome varchar(100),
sabor varchar (100),
preco decimal(10,2),
categoria_id bigint,
primary key (id_pizza),
foreign key (categoria_id) references tb_categoria (id_categoria)
);

-- populando tabela
insert into tb_pizza (nome, sabor, preco,categoria_id) values ( " 4 Queijos " , " Mussarela, Provolone, Catupiry um e Parmersão " , 25.00 , 1 );
insert into  tb_pizza (nome, sabor, preco, categoria_id) values ( " Portuguesa " , " Ovo, Presunto, Queijo " , 54.23 , 4 );
insert into tb_pizza (nome, sabor, preco, categoria_id) values ( " Chocolate " , " Chocolate e Morango " , 25.55 , 3 );
insert into  tb_pizza (nome, sabor, preco, categoria_id) values ( " Calabresa " , " Calabresa e Cebola " , 47.58 , 4 );
insert into  tb_pizza (nome, sabor, preco, categoria_id) values ( " Lombo " , " Queijo e Lombo " , 60.00 , 2 );
insert into  tb_pizza (nome, sabor, preco, categoria_id) values ( " 3 Queijos " , " Mussarela, Parmesão um e Catupiry " , 39.99 , 1 );
insert into  tb_pizza (nome, sabor, preco, categoria_id) values ( " da Casa " , " Queijo, ovo, tomate, lombo, catupiry presunto e " , 25.00 , 5 );
insert into  tb_pizza (nome, sabor, preco, categoria_id) values ( " Romeu e Julieta " , " Queijo e Goiabada " , 57.55 , 3 );

SELECT  *  from tb_pizza;

-- Pizzas com o valor maior do que 45 reais.
select  *  from tb_pizza where preco > 45.00 ;


--  Pizzas com valor entre 29 e 60 reais.
select * from tb_pizza  where preco between 29.00 and 60.00 ; 


-- utilizando LIKE buscando os Pizzas com a letra C.
select  *  from tb_pizza where nome like   "%C% " ;

-- Integração interna entre tabela categoria e pizza.
select  *  from tb_pizza inner join tb_categoria on tb_pizza . categoria_id  =  tb_categoria . id_categoria ;

-- todas as pizzas que são doces
select * from tb_pizza where  tb_pizza . categoria_id = 3;