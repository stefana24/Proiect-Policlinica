USE Proiect_Policlinica
GO

ALTER TABLE
ASISTENTI WITH NOCHECK ADD CONSTRAINT ck_DataAngajarii
CHECK ( dbo.ValidareDataAngajarii(DataNasterii , DataAngajarii ) = 1)

SELECT DataNasterii,DataAngajarii,dbo.ValidareDataAngajarii(DataNasterii , DataAngajarii ) as Validity from ASISTENTI

ALTER TABLE PACIENT WITH NOCHECK
ADD CONSTRAINT ck_email CHECK(dbo.ChkValidEmail(Email) = 1)

SELECT email, dbo.ChkValidEmail(email) as Validity from dbo.PACIENT

--testare
SELECT dbo.DefaultEmailPoliclinica()

ALTER TABLE CONDUCATOR ADD CONSTRAINT df_emailPoliclinica
DEFAULT dbo.DefaultEmailPoliclinica() FOR Email;

SELECT dbo.DefaultTelefonPoliclinica()

ALTER TABLE ASISTENTI ADD CONSTRAINT df_TELPoliclinica
DEFAULT dbo.DefaultTelefonPoliclinica() FOR Telefon;

SELECT * FROM dbo.udf_pacientii_unui_medic('PASCA','IOAN');

SELECT * FROM  dbo.udf_mediiSpecialisti_dupaSectie_AN('ALERGOLOGIE',2008);