USE Proiect_Policlinica
GO

--TESTARE jurnalizare 
INSERT INTO SECTII(Denumire) VALUES('HEMATOLOGIE');
SELECT * FROM Log_Sectii;

INSERT INTO CONDUCATOR(idSectie,Nume,Prenume,Email) VALUES (10,'Stefan','Mihai','stefanamihai.medica@yahoo.com');
SELECT * FROM Log_Conducator;


--TESTARE triggeri pentru formatarea datelor
INSERT INTO SECTII(Denumire) VALUES('GINECOLOGIE');
SELECT * FROM SECTII;

INSERT INTO FUNCTII(GradProfesional) VALUES('MEDIC PRIMAR SPECIALIST');
SELECT * FROM FUNCTII;


INSERT INTO ASISTENTI(idSectie,Nume,Prenume,DataAngajarii) VALUES (3,'Popescu','Marina','1/3/2020');
SELECT * FROM ASISTENTI;

INSERT INTO CONDUCATOR(idSectie,Nume,Prenume,Email) VALUES (11,'Popescu','Marina','POPESCUMARINA.MEDICA@yahoo.com');
SELECT * FROM CONDUCATOR;





