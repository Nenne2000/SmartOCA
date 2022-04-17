INSERT INTO GIOCO VALUES('ab01', 30, 'sfondo1', 3, 5);
INSERT INTO GIOCO VALUES('ab02', 20, 'sfondo1', 5, 5);
INSERT INTO GIOCO VALUES('ab03', 31, 'sfondo1', 6, 1);
INSERT INTO GIOCO VALUES('ab04', 23, 'sfondo1', 3, 5);
INSERT INTO GIOCO VALUES('ab05', 30, 'sfondo3', 2, 2);
INSERT INTO GIOCO VALUES('ab06', 30, 'sfondo1', 3, 5);
INSERT INTO GIOCO VALUES('ab07', 12, 'sfondo1', 10, 5);
INSERT INTO GIOCO VALUES('ab08', 30, 'sfondo4', 3, 3);
INSERT INTO GIOCO VALUES('ab09', 30, 'sfondo1', 3, 5);
INSERT INTO GIOCO VALUES('ab10', 123, 'sfondo1', 8, 5);
INSERT INTO GIOCO VALUES('ab11', 30, 'sfondo7', 3, 6);
INSERT INTO GIOCO VALUES('ab12', 30, 'sfondo1', 9, 5);
INSERT INTO GIOCO VALUES('ab13', 45, 'sfondo1', 3, 8);
INSERT INTO GIOCO VALUES('ab14', 30, 'sfondo1', 7, 5);

INSERT INTO DADO VALUES('dado1', 0, 6);
INSERT INTO DADO VALUES('dado2', 0, 6);
INSERT INTO DADO VALUES('dado3', 0, 6);
INSERT INTO DADO VALUES('dado4', 0, 6);
INSERT INTO DADO VALUES('dado5', 0, 6);
INSERT INTO DADO VALUES('dado6', 0, 6);
INSERT INTO DADO VALUES('dado7', 0, 6);
INSERT INTO DADO VALUES('dado8', 0, 6);
INSERT INTO DADO VALUES('dado9', 0, 6);
INSERT INTO DADO VALUES('dado10', 0, 6);

INSERT INTO SET_ICONE VALUES('iconset1', 'ab01', 'immagine1');
INSERT INTO SET_ICONE VALUES('iconset2', 'ab01', 'immagine1');
INSERT INTO SET_ICONE VALUES('iconset3', 'ab03', 'immagine3');
INSERT INTO SET_ICONE VALUES('iconset4', 'ab01', 'immagine1');
INSERT INTO SET_ICONE VALUES('iconset5', 'ab07', 'immagine1');
INSERT INTO SET_ICONE VALUES('iconset6', 'ab14', 'immagine5');
INSERT INTO SET_ICONE VALUES('iconset7', 'ab01', 'immagine1');
INSERT INTO SET_ICONE VALUES('iconset8', 'ab12', 'immagine1');
INSERT INTO SET_ICONE VALUES('iconset9', 'ab01', 'immagine7');
INSERT INTO SET_ICONE VALUES('iconset10', 'ab03', 'immagine1');
INSERT INTO SET_ICONE VALUES('iconset11', 'ab01', 'immagine1');
INSERT INTO SET_ICONE VALUES('iconset12', 'ab04', 'immagine2');

INSERT INTO ICONA VALUES('immagine1', 'iconset1');
INSERT INTO ICONA VALUES('immagine2', 'iconset1');
INSERT INTO ICONA VALUES('immagine3', 'iconset1');
INSERT INTO ICONA VALUES('immagine4', 'iconset1');
INSERT INTO ICONA VALUES('immagine5', 'iconset2');
INSERT INTO ICONA VALUES('immagine6', 'iconset2');
INSERT INTO ICONA VALUES('immagine7', 'iconset3');
INSERT INTO ICONA VALUES('immagine8', 'iconset4');
INSERT INTO ICONA VALUES('immagine9', 'iconset5');
INSERT INTO ICONA VALUES('immagine10', 'iconset6');
INSERT INTO ICONA VALUES('immagine11', 'iconset7');
INSERT INTO ICONA VALUES('immagine12', 'iconset8');
INSERT INTO ICONA VALUES('immagine13', 'iconset9');
INSERT INTO ICONA VALUES('immagine14', 'iconset9');
INSERT INTO ICONA VALUES('immagine15', 'iconset10');
INSERT INTO ICONA VALUES('immagine16', 'iconset11');
INSERT INTO ICONA VALUES('immagine17', 'iconset12');
INSERT INTO ICONA VALUES('immagine18', 'iconset12'); 

