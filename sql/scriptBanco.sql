create database askandtrust;

\c askandtrust

create table usuario (
   CPF varchar(11) not null constraint pk_usuario primary key,
   email varchar(100) not null,
   nome varchar(100) not null,
   curso varchar(100) not null,
   senha varchar (100) not null,
   privilegio integer not null
);

create table pergunta (
   idPerg serial not null constraint pk_pergunta primary key,
   dataHora date not null,
   descricaoP text,
   userId varchar(11) not null,
   constraint fk_pergunta_usuario foreign key (userId) references usuario(CPF)
);
