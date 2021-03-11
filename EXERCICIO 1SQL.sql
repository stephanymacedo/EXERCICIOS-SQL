-- Criar um Banco de Dados;
create database db_fenty_rh;

use db_fenty_rh;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
salario float not null,
funcao varchar(255) not null,
periodo varchar(255) not null,
primary key(id)
);

insert into tb_funcionarios (nome,idade,salario,funcao,periodo) values ("Johnny",28,6500,"gerente","manha");
insert into tb_funcionarios (nome,idade,salario,funcao,periodo) values ("Paula",22,3500,"lidar de Rh","manha");
insert into tb_funcionarios (nome,idade,salario,funcao,periodo) values ("Jessica",40,3000,"selecionadora","manha");
insert into tb_funcionarios (nome,idade,salario,funcao,periodo) values ("Thomaz",36,1800,"aux RH","manha");
insert into tb_funcionarios (nome,idade,salario,funcao,periodo) values ("Rihanna",33,85000,"CEO","manha");


update tb_funcionarios   set tb_funcionarios.salario = 3500 where id = 69;

select * from tb_funcionarios where (salario) >(2000)