INSERT INTO CASELLA VALUES('cas1', 1, 1, 'video1', 'normale', 4.0, 'ab01','npodio'); 
INSERT INTO CASELLA VALUES('cas2', 1, 2, 'video1', 'normale', 4.0, 'ab02','npodio'); 
INSERT INTO CASELLA VALUES('cas3', 2, 1, 'video2', 'normale', 4.0, 'ab03','podio','primo'); 
INSERT INTO CASELLA VALUES('cas4', 1, 3, 'video1', 'serpente', 4.0, 'ab04','npodio'); 
INSERT INTO CASELLA VALUES('cas5', 3, 1, 'video1', 'normale', 4.0, 'ab04','npodio'); 
INSERT INTO CASELLA VALUES('cas6', 2, 3, 'video3', 'normale', 4.0, 'ab05','npodio'); 
INSERT INTO CASELLA VALUES('cas7', 3, 2, 'video1', 'normale', 4.0, 'ab06','npodio'); 
INSERT INTO CASELLA VALUES('cas8', 12, 1, 'video1', 'scala', 4.0, 'ab01','npodio'); 
INSERT INTO CASELLA VALUES('cas9', 1, 4, 'video5', 'normale', 4.0, 'ab07','npodio'); 
INSERT INTO CASELLA VALUES('cas10', 4, 1, 'video1', 'normale', 4.0, 'ab07','npodio'); 
INSERT INTO CASELLA VALUES('cas11', 1, 5, 'video1', 'normale', 4.0, 'ab08','npodio'); 
INSERT INTO CASELLA VALUES('cas12', 4, 4, 'video1', 'normale', 4.0, 'ab09','npodio'); 
INSERT INTO CASELLA VALUES('cas13', 3, 3, 'video6', 'serpente', 4.0, 'ab10','npodio'); 
INSERT INTO CASELLA VALUES('cas14', 1, 6, 'video1', 'normale', 4.0, 'ab10','podio','secondo'); 
INSERT INTO CASELLA VALUES('cas15', 4, 3, 'video1', 'normale', 4.0, 'ab01','npodio'); 
INSERT INTO CASELLA VALUES('cas16', 7, 1, 'video1', 'scala', 4.0, 'ab11','npodio'); 
INSERT INTO CASELLA VALUES('cas17', 5, 1, 'video9', 'normale', 4.0, 'ab12','npodio'); 
INSERT INTO CASELLA VALUES('cas18', 3, 9, 'video1', 'normale', 4.0, 'ab13','podio', 'terzo'); 
INSERT INTO CASELLA VALUES('cas19', 5, 3, 'video1', 'normale', 4.0, 'ab14','npodio'); 
INSERT INTO CASELLA VALUES('cas20', 7, 2, 'video1', 'normale', 4.0, 'ab03','npodio'); 

INSERT INTO DESTINAZIONE VALUES( 'cas1' , 'cas2', 'cas3');
INSERT INTO DESTINAZIONE VALUES( 'cas12' , 'cas2', 'cas3');
INSERT INTO DESTINAZIONE VALUES( 'cas13' , 'cas2', 'cas3');
INSERT INTO DESTINAZIONE VALUES( 'cas20' , 'cas2', 'cas14');



