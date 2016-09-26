insert into usuario values ('0913142191', 'meu@email.com', 'Mariazinha', 'Ciência da Computação', '123', 0);
insert into usuario values ('1', 'user@email.com', 'Joãozinho', 'Ciência da Computação', 'senha123', 0);
insert into pergunta (datahora, descricaop, userid) values ('1971-07-13', 'Como fazer uma página dinâmica em python?', '0913142191');
insert into pergunta (datahora, descricaop, userid) values ('1971-07-13', 'Será que está pegando somente a pergunta correta?', '0913142191');
insert into resposta(datahora, descricaor, userid, idperg) values ('1971-07-14', 'É ISSO MESMO!! ACREDITE EM VOCÊ!!', '1', 2);
insert into resposta(datahora, descricaor, userid, idperg) values ('1971-07-15', 'Funcionando?', '1', 2);
insert into resposta(datahora, descricaor, userid, idperg) values ('1971-07-16', 'A nível organizacional, a consolidação das estruturas representa uma abertura para a melhoria das posturas dos órgãos dirigentes com relação às suas atribuições. A prática cotidiana prova que o desenvolvimento contínuo de distintas formas de atuação nos obriga à análise do sistema de participação geral. Nunca é demais lembrar o peso e o significado destes problemas, uma vez que a revolução dos costumes agrega valor ao estabelecimento das formas de ação. Ainda assim, existem dúvidas a respeito de como a constante divulgação das informações afeta positivamente a correta previsão das condições inegavelmente apropriadas.', '1', 2);
insert into resposta(datahora, descricaor, userid, idperg) values ('1971-07-16', 'Acima de tudo, é fundamental ressaltar que o comprometimento entre as equipes oferece uma interessante oportunidade para verificação dos índices pretendidos. No mundo atual, a adoção de políticas descentralizadoras apresenta tendências no sentido de aprovar a manutenção de alternativas às soluções ortodoxas. Não obstante, o desafiador cenário globalizado pode nos levar a considerar a reestruturação dos paradigmas corporativos. Todas estas questões, devidamente ponderadas, levantam dúvidas sobre se a percepção das dificuldades estende o alcance e a importância dos métodos utilizados na avaliação de resultados.', '1', 2);


  create table resposta (
     idResp serial not null constraint pk_resposta primary key,
     dataHora date not null,
     descricaoR text,
     userId varchar(11) not null,
     idPerg integer not null,
     constraint fk_resposta_usuario foreign key (userId) references usuario(CPF),
     constraint fk_resposta_pergunta foreign key (idPerg) references pergunta(idPerg)
  );
