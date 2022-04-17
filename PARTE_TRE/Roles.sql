RUOLI

//ruolo del game creator: ha tutti i privilegi
CREATE ROLE gamecreator;

GRANT ALL PRIVILEGES
ON ALL TABLES IN SCHEMA oca
TO gamecreator
WITH GRANT OPTION;

//ruolo del gameadmin: può leggere tutto ma può fare insert,update e delete solo 
//su alcune relazioni.
//In più anche lui continua ad avere la grant option

CREATE ROLE gameadmin;

GRANT INSERT, UPDATE, DELETE
ON oca.gioco,oca.casella,oca.domanda,oca.quiz, oca.task,oca.dado,oca.sfida,oca.squadra
TO gameadmin
WITH GRANT OPTION;

GRANT SELECT
ON ALL TABLES IN SCHEMA oca
TO gameadmin
WITH GRANT OPTION;

GRANT gameadmin TO gamecreator;

//ruolo del giocatore: può leggere tutto e consegnare file
//niente grant option

CREATE ROLE giocatore;

GRANT SELECT
ON ALL TABLES IN SCHEMA oca
TO giocatore;

GRANT INSERT 
ON oca.file, oca.risposta;

GRANT giocatore TO gameadmin;

//ruolo utente: quasi nulla

CREATE ROLE utente;

GRANT SELECT
ON oca.utente, oca.squadra;

GRANT utente TO giocatore;