INSERT INTO DOMANDA VALUES( 4.0 , 'cat1', 'scat1', '02:00:00', 'testo', 'cas1');
INSERT INTO DOMANDA VALUES( 1.0 , 'cat1', 'scat1', '02:00:00', 'testo', 'cas1');
INSERT INTO DOMANDA VALUES( 2.0 , 'cat1', 'scat1', '02:00:00', 'testo', 'cas2');
INSERT INTO DOMANDA VALUES( 3.0 , 'cat1', 'scat1', '02:00:00', 'testo', 'cas1');
INSERT INTO DOMANDA VALUES( 5.0 , 'cat1', 'scat1', '02:00:00', 'testo', 'cas3');
INSERT INTO DOMANDA VALUES( 12.0 , 'cat1', 'scat1', '02:00:00', 'testo', 'cas2');
INSERT INTO DOMANDA VALUES( 7.0 , 'cat1', 'scat1', '02:00:00', 'testo', 'cas1');
INSERT INTO DOMANDA VALUES( 8.0 , 'cat1', 'scat1', '02:00:00', 'testo', 'cas15');
INSERT INTO DOMANDA VALUES( 43.0 , 'cat1', 'scat1', '02:00:00', 'testo', 'cas20');
INSERT INTO DOMANDA VALUES( 21.0 , 'cat1', 'scat1', '02:00:00', 'testo', 'cas1');
INSERT INTO DOMANDA VALUES( 9.0 , 'cat1', 'scat1', '02:00:00', 'testo', 'cas17');

INSERT INTO TASK VALUES( 't1' ,2, 'testo', '4.0');
INSERT INTO TASK VALUES( 't2' ,3, 'testo', '43.0');
INSERT INTO TASK VALUES( 't3' ,2, 'testo', '4.0');
INSERT INTO TASK VALUES( 't4' ,2, 'testo', '7.0');
INSERT INTO TASK VALUES( 't5' ,2, 'testo', '8.0');
INSERT INTO TASK VALUES( 't6' ,7, 'testo', '21.0');
INSERT INTO TASK VALUES( 't7' ,2, 'testo', '4.0');
INSERT INTO TASK VALUES( 't8' ,2, 'testo', '12.0');
INSERT INTO TASK VALUES( 't9' ,2, 'testo', '1.0');
INSERT INTO TASK VALUES( 't10' ,9, 'testo', '4.0');
INSERT INTO TASK VALUES( 't11' ,2, 'testo', '3.0');


INSERT INTO QUIZ VALUES( 'q1' , 'imm', '1.0');
INSERT INTO QUIZ VALUES( 'q2' , 'imm', '2.0');
INSERT INTO QUIZ VALUES( 'q3' , 'imm', '3.0');
INSERT INTO QUIZ VALUES( 'q4' , 'imm', '4.0');
INSERT INTO QUIZ VALUES( 'q5' , 'imm', '21.0');
INSERT INTO QUIZ VALUES( 'q6' , 'imm', '9.0');
INSERT INTO QUIZ VALUES( 'q7' , 'imm', '1.0');
INSERT INTO QUIZ VALUES( 'q8' , 'imm', '43.0');
INSERT INTO QUIZ VALUES( 'q9' , 'imm', '12.0');
INSERT INTO QUIZ VALUES( 'q10' , 'imm', '5.0');


INSERT INTO RISPOSTA VALUES( 'q1' , 1 , 2.0, 'imm', 'testo');
INSERT INTO RISPOSTA VALUES( 'q2' , 3 , 2.0, 'imm', 'testo');
INSERT INTO RISPOSTA VALUES( 'q3' , 2 , 2.0, 'imm', 'testo');
INSERT INTO RISPOSTA VALUES( 'q4' , 1 , 3.0, 'imm', 'testo');
INSERT INTO RISPOSTA VALUES( 'q5' , 4 , 2.0, 'imm', 'testo');
INSERT INTO RISPOSTA VALUES( 'q6' , 1 , 2.0, 'imm', 'testo');
INSERT INTO RISPOSTA VALUES( 'q7' , 5 , 2.0, 'imm', 'testo');
INSERT INTO RISPOSTA VALUES( 'q8' , 1 , 5.0, 'imm', 'testo');
INSERT INTO RISPOSTA VALUES( 'q9' , 1 , 2.0, 'imm', 'testo');
INSERT INTO RISPOSTA VALUES( 'q10' , 6 , 2.0, 'imm', 'testo');



