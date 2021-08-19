create database quizGame;

drop database quizGame;

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

CREATE TABLE ranking (
    id_ranking INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    pontuacao REAL NOT NULL,
	id_usuario INT NOT NULL,
	FOREIGN KEY(id_usuario) references users(id_user)
);

select *from questoes_respostas;

select *from users;

select *from ranking;

##################################################################################
truncate table questoes_respostas;
truncate table ranking; 
drop table questoes_respostas;

delete from questoes_respostas where id_questao = 10;
##################################################################################


insert into questoes_respostas values
	(default, 'Normalmente, quantos litros de sangue uma pessoa tem?', 'Tem entre 4 a 6 litros', 'Tem entre 2 a 4 litros', 'Tem 10 litros', 'Tem 7 litros', 'i'),
    (default, 'De quem é a famosa frase “Penso, logo existo”?', 'Descartes', 'Platão', 'Galileu Galilei', 'Sócrates', 'v'),
    (default, 'De onde é a invenção do chuveiro elétrico?', 'Brasil', 'França', 'Inglaterra', 'Austrália', 'v'),
    (default, 'Quais o menor e o maior país do mundo?', 'Vaticano e Rússia', 'Nauru e China', 'Mônaco e Canadá', 'Malta e Estados Unidos', 'v'),
    (default, 'Qual o nome do presidente do Brasil que ficou conhecido como Jango?', 'João Goulart', 'Jacinto Anjos', 'Getúlio Vargas', 'João Figueiredo', 'v'),
    (default, 'Qual o livro mais vendido no mundo a seguir à Bíblia?', 'Dom Quixote', 'O Senhor dos Anéis', 'O Pequeno Príncipe', 'Ela, a Feiticeira', 'v'),
    (default, 'Quantas casas decimais tem o número pi?', 'Infinitas', 'Duas', 'Centenas', 'Vinte', 'v'),
    (default, 'Atualmente, quantos elementos químicos a tabela periódica possui?', '118', '113', '109', '108', 'v'),
    (default, 'O que a palavra legend significa em português?', 'Lenda', 'Legenda', 'Conto', 'História', 'v'),
    (default, 'Qual o número mínimo de jogadores numa partida de futebol?', '7', '10', '9', '5', 'v'),
    (default, 'Quem pintou "Guernica"?', 'Pablo Picasso', 'Paul Cézanne', 'Diego Rivera', 'Tarsila do Amaral', 'v'),
    (default, 'Quanto tempo a luz do Sol demora para chegar à Terra?', '8 minutos', '12 minutos', '1 dia', '12 horas', 'v'),
    (default, 'Qual a nacionalidade de Che Guevara?', 'Argentina', 'Peruana', 'Panamenha', 'Boliviana', 'v'),
    (default, 'Qual a altura da rede de vôlei nos jogos masculino e feminino?', '2,43 m e 2,24 m', '2,5 m e 2,0 m', '1,8 m e 1,5 m', '2,45 m e 2,15 m', 'v'),
    (default, 'Em que período da pré-história o fogo foi descoberto?', 'Paleolítico', 'Neolítico', 'Idade dos Metais', 'Período da Pedra Polida', 'v'),
    (default, 'Qual a montanha mais alta do Brasil?', 'Pico da Neblina', 'Pico Paraná', 'Monte Roraima', 'Pico da Bandeira', 'v'),
    (default, 'Em qual local da Ásia o português é língua oficial?', 'Macau', 'Moçambique', 'Filipinas', 'Índia', 'v'),
    (default, '“It is six twenty" ou "twenty past six”. Que horas são em inglês?', '6:20', '2:20', '12:06', '6:02', 'v'),
    (default, 'Quem é o autor de “O Príncipe”?', 'Maquiavel', 'Montesquieu', 'Hobbes', 'Rousseau', 'v'),
    (default, 'Qual destes países é transcontinental?', 'Rússia', 'Filipinas', 'Istambul', 'Tanzânia', 'v'),
    (default, 'Júpiter e Plutão são os correlatos romanos de quais deuses gregos?', 'Zeus e Hades', 'Cronos e Apolo', 'Zeus e Ares', 'Ares e Hermes', 'v'),
    (default, 'Qual o maior animal terrestre?', 'Elefante africano', 'Tubarão Branco', 'Dinossauro', 'Girafa', 'v'),
    (default, 'Que líder mundial ficou conhecida como “Dama de Ferro”?', 'Margaret Thatcher', 'Angela Merkel', 'Hillary Clinton', 'Dilma Rousseff', 'v'),
    (default, 'Qual a religião monoteísta que conta com o maior número de adeptos no mundo?', 'Cristianismo', 'Islamismo', 'Hinduísmo', 'Judaísmo', 'v'),
    (default, 'Quais são os cromossomos que determinam o sexo masculino?', 'Os Y', 'Os W', 'Os X', 'Os V', 'v'),
    (default, 'Em que estado australiano fica situada a cidade de Sydney?', 'Nova Gales do Sul', 'Victoria', 'Tasmânia', 'Norfolk', 'v'),
    (default, 'Quem amamentou os gêmeos Rômulo e Remo?', 'uma loba', 'uma gata', 'uma vaca', 'uma ovelha', 'v'),
    (default, 'Como se chamam os vasos que transportam sangue do coração para a periferia do corpo?', 'artérias', 'átrios', 'veias', 'aurículos', 'v'),
    (default, 'Que animal gruguleja?', 'o peru', 'a cacatua', 'a garça', 'o pavão', 'v'),
    (default, 'Qual é o maior arquipélago da Terra?', 'a Indonésia', 'as Filipinas', 'as Bahamas', 'as Maldivas', 'v'),
    (default, 'Em que oceano fica Madagascar?', 'Índico', 'Antártico', 'Atlântico', 'Pacífico', 'v'),
    (default, 'Qual o metal cujo símbolo químico é o Au?', 'Ouro', 'Cobre', 'Mercúrio', 'Manganês', 'v'),
    (default, 'Quem viveu, segundo a bíblia, 969 anos?', 'Matusalém', 'Jesus Cristo', 'Noé', 'Abel', 'v'),
    (default, 'Quem pintou o teto da capela sistina?', 'Michelangelo', 'Rafael', 'Leonardo da Vinci', 'Donatello', 'v'),
    (default, 'Quantos graus são necessários para que dois ângulos sejam complementares?', '90', '45', '360', '180', 'v'),
    (default, 'Quem foi o criador da tragédia grega?', 'Ésquilo', 'Homero', 'Sófocles', 'Platão', 'v'),
    (default, 'Jim Morrison era vocalista de que grupo?', 'The Doors', 'The Police', 'Nirvana', 'Pink Floyd', 'v'),
    (default, 'Quem foi a primeira pessoa a viajar no Espaço?', 'Yuri Gagarin', 'Marcos Pontes', 'Buzz Aldrin', 'Neil Armstrong', 'v'),
    (default, 'Qual a montanha mais alta do mundo?', 'Monte Everest', 'Mauna Kea', 'Pico da Neblina', 'Monte Chimborazo', 'v'),
    (default, 'Onde se localiza Machu Picchu?', 'Peru', 'China', 'Bolívia', 'Índia', 'v'),
    (default, 'Que país tem o formato de uma bota?', 'Itália', 'Brasil', 'Portugal', 'Butão', 'v'),
    (default, 'Quem inventou a lâmpada?', 'Thomas Edison', 'Henry Ford', 'Santos Dumont', 'Steve Jobs', 'v'),
    (default, 'A que temperatura a água ferve?', '100 ºC', '180 ºC', '0 ºC', '200 ºC', 'v'),
    (default, 'Quantos ossos temos no nosso corpo?', '206', '126', '300', '200', 'v'),
    (default, 'Qual o maior planeta do sistema solar?', 'Júpiter', 'Terra', 'Saturno', 'Marte', 'v'),
    (default, 'Qual o planeta mais próximo do Sol?', 'Mercúrio', 'Terra', 'Júpiter', 'Netuno', 'v'),
    (default, 'Quantos continentes existem?', '6', '5', '4', '7', 'v'),
    (default, 'Qual a maior floresta tropical do mundo?', 'Floresta Amazônica', 'Pantanal', 'Caatinga', 'Mata Atlântica', 'v'),
    (default, 'Qual o monumento famoso pela sua inclinação', 'Torre de Pisa', 'Cristo Redentor', 'Esfinge', 'Torre Eiffel', 'v'),
    (default, 'Kryptonita é a fraqueza de qual super-herói?', 'Super-Homem', 'Capitão América', 'Flash', 'Hulk', 'v'),
    (default, 'Quem pintou Mona Lisa?', 'Leonardo da Vinci', 'Salvador Dalí', 'Van Gogh', 'Pablo Picasso', 'v'),
    (default, 'Qual a personagem mais famosa de Maurício de Sousa?', 'Mônica', 'Mafalda', 'Smurfette', 'Magali', 'v'),
    (default, 'Qual o nome popular do cloreto de sódio?', 'Sal de cozinha', 'Fermento', 'Papel', 'Vinagre', 'v'),
    (default, 'Que animal põe o maior ovo?', 'Avestruz', 'Galinha', 'Beija-flor', 'Pavão', 'v'),
    (default, 'O que os pandas comem?', 'Bambu', 'Frutas e mel', 'Carnes', 'Mel', 'v'),
    (default, 'Quantos andares tem o maior prédio do mundo?', '163', '100', '200', '25', 'v'),
    (default, 'Em que país foi construído o Muro de Berlim?', 'Alemanha', 'Brasil', 'Uruguai', 'Polônia', 'v'), 
	(default, 'Em que país se anda mais de bicicleta?', 'Países Baixos', 'Portugal', 'Brasil', 'Mongólia', 'v'),
    (default, 'Depois do futebol, qual o esporte mais popular no Brasil?', 'Vôlei', 'Golfe', 'Esgrima', 'Esqui', 'v'),
    (default, 'Qual a nacionalidade do sociólogo e filósofo Durkheim?', 'Francesa', 'Inglesa', 'Italiana', 'Norueguesa', 'v'),
    (default, 'Qual a primeira mulher a ganhar um prêmio Nobel?', 'Marie Curie', 'Valentina Tereshkova', 'Madre Teresa de Calcutá', 'Irène Joliot-Curie', 'v'),
    (default, 'Como morreu Saddam Hussein?', 'Enforcado', 'Ataque cardíaco', 'Decapitado', 'Suicídio', 'v'),
    (default, 'Qual a doença sexualmente transmissível que virou surto no Brasil em 2017?', 'Sífilis', 'Zika', 'Candidíase', 'Febre amarela', 'v'),
    (default, 'Em que país se localizava Auschwitz, o maior campo de concentração nazi?', 'Polônia', 'Alemanha', 'Áustria', 'Japão', 'v'),
    (default, 'Quantos planetas Terra cabem dentro do Sol?', 'Um milhão', 'Cem', 'Seiscentas', 'Dois milhões', 'v'),
    (default, 'Em que lugar vivem mais cangurus do que pessoas?', 'Austrália', 'Indonésia', 'Brasil', 'África do Sul', 'v'),
    (default, 'Quantos olhos a maior parte das aranhas têm?', 'Quatro pares', 'Quatro', 'Seis', 'Um', 'v'),
    (default, 'Quanto mede uma girafa?', 'Entre 4,8 e 5,5 metros', '2 metros', '2,5 metros', 'Entre 5 e 6 metros', 'v'),
    (default, 'Quantos braços tem um polvo?', 'Oito', 'Seis', 'Sete', 'Dez', 'v'),
    (default, 'Nesses pares, ambos são mamíferos:', 'Baleia azul e golfinhos', 'Macacos e sapos', 'Porcos e pinguins', 'Morcegos e galinhas', 'v'),
    (default, 'Quanto tempo o vidro demora para se decompor?', 'tempo indeterminado', '4000 anos', '1000 anos', '500 anos', 'v'),
    (default, 'De que são constituídos os diamantes?', 'Carbono', 'Rênio', 'Bóhrio', 'Ósmio', 'v'),
    (default, 'Qual dessas aves não voa?', 'Pinguim', 'Pato', 'Cegonha', 'Galinha', 'v'),
    (default, 'O etanol é produzido através de qual fonte de energia?', 'Biomassa', 'Eólica', 'Solar', 'Geotérmica', 'v'),
    (default, 'Qual a unidade que mede a intensidade do som?', 'Decibel', 'Frequência', 'Hertz', 'Compasso', 'v'),
    (default, 'Em que país nasceu o Conde Drácula?', 'Transilvânia', 'Irlanda', 'Escócia', 'Polônia', 'v'),
    (default, 'Que país foi dividido em 1949?', 'Alemanha', 'Bélgica', 'Polônia', 'Dinamarca', 'v'),
    (default, 'Que povo foi o primeiro a utilizar a bússola?', 'chineses', 'romanos', 'mesopotâmicos', 'egípcios', 'v'),
    (default, 'Qual era o deus romano do amor?', 'Cupido', 'Eros', 'Baco', 'Apolo', 'v'),
    (default, 'Como se chama o passarinho amarelo amigo de Snoopy?', 'Woodstock', 'Magoo', 'Wile', 'Bobby', 'v');
    
