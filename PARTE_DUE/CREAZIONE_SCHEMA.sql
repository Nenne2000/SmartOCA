
//******************************************************************************//
//*****************************CREAZIONE SCHEMA*********************************//
//******************************************************************************//


CREATE SCHEMA oca;

set search_path to 'oca';

CREATE DOMAIN TipoCasella AS TEXT
CHECK(  VALUE ~ 'scala'
	OR VALUE ~ 'serpente'
	OR VALUE ~ 'normale'
);

CREATE DOMAIN podioType AS TEXT
CHECK( 
	VALUE ~ 'podio'
	OR VALUE ~ 'npodio'
);

CREATE DOMAIN class AS TEXT
CHECK(  VALUE ~ 'primo'
	OR VALUE ~ 'secondo'
	OR VALUE ~ 'terzo'
);

CREATE TABLE GIOCO(
	id_g VARCHAR(20) PRIMARY KEY,
	n_cas NUMERIC(4) NOT NULL,
	background TEXT NOT NULL,
	n_squadre NUMERIC(2) NOT NULL,
	n_dadi    NUMERIC(2) NOT NULL
);

CREATE TABLE DADO(
	id_d VARCHAR(20) PRIMARY KEY,
	p_max INTEGER NOT NULL CHECK( p_max BETWEEN 0 AND 6),
	p_min INTEGER NOT NULL CHECK (p_min BETWEEN 0 AND 6),
);

CREATE TABLE SET_ICONE(
	nome_s VARCHAR(20) PRIMARY KEY,
	id_g VARCHAR(20) REFERENCES GIOCO ON DELETE CASCADE NOT NULL,
	immagine_s TEXT NOT NULL
);

CREATE TABLE ICONA(
	immagine_i TEXT PRIMARY KEY,
	nome_s  VARCHAR(20) REFERENCES SET_ICONE ON DELETE CASCADE NOT NULL,
	nomeS VARCHAR(20) REFERENCES SQUADRA ON DELETE CASCADE NOT NULL,
	id_casella VARCHAR(20) REFERENCES CASELLA ON DELETE CASCADE NOT NULL
);

CREATE TABLE CASELLA(
	id_casella VARCHAR(20) PRIMARY KEY,
	coord_x INTEGER,
	coord_y INTEGER,
	video TEXT NOT NULL,
	tipologia TipoCasella NOT NULL,
	num_ordine DECIMAL(2,0) NOT NULL,
	id_g VARCHAR(20) REFERENCES GIOCO ON DELETE CASCADE NOT NULL,
	tipo podioType NOT NULL,
	classifica class,
	UNIQUE(coord_x,coord_y)
);

CREATE TABLE DESTINAZIONE(
	id_casella VARCHAR(20) REFERENCES CASELLA ON DELETE CASCADE NOT NULL,
	partenza VARCHAR(20) REFERENCES CASELLA ON DELETE CASCADE,
	arrivo VARCHAR(20) REFERENCES CASELLA ON DELETE CASCADE,
	PRIMARY KEY (id_casella,partenza,arrivo)
);
		 

CREATE TABLE DOMANDA (
	cod_domanda DECIMAL(3,0),
	categoria VARCHAR(20) NOT NULL,
	sottocat VARCHAR(20) NOT NULL,
	tempo_max TIME NOT NULL,
	testo_d TEXT,
	id_casella VARCHAR(20) REFERENCES CASELLA ON DELETE CASCADE NOT NULL,
	PRIMARY KEY (cod_domanda)
);

CREATE TABLE TASK(
	id_t VARCHAR(20),
	punteggioT DECIMAL NOT NULL,
	testo_t TEXT NOT NULL,
	cod_domanda DECIMAL REFERENCES DOMANDA ON DELETE CASCADE NOT NULL,
	PRIMARY KEY(id_t)
);

CREATE TABLE QUIZ (
	id_q VARCHAR(20), 
	immagine TEXT,
	cod_domanda DECIMAL REFERENCES DOMANDA ON DELETE CASCADE NOT NULL,
	PRIMARY KEY(id_q)
);

CREATE TABLE RISPOSTA (
	id_q VARCHAR(20) REFERENCES QUIZ ON DELETE CASCADE,
	turno_relativo INTEGER NOT NULL,
	punteggioQ DECIMAL(2,0) NOT NULL,
	immagineQ TEXT,
	testo TEXT NOT NULL,
	PRIMARY KEY (id_q)
);

CREATE TABLE SFIDA(
	cod_sfida DECIMAL(3,0) PRIMARY KEY,
	data DATE DEFAULT CURRENT_DATE  NOT NULL,
	durata_max TIME  NOT NULL,
 	num_sq_partecipanti INTEGER  NOT NULL CHECK(num_sq_partecipanti >= 1),
	stato bool  NOT NULL,
	id_g VARCHAR REFERENCES GIOCO(id_g)  NOT NULL
);

CREATE TABLE ADMIN(
 	cod_sfida DECIMAL(3,0) REFERENCES SFIDA(cod_sfida) ON DELETE CASCADE,
 	valutaz DECIMAL NOT NULL,
	PRIMARY KEY(cod_sfida)
);

CREATE TABLE SQUADRA(
 	nomeS VARCHAR(20) PRIMARY KEY,
 	numerodadi INTEGER NOT NULL,
  	punteggio DECIMAL(2,0) NOT NULL,
 	cod_sfida DECIMAL(3,0) REFERENCES SFIDA(cod_sfida) ON DELETE CASCADE  NOT NULL
);

CREATE TABLE UTENTE(
	mail VARCHAR(20) PRIMARY KEY,
  	nomeu VARCHAR(20),
  	nickname VARCHAR(20) NOT NULL,
  	cognome VARCHAR(20),
  	datanascita VARCHAR(20),
  	caposquadra BOOLEAN NOT NULL DEFAULT FALSE,
  	coach BOOLEAN NOT NULL DEFAULT FALSE,
  	nomes VARCHAR(20) REFERENCES SQUADRA(nomes) ON DELETE CASCADE NOT NULL
);

CREATE TABLE FILE (
	id_t VARCHAR(20) REFERENCES TASK ON DELETE CASCADE,
	data TIMESTAMP NOT NULL,
	mail VARCHAR(30) REFERENCES  UTENTE ON DELETE CASCADE NOT NULL,
	PRIMARY KEY(id_t)
);

CREATE TABLE TURNO(
  	numero INTEGER,
  	nomes VARCHAR(20) REFERENCES SQUADRA(nomes) ON DELETE CASCADE NOT NULL,
  	PRIMARY KEY(numero, nomes)
);

CREATE TABLE CORRISPONDE(
	id_g VARCHAR(20) REFERENCES GIOCO(id_g) ON DELETE CASCADE,
	nomeS VARCHAR(20) REFERENCES SQUADRA(nomeS) ON DELETE CASCADE,
	PRIMARY KEY(id_g,nomeS)
);

CREATE TABLE COMPOSTA(
	mail VARCHAR(20) REFERENCES UTENTE(mail) ON DELETE CASCADE,
	nomeS VARCHAR(20) REFERENCES SQUADRA(nomeS) ON DELETE CASCADE,
	PRIMARY KEY(mail,nomeS)
);

CREATE TABLE PARTECIPA(
	cod_sfida DECIMAL(3,0) REFERENCES SFIDA(cod_sfida) ON DELETE CASCADE,
	nomeS VARCHAR(20) REFERENCES SQUADRA(nomeS) ON DELETE CASCADE,
	PRIMARY KEY(cod_sfida,nomeS)
);