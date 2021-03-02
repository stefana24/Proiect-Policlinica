USE Proiect_Policlinica
GO

CREATE VIEW vDoctori AS
SELECT M.Nume,M.Prenume,F.GradProfesional,S.Denumire,
DATEDIFF(year,M.DataAngajarii,GETDATE()) AS Vechime_Policlinica
FROM MEDICI M,SECTII S,FUNCTII F
WHERE M.idSectie = S.idSectie AND M.idFunctie = F.idFunctie
GO

CREATE VIEW vPacienti AS
SELECT P.idPacient, P.Nume,P.Prenume,P.CNP,P.DenumireOcupatie,M.idMedic,M.Nume AS Nume_Medic,M.Prenume AS Prenume_Medic,S.Denumire AS Sectia,D.Denumire AS DIAGNOSTIC FROM PACIENT P,MEDICI M,SECTII S,DIAGNOSTIC D
WHERE P.idMedic = M.idMedic AND M.idSectie = S.idSectie AND P.idPacient=D.idPacient AND M.idMedic=D.idMedic
GO


