create database quizGame;

CREATE TABLE users (
    id_user INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    nickname VARCHAR(20) NOT NULL
);

CREATE TABLE questoes_respostas (
    id_questao INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    pergunta varchar(100) NOT NULL,
    resp_correta varchar(50) NOT NULL,
    resp_a varchar(50) NOT NULL,
	resp_b varchar(50) NOT NULL,
	resp_c varchar(50) NOT NULL,
	valida enum ('v','i') NOT NULL
);

CREATE TABLE denuncia_validacao (
    id_den_val INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    num_denuncias INT NOT NULL,
    num_validacoes INT NOT NULL,
    username_1 varchar(50),
	username_2 varchar(50),
    id_quest INT NOT NULL,
	FOREIGN KEY(id_quest) references questoes_respostas(id_questao)
);

CREATE TABLE ranking (
    id_ranking INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    pontuacao REAL NOT NULL,
	id_usuario INT NOT NULL,
	FOREIGN KEY(id_usuario) references users(id_user)
);

select *from users;

select *from questoes_respostas;

select *from denuncia_validacao;

select *from ranking;
