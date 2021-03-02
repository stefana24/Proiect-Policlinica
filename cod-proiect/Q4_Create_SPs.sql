USE Proiect_Policlinica
GO

DROP PROCEDURE IF EXISTS usp_Insert_medici_Sectie_Functie
GO

CREATE procedure usp_Insert_Medici_Sectie_Functie(
@Sectie varchar(30),
@Functie varchar(30),
@Nume varchar(30),
@Prenume varchar(20),
@DataAngajarii date ,
@Cabinet int
)
AS
	SET NOCOUNT ON
	DECLARE @FunctieId int,@SectieId int;
	DECLARE @ErrorMessage NVARCHAR(1000);
	DECLARE @ErrorSeverity INT;
	DECLARE @ErrorState INT;

	BEGIN TRY
		SELECT @SectieId = idSectie FROM SECTII WHERE Denumire = @Sectie
		IF @SectieId = NULL
			BEGIN
				RAISERROR('Sectie inexistenta',11,1)
				RETURN 
			END

		SELECT @FunctieId = idFunctie FROM FUNCTII WHERE GradProfesional = @Functie
		IF @FunctieId IS NULL
			BEGIN
				RAISERROR('Functie inexistenta',11,1)
				RETURN 
			END

		BEGIN TRY
			BEGIN Transaction

			INSERT INTO [MEDICI] (
		   [idFunctie]
		  ,[idSectie]
		  ,[Nume]
		  ,[Prenume]
		  ,[DataAngajarii]
		  ,[Cabinet]
		
			)
			VALUES (
			@FunctieId,
			@SectieId,
			@Nume,
			@Prenume,
			@DataAngajarii,
			@Cabinet
			)
		Commit TRANSACTION
		END TRY
	BEGIN CATCH

		SELECT @ErrorMessage = ERROR_MESSAGE(),
		@ErrorSeverity = ERROR_SEVERITY(),
		@ErrorState = ERROR_STATE();
		ROLLBACK Transaction
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState );
	END CATCH
end try
begin catch
	SELECT @ErrorMessage = ERROR_MESSAGE(),
	@ErrorSeverity = ERROR_SEVERITY(),
	@ErrorState = ERROR_STATE();
	RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState );
end catch



DROP PROCEDURE IF EXISTS usp_Update_Medici
GO
CREATE procedure usp_Update_Medici(
	@Cabinet int,@idSectie int
)
as
	set NOCOUNT ON
	begin try
	BEGIN Transaction
		UPDATE [Medici] SET
		[Cabinet] = COALESCE(@Cabinet, [Cabinet])
		WHERE [idSectie] = @IdSectie
	COMMIT Transaction
	end try
begin catch
		DECLARE @ErrorMessage NVARCHAR(1000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;
		SELECT @ErrorMessage = ERROR_MESSAGE(),
		@ErrorSeverity = ERROR_SEVERITY(),
		@ErrorState = ERROR_STATE();
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState );
end catch
GO

CREATE PROCEDURE usp_Insert_Pacient
@idMedic int,
@Nume varchar(30),
@Prenume varchar(30),
@CNP char(14),
@Varsta int,
@Telefon char(15),
@Email varchar(255) = NULL,
@DenumireOcupatie varchar(50),
@Programare smalldatetime
AS
	IF (DATEDIFF(year,GETDATE(),@Programare) <0 OR DATEDIFF(day,GETDATE(),@Programare) <0 OR DATEDIFF(month,GETDATE(),@Programare) <0)
			BEGIN
				RETURN(1)
			END
	ELSE
	BEGIN
	INSERT INTO [PACIENT] (
		   [idMedic]
		  ,[Nume]
		  ,[Prenume]
		  ,[CNP]
		  ,[Varsta]
		  ,[Telefon]
		  ,[DenumireOcupatie]
		  ,[Programare]
			)
			VALUES (
			@idMedic,
			@Nume ,
			@Prenume,
			@CNP,
			@Varsta ,
			@Telefon,
			@DenumireOcupatie,
			@Programare 
			)
	RETURN(0)
	END

GO

CREATE PROCEDURE usp_Inserare_Diagnostic
AS
	DECLARE @MedicID int;
	BEGIN TRY
		BEGIN TRANSACTION
			INSERT INTO MEDICI(Nume,Prenume,idSectie,idFunctie,Cabinet,DataAngajarii) VALUES('VARGA','MIHAI',9,2,6,'10/7/2016');
			SET @MedicID = (SELECT idMedic FROM MEDICI WHERE Nume='VARGA' AND Prenume='MIHAI');
			--CHIOREAN
			INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,Varsta,idMedic,Programare) VALUES('CHIRA','MIRCEA',5150808018339,0754009036,'Prescolar',5,
			@MedicID,'2021-02-11 15:00:00');
			INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES((SELECT idPacient FROM PACIENT WHERE Nume='CHIRA' AND Prenume='MIRCEA'),@MedicID,'Miopie');
			COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		DECLARE @ErrorMessage NVARCHAR(1000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;
		SELECT @ErrorMessage = ERROR_MESSAGE(),
		@ErrorSeverity = ERROR_SEVERITY(),
		@ErrorState = ERROR_STATE();
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState );
		ROLLBACK TRANSACTION
	END CATCH
GO
