create database askandtrust;

\c askandtrust

create table usuario (
   CPF   integer not null constraint pk_usuario primary key,
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
   constraint fk_pergunta_usuario foreign key (idPerg) references usuario(CPF)
);
