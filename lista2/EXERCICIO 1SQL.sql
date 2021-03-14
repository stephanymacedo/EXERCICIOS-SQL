create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe (
id bigint auto_increment,

vida int not null,
stamina int not null,
classe varchar (60) not null,
primary key (id)
);

insert into tb_classe (vida,stamina,classe) values (5000, 8000, "guerreiro");
insert into tb_classe (vida,stamina,classe) values (3200, 450, "mago");
insert into tb_classe (vida,stamina,classe) values (2000, 5000, "assassino");
insert into tb_classe (vida,stamina,classe) values (4500, 750, "curandeiro");
insert into tb_classe (vida,stamina,classe) values (1800, 800, "invocador");

create table tb_personagem(
id bigint auto_increment,
nome varchar (30) not null,
ataque int not null,
defesa int not null,
agilidade int not null,
inteligencia int not null,
tb_classe_id bigint,
primary key (id),
foreign key (tb_classe_id) references tb_classe (id)
);


insert into tb_personagem (nome, ataque, defesa, agilidade, inteligencia, tb_classe_id) values ("Selenne", 10000, 6000 , 1000, 500, 1);
insert into tb_personagem (nome, ataque, defesa, agilidade, inteligencia, tb_classe_id) values ("Jairo", 1000, 1000 , 500, 10000, 2);
insert into tb_personagem (nome, ataque, defesa, agilidade, inteligencia, tb_classe_id) values ("Dimitri", 6000, 2200 , 10000, 2000, 3);
insert into tb_personagem (nome, ataque, defesa, agilidade, inteligencia, tb_classe_id) values ("carmilla", 1200, 1800 , 2000, 6200, 4);
insert into tb_personagem (nome, ataque, defesa, agilidade, inteligencia, tb_classe_id) values ("zood", 5000, 3000 , 3200, 8500, 5);
insert into tb_personagem (nome, ataque, defesa, agilidade, inteligencia, tb_classe_id) values ("samantha", 2000, 2000 , 2200, 8500, 6);
insert into tb_personagem (nome, ataque, defesa, agilidade, inteligencia, tb_classe_id) values ("hector", 2000, 3000 , 1200, 1500, 7);
insert into tb_personagem (nome, ataque, defesa, agilidade, inteligencia, tb_classe_id) values ("aizen", 8500, 8000 , 7200, 15000, 8);

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000  and  2000;

select * from tb_personagem where nome like "%C%";

select * from tb_classe inner join tb_personagem on tb_classe.id = tb_personagem.tb_classe_id;

select * from tb_classe inner join tb_personagem on tb_classe.id = tb_personagem.tb_classe_id
where classe like "%assassino%";