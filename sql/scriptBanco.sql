create database askandtrust  WITH ENCODING 'UTF-8';

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

create table resposta (
   idResp serial not null constraint pk_resposta primary key,
   dataHora date not null,
   descricaoR text,
   userId varchar(11) not null,
   idPerg integer not null,
   constraint fk_resposta_usuario foreign key (userId) references usuario(CPF),
   constraint fk_resposta_pergunta foreign key (idPerg) references pergunta(idPerg)
);
