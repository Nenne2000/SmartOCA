ROUTINE

//funzione che dato un gioco in ingresso restituisce le sfide con la durata maggiore rispetto alla media relativa a quel determinato gioco


CREATE OR REPLACE FUNCTION sfideInGioco( id_gioco VARCHAR) RETURNS VOID AS
$$
BEGIN
EXECUTE 'create view aux'
|| ' as select cod_sfida from SFIDA where id_g = || $1 || AND durata_max > (select AVG(durata_max) from SFIDA where id_g = ||$2||); '
using id_gioco, id_gioco;
select * from aux;
drop view aux;
end;
$$ language plpgsql;

//questa interrogazione è poco ottimizzata perchè fa uso della programmazione dinamica
//Dal momento che usare una routine così poco ottimizzata non ha senso ne abbiamo creata un'altra più semplice 
//e ottimizzata

CREATE OR REPLACE FUNCTION sfideInGioco( id_gioco VARCHAR) RETURNS TABLE (sfida DECIMAL(3,0)) AS
$$
BEGIN
RETURN QUERY SELECT cod_sfida 
			 FROM SFIDA
			 WHERE id_g = id_gioco
			 AND durata_max > (SELECT AVG(durata_max)
			  					   FROM SFIDA
			  					   WHERE id_g = id_gioco);
END;
$$ language plpgsql;

//******************************************************************************************************//

//assegna l'icona alla squadra se non è già stata presa

CREATE OR REPLACE FUNCTION getIcon(IN icona VARCHAR(20), IN squadra VARCHAR(20), IN sfida DECIMAL) RETURNS void AS
$$
BEGIN
IF(squadra NOT IN ( SELECT nomes FROM SQUADRA WHERE cod_sfida=sfida ))
THEN RAISE NOTICE 'La squadra non partecipa a questa sfida';
ELSEIF(icona IN ( SELECT immagine FROM (((SQUADRA JOIN SFIDA ON cod_sfida=sfida) NATURAL JOIN GIOCO) NATURAL JOIN SET_ICONE) NATURAL JOIN ICONA ))
THEN RAISE NOTICE 'Icona già presa';
ELSE
UPDATE SQUADRA SET immagine=icona WHERE nomes=squadra;
END IF;
END;
$$ LANGUAGE plpgsql;