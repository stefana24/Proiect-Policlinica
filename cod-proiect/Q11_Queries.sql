USE Proiect_Policlinica
GO


--medicii si nr de pacienti
SELECT M.Nume,M.Prenume,F.GradProfesional,S.Denumire,COUNT(*)AS NR_PACIENTI FROM MEDICI M,FUNCTII F,SECTII S,PACIENT P
WHERE M.idFunctie= F.idFunctie AND M.idSectie = S.idSectie AND P.idMedic = M.idMedic
GROUP BY M.Nume,M.Prenume,F.GradProfesional,S.Denumire
ORDER BY S.Denumire;

--Pacientii studenti
SELECT M.Nume,M.Prenume,S.Denumire, COUNT(*) AS NR_STUD FROM PACIENT P,MEDICI M,FUNCTII F,SECTII S
WHERE P.DenumireOcupatie = 'Student' AND M.idFunctie = F.idFunctie AND F.GradProfesional='MEDIC SPECIALIST' AND P.idMedic = M.idMedic AND M.idSectie = S.idSectie
GROUP BY M.Nume,M.Prenume,S.Denumire
ORDER BY S.Denumire;

--pacienti elevi care merg la medicul de familie
SELECT M.Nume AS Nume_Medic,M.Prenume AS Prenume_medic,S.Denumire, COUNT(*) AS NR_ELEV FROM PACIENT P,MEDICI M,FUNCTII F,SECTII S
WHERE P.DenumireOcupatie = 'Elev' AND M.idFunctie = F.idFunctie AND F.GradProfesional='MEDIC PRIMAR' AND P.idMedic = M.idMedic AND M.idSectie = S.idSectie
GROUP BY M.Nume,M.Prenume,S.Denumire
ORDER BY S.Denumire;

--Salariul fiecarui medic
SELECT M.Nume,M.Prenume, F.GradProfesional,S.Denumire, AVG(F.Salariu)AS Salariu FROM FUNCTII F,MEDICI M,SECTII S
WHERE M.idFunctie = F.idFunctie AND M.idSectie = S.idSectie
GROUP BY M.Nume,M.Prenume, F.GradProfesional,S.Denumire
ORDER BY Salariu DESC;


SELECT Nume,Prenume,CNP,DenumireOcupatie FROM vPacienti
WHERE Sectia = 'OFTALMOLOGIE' AND Nume_Medic= 'SABAU';

--Pacientii care merg la medicul Faur Lucian
SELECT P.Nume,P.Prenume FROM PACIENT P
WHERE P.idMedic = (SELECT M.idMedic FROM MEDICI M 
WHERE M.Nume = 'Faur' AND M.Prenume='LUCIAN');

--pacientii care merg la cardiologie
SELECT P.Nume AS Nume_Pacient,P.Prenume AS Prenume_Pacient,M.Nume AS Nume_Medic,M.Prenume AS Prenume_Medic
FROM PACIENT P,MEDICI M 
WHERE M.idSectie = (SELECT idSectie FROM SECTII WHERE SECTII.Denumire='CARDIOLOGIE') 
AND P.idMedic=M.idMedic
ORDER BY M.Nume,M.Prenume,P.Nume;

--nr de pacienti care merg la neurologie
SELECT M.idSectie,COUNT(*)NR_PACIENTI FROM PACIENT P,MEDICI M
WHERE  M.idSectie = (
SELECT S.idSectie FROM SECTII S WHERE S.Denumire = 'NEUROLOGIE')
AND P.idMedic = M.idMedic
GROUP BY M.idSectie;

--asistentele de la dermatologie
SELECT A.idAsistent,A.Nume,A.Prenume FROM ASISTENTI A
WHERE A.idSectie=(SELECT S.idSectie FROM SECTII S WHERE S.Denumire='DERMATOLOGIE');

--asistente medicale principale
SELECT A.idAsistent,A.Nume,A.Prenume,S.Denumire FROM ASISTENTI A,SECTII S
WHERE A.Denumire = 'ASISTENT MEDICAL PRINCIPAL' AND A.idSectie = S.idSectie;
