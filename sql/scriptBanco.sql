create database askandtrust;

\c askandtrust

create table usuario

create table usuario (
   CPF   integer not null constraint pk_usuario primary key,
   email varchar(100) not null,
   nome varchar(100) not null,
   curso varchar(100) not null,
   senha varchar (100) not null,
   privilegio integer not null
);
