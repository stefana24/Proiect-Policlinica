USE Proiect_Policlinica
GO


exec usp_Insert_Medici_Sectie_Functie
@Sectie = 'ALERGOLOGIE',
@Functie = 'MEDIC REZIDENT',
@Cabinet = 19,
@Nume='Ispas',
@Prenume='Nicolae',
@DataAngajarii='05/11/2019'


exec usp_Update_Medici @idSectie=3,@Cabinet=20;

DECLARE @ret_code int;
EXECUTE @ret_code = usp_Insert_Pacient
			@idMedic=1,
			@Nume='Filimon' ,
			@Prenume='Dorian',
			@CNP = 1931023010372,
			@Varsta=27,
			@Telefon=0766123199,
			@DenumireOcupatie='mecanic auto',
			@Programare ='1/12/2021 12:10:09';

IF @ret_code = 1
BEGIN
	PRINT 'data programarii este invalida'
END
ELSE IF @ret_code = 0
BEGIN
	PRINT 'Procedura executata cu succes'
END

GO

EXEC usp_Inserare_Diagnostic
SELECT * FROM PACIENT
SELECT * FROM MEDICI
SELECT * FROM DIAGNOSTIC