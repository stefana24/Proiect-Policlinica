--Creare baza de date
CREATE DATABASE Proiect_Policlinica
GO

--Selectam baza de date pt a introduce tabelele
USE Proiect_Policlinica
GO

--Creare tabela Functii
CREATE TABLE FUNCTII(
	idFunctie int PRIMARY KEY IDENTITY,
	GradProfesional varchar(50) NOT NULL,
	Salariu decimal CHECK(Salariu > 0)
)
GO

--Creare baza de date SECTII
CREATE TABLE SECTII(
	idSectie int PRIMARY KEY IDENTITY,
	Denumire varchar(50) NOT NULL
)
GO

--creare tabela Conducator
CREATE TABLE CONDUCATOR(
	 idConducator int PRIMARY KEY IDENTITY,
	 idSectie int NOT NULL,
	 Nume varchar(30) NOT NULL,
	 Prenume varchar(30) NOT NULL,
	 DataAngajarii date,
	 Email varchar(50) NOT NULL
)
GO

--creare tabela ASISTENTI
CREATE TABLE ASISTENTI(
	idAsistent int PRIMARY KEY IDENTITY,
	idSectie int NOT NULL,
	Denumire varchar(50) DEFAULT 'Asistent',
	Nume varchar(30) NOT NULL,
	Prenume varchar(30) NOT NULL,
	DataAngajarii date NOT NULL,
	DataNasterii date,
	Telefon varchar(10)
)
GO

--Creare tabela Medici
CREATE TABLE MEDICI(
	idMedic int PRIMARY KEY IDENTITY,
	idFunctie int NOT NULL,
	idSectie int NOT NULL,
	Cabinet int NOT NULL,
	Nume varchar(30) NOT NULL,
	Prenume varchar(30) NOT NULL,
	DataAngajarii date NOT NULL
)
GO


--creare tabela PACIENT
CREATE TABLE PACIENT(
	idPacient int PRIMARY KEY IDENTITY,
	idMedic int NOT NULL,
	Nume varchar(30) NOT NULL,
	Prenume varchar(30) NOT NULL,
	CNP char(14) NOT NULL UNIQUE,
	Varsta int NOT NULL,
	Telefon char(15) NOT NULL,
	Email varchar(255),
	DenumireOcupatie varchar(50) NOT NULL,
	Programare smalldatetime NOT NULL
)
GO


--creare tabela DIAGNOSTIC
CREATE TABLE DIAGNOSTIC(
	idDiagnostic int PRIMARY KEY IDENTITY,
	idMedic int NOT NULL,
	idPacient  int NOT NULL,
	Denumire varchar(60) NOT NULL
)
GO




