QUERY WORKLOAD:

//Determinare l’identificatore dei giochi che coinvolgono al più quattro squadre e richiedono l’uso di due dadi 

SELECT id_g
FROM GIOCO 
WHERE n_squadre  <=  4 AND n_dadi > 2;


/*Determinare l’identificatore delle sfide relative a un gioco A di vostra scelta (specificare direttamente l’identificatore nella richiesta) che, in alternativa: 
o hanno avuto luogo a gennaio 2021 e durata massima superiore a 2 ore
o hanno avuto luogo a marzo 2021 e durata massima pari a 30 minuti*/


SELECT cod_Sfida 
FROM SFIDA NATURAL JOIN GIOCO 
WHERE SFIDA.id_g = 'ab0' 
AND ((Sfida.data BETWEEN '01/01/2021' AND '31/01/2021' 
AND SFIDA.durata_max > '02:00:00') 
OR 
(SFIDA.data BETWEEN '01/03/2021' AND '31/03/2021' 
AND SFIDA.durata_max = '00:30:00'));


/*Determinare le sfide, di durata massima superiore a 2 ore, dei giochi che richiedono almeno due dadi.
 Restituire sia l’identificatore della sfida sia l’identificatore del gioco*/


SELECT id_g , cod_Sfida
FROM GIOCO NATURAL JOIN SFIDA
WHERE GIOCO.n_dadi > 2 AND SFIDA.durata_max > '02:00:00';
