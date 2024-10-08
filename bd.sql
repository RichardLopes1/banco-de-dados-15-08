create database fiap;

USE FIAP;

 -- CRIAR TABELAS
create table t_turma(
	id_turma int primary key,
    sg_turma varchar(6),
    curso varchar(30),
    priodo varchar(15) -- noturno,matutino e vespertino
    
);

create table t_aluno(
	id_aluno int primary key, 
    nm_aluno  varchar(60),
    rm_aluno int not null,
    dt_nascimento date,
    st_aluno boolean,
    renda double,
    fk_id_turma int,
    foreign key (fk_id_turma) references t_turma(id_turma) -- chave estrangeira
);

 -- APAGAR TABELAS
 drop table t_aluno;