TRIGGER


//verificare che nessun utente partecipi a più sfide contemporaneamente

CREATE FUNCTION SfideContemporanee()
RETURNS trigger AS
$$
BEGIN 
	IF (SELECT COUNT(*) 
	    FROM (utente NATURAL JOIN squadra) NATURAL JOIN sfida
	    WHERE sfida.stato = FALSE AND utente.mail = NEW.mail) = 1
	THEN RISE NOTICE 'utente già occupato in una sfida';
	ELSE RETURN NEW;
	END IF;
END;
$$
language plpgsql;

CREATE TRIGGER no_cont
BEFORE INSERT OR UPDATE ON UTENTE
EXECUTE PROCEDURE SfideContemporanee;

//*******************************************************************************//

CREATE OR REPLACE FUNCTION aggiornapodio() RETURNS TRIGGER AS
$$
DECLARE
    var_gioco VARCHAR(20); --gioco corrente che sto aggiornando
    giochi CURSOR FOR SELECT DISTINCT id_g FROM sfida; --cursore per scorrere i giochi
    squadra1 VARCHAR(20); --squadra che deve essere prima e così via
    squadra2 VARCHAR(20); 
    squadra3 VARCHAR(20);
    n_squadre_in_gioco int; 
BEGIN
    OPEN giochi;
    FETCH giochi INTO var_gioco;
    WHILE var_gioco IS NOT NULL LOOP
--guardo quante squadre stanno partecipando al gioco

            COUNT(*) INTO n_squadre_in_gioco FROM 
			(SELECT DISTINCT nomeS FROM sfida NATURAL JOIN partecipa
           		 WHERE id_g = var_gioco);

	    IF n_squadre_in_gioco > 0 THEN
			SELECT DISTINCT nomeS, punteggioS INTO squadra1
			FROM (sfida NATURAL JOIN partecipa) NATURAL JOIN squadra 
			WHERE id_g = var_gioco
			ORDER BY punteggioS DESC
			LIMIT 1;			
			UPDATE icona SET icona.id_casella = (SELECT DISTINCT id_casella 
							     FROM casella 
							     WHERE classifica = 'primo' AND gioco = var_gioco)
					 WHERE nomeS = squadra1;
	    IF n_squadre_in_gioco > 1 THEN
			SELECT DISTINCT nomeS, punteggioS INTO squadra2
			FROM (sfida NATURAL JOIN partecipa) NATURAL JOIN squadra 
			WHERE id_g = var_gioco
			ORDER BY punteggioS DESC
			LIMIT 1, OFFSET 1;
			UPDATE icona SET icona.id_casella = (SELECT DISTINCT id_casella 
							     FROM casella 
							     WHERE classifica = 'secondo' AND gioco = var_gioco)
					WHERE nomeS = squadra2;
	    IF n_squadre_in_gioco > 2 THEN
			SELECT DISTINCT nomeS, punteggioS INTO squadra3
			FROM (sfida NATURAL JOIN partecipa) NATURAL JOIN squadra 
			WHERE id_g = var_gioco
			ORDER BY punteggioS DESC
			LIMIT 1, OFFSET 2;
			UPDATE icona SET icona.id_casella = (SELECT DISTINCT id_casella 
							     FROM casella 
							     WHERE classifica = 'terzo' AND gioco = var_gioco)
					WHERE nomeS = squadra3;

	END IF;
	END IF;
        END IF;

        FETCH giochi INTO var_gioco;
    END LOOP;
    CLOSE GIOCHI;
    RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE aggiorna_podio
	AFTER INSERT OR UPDATE ON  partecipa
	FOR EACH ROW
	EXECUTE PROCEDURE aggiornaPodio();