INSERT INTO SFIDA VALUES(1, CURRENT_DATE, time '1:30:00', 5, false , 'ab01');
INSERT INTO SFIDA VALUES(2, CURRENT_DATE, time '1:30:00', 5, true , 'ab01');
INSERT INTO SFIDA VALUES(3, CURRENT_DATE, time '1:30:00', 5,true  , 'ab02');
INSERT INTO SFIDA VALUES(4, CURRENT_DATE, time '2:00:00', 5, false , 'ab02');
INSERT INTO SFIDA VALUES(5, CURRENT_DATE, time '2:00:00', 5, false , 'ab01');
INSERT INTO SFIDA VALUES(6, CURRENT_DATE, time '0:30:00', 5, true , 'ab01');
INSERT INTO SFIDA VALUES(7, CURRENT_DATE, time '0:30:00', 5,true  , 'ab02');
INSERT INTO SFIDA VALUES(8, CURRENT_DATE, time '0:30:00', 5, false , 'ab02');
INSERT INTO SFIDA VALUES(9, CURRENT_DATE, time '2:00:00', 5, false , 'ab01');
INSERT INTO SFIDA VALUES(10, CURRENT_DATE, time '1:30:00', 5, true , 'ab01');
INSERT INTO SFIDA VALUES(11, CURRENT_DATE, time '1:30:00', 5,true  , 'ab02');
INSERT INTO SFIDA VALUES(12, CURRENT_DATE, time '1:30:00', 5, false , 'ab02');

INSERT INTO ADMIN VALUES(1, 2);
INSERT INTO ADMIN VALUES(2, 2);
INSERT INTO ADMIN VALUES(3, 22);
INSERT INTO ADMIN VALUES(4, 2);
INSERT INTO ADMIN VALUES(5, 5);
INSERT INTO ADMIN VALUES(6, 2);
INSERT INTO ADMIN VALUES(7, 2);
INSERT INTO ADMIN VALUES(8, 7);
INSERT INTO ADMIN VALUES(9, 2);

INSERT INTO SQUADRA VALUES('sq1', 3, 20, 1, 'immagine1');
INSERT INTO SQUADRA VALUES('sq2', 3, 20, 3, 'immagine1');
INSERT INTO SQUADRA VALUES('sq3', 3, 20, 4, 'immagine1');
INSERT INTO SQUADRA VALUES('sq4', 3, 20, 1, 'immagine1');
INSERT INTO SQUADRA VALUES('sq5', 3, 20, 12, 'immagine1');
INSERT INTO SQUADRA VALUES('sq6', 3, 20, 1, 'immagine1');
INSERT INTO SQUADRA VALUES('sq7', 3, 20, 11, 'immagine1');
INSERT INTO SQUADRA VALUES('sq8', 3, 20, 1, 'immagine1');


INSERT INTO UTENTE VALUES('a@gmail', 'gianni', 'g5ian', 'asd', 'giornogenerico', false, false, 'sq1');
INSERT INTO UTENTE VALUES('b@gmail', 'gini', 'gi7an', 'asd', 'giornogenerico', false, false, 'sq1');
INSERT INTO UTENTE VALUES('c@gmail', 'gianni', 'gi4an', 'asd', 'giornogenerico', false, true, 'sq2');
INSERT INTO UTENTE VALUES('d@gmail', 'gin', 'gi9an', 'rsd', 'giornogenerico', false, false, 'sq1');
INSERT INTO UTENTE VALUES('e@gmail', 'gianni', 'gian', 'asd', 'giornogenerico', false, false, 'sq3');
INSERT INTO UTENTE VALUES('f@gmail', 'gianni', 'gian', 'ecasd', 'giornogenerico', false, false, 'sq3');
INSERT INTO UTENTE VALUES('g@gmail', 'ginni', 'gi3an', 'asd', 'giornogenerico', true, false, 'sq1');
INSERT INTO UTENTE VALUES('h@gmail', 'gianni', 'gi2an', 'asd', 'giornogenerico', false, true, 'sq5');
INSERT INTO UTENTE VALUES('k@gmail', 'gianni', 'gian', 'daed', 'giornogenerico', false, false, 'sq1');
INSERT INTO UTENTE VALUES('i@gmail', 'gnni', 'gian', 'asd', 'giornogenerico', false, false, 'sq8');
INSERT INTO UTENTE VALUES('z@gmail', 'g', 'gian1', 'asd', 'giornogenerico', false, false, 'sq1');


