USE Proiect_Policlinica
GO

CREATE FUNCTION ValidareDataAngajarii ( @DataNast date, @DataAng date)
RETURNS BIT
AS
BEGIN
	DECLARE @valid BIT = 1
	IF (DATEDIFF(yyyy , @DataAng,@DataNast) > 18)
	BEGIN
		SET @valid = 0;
	END
RETURN @valid
END
GO

CREATE FUNCTION dbo.ChkValidEmail(@EMAIL varchar(100))RETURNS bit as
BEGIN     
  DECLARE @bitEmailVal as Bit
  DECLARE @EmailText varchar(100)

  SET @EmailText=ltrim(rtrim(isnull(@EMAIL,'')))

  SET @bitEmailVal = case when @EmailText = '' then 0
                          when @EmailText like '% %' then 0                                                                                
                          when (@EmailText like '%[%' or @EmailText like '%]%') then 0
                          when @EmailText LIKE '%@%@%' then 0
                          when @EmailText NOT LIKE '_%@_%._%' then 0
                          else 1 
                      end
  RETURN @bitEmailVal
END 
GO
-------------------------------------------------------------------------------------
CREATE FUNCTION DefaultEmailPoliclinica()
	RETURNS varchar(50)
	AS 
	BEGIN
		DECLARE @email varchar(50)='medica@yahoo.com'
		RETURN @email
	END
GO

CREATE FUNCTION DefaultTelefonPoliclinica()
	RETURNS char(10)
	AS 
	BEGIN
		DECLARE @tel varchar(50)='0742121199'
		RETURN @tel
	END
GO


---------------------------------------------------------------------------------------
CREATE FUNCTION dbo.udf_pacientii_unui_medic (@nume varchar(30),@prenume varchar(30))
RETURNS TABLE
AS
RETURN
	SELECT P.Nume,P.Prenume,P.CNP,P.DenumireOcupatie,P.Programare FROM PACIENT P
	INNER JOIN MEDICI M ON M.idMedic=P.idMedic
	WHERE M.Nume = @nume AND M.Prenume = @prenume

GO


CREATE FUNCTION dbo.udf_mediiSpecialisti_dupaSectie_AN (@sectie varchar(50),@year int)
RETURNS TABLE
AS
RETURN
	SELECT M.Nume,M.Prenume,M.Cabinet,M.DataAngajarii FROM MEDICI M 
	INNER JOIN SECTII S ON S.idSectie=M.idSectie
	AND DATEPART(YEAR, M.DataAngajarii) = @year
	WHERE S.Denumire=@sectie;

GO
