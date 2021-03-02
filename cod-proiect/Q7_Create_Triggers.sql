USE Proiect_Policlinica
GO

--jurnalizare a operatiilor efectuate 
CREATE TABLE Log_Sectii (
LogID int IDENTITY NOT NULL,
ActionType char (1) NOT NULL,
ActionDate datetime NOT NULL,
ActionBy varchar(30),
IDSectie int,
Denumire varchar (20)
);
GO
CREATE TRIGGER trg_Insert_Sectii ON Sectii FOR INSERT AS
INSERT INTO Log_Sectii (ActionType, ActionDate, ActionBy, IDSectie, Denumire) SELECT 'I', GETDATE(), USER_NAME(), ins.IDSectie, ins.Denumire FROM inserted ins
GO

CREATE TABLE Log_Conducator (
LogID int IDENTITY NOT NULL,
ActionType char (1) NOT NULL,
ActionDate datetime NOT NULL,
idConducator int,
idSectie int,
Nume varchar(30),
Prenume varchar(30),
Email varchar (50)
);
GO

CREATE TRIGGER trg_Insert_Conducator ON CONDUCATOR FOR INSERT AS
INSERT INTO Log_Conducator (ActionType, ActionDate, idConducator, idSectie,Nume,Prenume,Email) SELECT 'I', GETDATE(), ins.idConducator,ins.idSectie, ins.Nume,ins.Prenume,ins.Email
FROM inserted ins
GO


--triggeri pentru formatarea datelor
CREATE TRIGGER trg_Update_NumeSectie ON Sectii
FOR INSERT, UPDATE
AS
UPDATE Sectii SET Sectii.Denumire = LOWER(Inserted.Denumire)
FROM Sectii, Inserted
WHERE Sectii.IDSectie = INSERTED.IDSectie
GO

CREATE TRIGGER trg_Update_Functii ON FUNCTII
FOR INSERT, UPDATE
AS
UPDATE FUNCTII SET FUNCTII.GradProfesional = LOWER(Inserted.GradProfesional)
FROM FUNCTII, Inserted
WHERE FUNCTII.idFunctie = INSERTED.idFunctie
GO

CREATE TRIGGER trg_Generare_Automata_Asist ON ASISTENTI
FOR INSERT, UPDATE
AS
UPDATE ASISTENTI SET ASISTENTI.Denumire = 'Asistent Medical'
FROM ASISTENTI, Inserted
WHERE ASISTENTI.idAsistent= INSERTED.idAsistent
GO

CREATE TRIGGER trg_Generare_Automata_DataAng_Conducator ON CONDUCATOR
FOR INSERT, UPDATE
AS
UPDATE CONDUCATOR SET CONDUCATOR.DataAngajarii = GETDATE()
FROM CONDUCATOR, Inserted
WHERE CONDUCATOR.idConducator= INSERTED.idConducator
GO