INSERT INTO FILE VALUES('t1', '2021-01-01 12:30:00' , 'c@gmail');
INSERT INTO FILE VALUES('t2', '2021-01-01 12:30:00' , 'c@gmail');
INSERT INTO FILE VALUES('t3', '2021-01-01 12:30:00' , 'd@gmail');
INSERT INTO FILE VALUES('t6', '2021-01-01 12:30:00' , 'c@gmail');
INSERT INTO FILE VALUES('t8', '2021-01-01 12:30:00' , 'e@gmail');


INSERT INTO TURNO VALUES( 1, 'sq1');
INSERT INTO TURNO VALUES( 1, 'sq2');
INSERT INTO TURNO VALUES( 1, 'sq3');
INSERT INTO TURNO VALUES( 1, 'sq4');
INSERT INTO TURNO VALUES( 1, 'sq5');
INSERT INTO TURNO VALUES( 1, 'sq6');
INSERT INTO TURNO VALUES( 1, 'sq7');
INSERT INTO TURNO VALUES( 1, 'sq8');
INSERT INTO TURNO VALUES( 2, 'sq1');
INSERT INTO TURNO VALUES( 2, 'sq2');
INSERT INTO TURNO VALUES( 2, 'sq3');
INSERT INTO TURNO VALUES( 2, 'sq4');
INSERT INTO TURNO VALUES( 2, 'sq5');
INSERT INTO TURNO VALUES( 2, 'sq6');
INSERT INTO TURNO VALUES( 2, 'sq7');
INSERT INTO TURNO VALUES( 2, 'sq8');
INSERT INTO TURNO VALUES( 3, 'sq1');
INSERT INTO TURNO VALUES( 3, 'sq2');

INSERT INTO CORRISPONDE VALUES('ab01', 'sq1');
INSERT INTO CORRISPONDE VALUES('ab01', 'sq2');
INSERT INTO CORRISPONDE VALUES('ab01', 'sq3');
INSERT INTO CORRISPONDE VALUES('ab02', 'sq4');
INSERT INTO CORRISPONDE VALUES('ab02', 'sq5');
INSERT INTO CORRISPONDE VALUES('ab02', 'sq6');

INSERT INTO COMPOSTA VALUES('a@gmail' , 'sq1');
INSERT INTO COMPOSTA VALUES('b@gmail' , 'sq1');
INSERT INTO COMPOSTA VALUES('c@gmail' , 'sq1');
INSERT INTO COMPOSTA VALUES('d@gmail' , 'sq1');
INSERT INTO COMPOSTA VALUES('e@gmail' , 'sq3');
INSERT INTO COMPOSTA VALUES('f@gmail' , 'sq2');
INSERT INTO COMPOSTA VALUES('g@gmail' , 'sq5');

INSERT INTO PARTECIPA VALUES( 1, 'sq1');
INSERT INTO PARTECIPA VALUES( 1, 'sq2');
INSERT INTO PARTECIPA VALUES( 1, 'sq3');
INSERT INTO PARTECIPA VALUES( 3, 'sq1');
INSERT INTO PARTECIPA VALUES( 5, 'sq1');
INSERT INTO PARTECIPA VALUES( 1, 'sq4');
INSERT INTO PARTECIPA VALUES( 2, 'sq1');
INSERT INTO PARTECIPA VALUES( 1, 'sq5');
INSERT INTO PARTECIPA VALUES( 7, 'sq1');