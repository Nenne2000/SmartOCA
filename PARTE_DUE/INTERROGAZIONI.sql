//************************************************************************************************************//
/*CREAZIONE DI UNA VISTA CON ALCUNE INFORMAZIONI RIASSUNTIVE SULLO SCHEMA*/

CREATE VIEW sfideSvolte AS
	SELECT GIOCO.id_g, COUNT(cod_sfida) AS sfideDisputate, AVG(durata_max) AS durataMedia, num_sq_partecipanti, MIN(punteggio) AS Pmin, MAX(punteggio) AS Pmax, AVG(punteggio) AS Pavg
	FROM ( GIOCO NATURAL JOIN SFIDA ) NATURAL JOIN SQUADRA
	GROUP BY GIOCO.id_g, SFIDA.num_sq_partecipanti;

//**********************************************************************************************************//

/*CREO UNA VISTA MATERIALIZZATA COSI DA NON DOVER RIPETERE QUELLA LUNGA SERIE DI JOIN PER DUE INTERROGAZIONI DIVERSE*/
/*FA PARTE DEL TUNING*/

CREATE MATERIALIZED VIEW game_with_task
AS SELECT GIOCO.id_g
FROM ((GIOCO NATURAL JOIN CASELLA) NATURAL JOIN DOMANDA) NATURAL JOIN TASK
WHERE DOMANDA.cod_domanda = TASK.cod_domanda; 


/*Determinare giochi che contengono caselle con task associati*/
SELECT DISTINCT id_g
FROM game_with_task;


SELECT GIOCO.id_g
FROM GIOCO 
EXCEPT 
SELECT id_g
FROM game_with_task;

SELECT cod_sfida 
FROM SFIDA X
WHERE X.durata_max > (SELECT AVG(durata_max)
			  FROM SFIDA
			  WHERE X.id_g = SFIDA.id_g);

//***********************************************************************************************************//