USE Proiect_Policlinica
GO

--populare tabela FUNCTII
INSERT INTO FUNCTII (GradProfesional,Salariu) VALUES ('MEDIC PRIMAR',12500);
INSERT INTO FUNCTII (GradProfesional,Salariu) VALUES ('MEDIC SPECIALIST',9900);
INSERT INTO FUNCTII (GradProfesional,Salariu) VALUES ('MEDIC REZIDENT', 6400);
GO

--populare tabela Sectii
INSERT  INTO  SECTII  (Denumire)  VALUES  ('ALERGOLOGIE');
INSERT  INTO  SECTII  (Denumire)  VALUES  ('CARDIOLOGIE');
INSERT  INTO  SECTII  (Denumire)  VALUES  ('ENDOCRINOLOGIE');
INSERT  INTO  SECTII  (Denumire)  VALUES  ('GASTROENTEROLOGIE');
INSERT  INTO  SECTII  (Denumire)  VALUES  ('DERMATOLOGIE');
INSERT  INTO  SECTII  (Denumire)  VALUES  ('MEDICINA DE FAMILIE');
INSERT  INTO  SECTII  (Denumire)  VALUES  ('NEUROLOGIE');
INSERT  INTO  SECTII  (Denumire)  VALUES  ('OFTALMOLOGIE');
INSERT  INTO  SECTII  (Denumire)  VALUES  ('PEDIATRIE');
GO


--populare tabela MEDICI
--medicina de familie
INSERT INTO MEDICI(Nume,Prenume,idSectie,idFunctie,Cabinet,DataAngajarii) VALUES('DEMIAN','LUIZA',6,1,1,'3/11/2009');
INSERT INTO MEDICI(Nume,Prenume,idSectie,idFunctie,Cabinet,DataAngajarii) VALUES('POPA','MADALINA',6,1,2,'2/1/2008');
INSERT INTO MEDICI(Nume,Prenume,idSectie,idFunctie,Cabinet,DataAngajarii) VALUES('FRATILA','ADRIAN',6,1,3,'5/17/2012');
INSERT INTO MEDICI(Nume,Prenume,idSectie,idFunctie,Cabinet,DataAngajarii) VALUES('POPOVICIU','SIMONA',6,1,4,'7/27/2013');
GO
--pediatrie
INSERT INTO MEDICI(Nume,Prenume,idSectie,idFunctie,Cabinet,DataAngajarii) VALUES('LUCA','ELENA',9,2,5,'11/22/2015');
INSERT INTO MEDICI(Nume,Prenume,idSectie,idFunctie,Cabinet,DataAngajarii) VALUES('PASCA','IOAN',9,2,6,'10/7/2016');
GO
--oftalmologie
INSERT INTO MEDICI(Nume,Prenume,idSectie,idFunctie,Cabinet,DataAngajarii) VALUES('SABAU','MARIA',8,2,7,'7/3/2009');
INSERT INTO MEDICI(Nume,Prenume,idSectie,idFunctie,Cabinet,DataAngajarii) VALUES('BARBU','ALEXANDRU',8,3,7,'8/17/2009');
--cardiologie
INSERT INTO MEDICI(Nume,Prenume,idSectie,idFunctie,Cabinet,DataAngajarii) VALUES('BOTNARU','FLORINA',2,2,8,'7/1/2014');
INSERT INTO MEDICI(Nume,Prenume,idSectie,idFunctie,Cabinet,DataAngajarii) VALUES('GAL','MARIN',2,3,8,'5/1/2008');
INSERT INTO MEDICI(Nume,Prenume,idSectie,idFunctie,Cabinet,DataAngajarii) VALUES('BABES','EMILIA',2,2,9,'10/7/2011');
INSERT INTO MEDICI(Nume,Prenume,idSectie,idFunctie,Cabinet,DataAngajarii) VALUES('TICA','OTILIA',2,3,9,'11/15/2008');
--neurologie
INSERT INTO MEDICI(Nume,Prenume,idSectie,idFunctie,Cabinet,DataAngajarii) VALUES('DRAGOMIR','ANDREI',7,2,10,'7/1/2010');
INSERT INTO MEDICI(Nume,Prenume,idSectie,idFunctie,Cabinet,DataAngajarii) VALUES('GRIGORESCU','CORINA',7,2,11,'4/1/2012');
INSERT INTO MEDICI(Nume,Prenume,idSectie,idFunctie,Cabinet,DataAngajarii) VALUES('GERMAN','VASILE',7,2,12,'10/1/2011');
--gastroenterologie
INSERT INTO MEDICI(Nume,Prenume,idSectie,idFunctie,Cabinet,DataAngajarii) VALUES('FAUR','LUCIAN',4,2,13,'9/23/2015');
INSERT INTO MEDICI(Nume,Prenume,idSectie,idFunctie,Cabinet,DataAngajarii) VALUES('CORDOS','CLAUDIA',4,2,14,'3/1/2010');
INSERT INTO MEDICI(Nume,Prenume,idSectie,idFunctie,Cabinet,DataAngajarii) VALUES('VLAD','ANDREEA',4,2,15,'11/1/2009');
--endocrinologie
INSERT INTO MEDICI(Nume,Prenume,idSectie,idFunctie,Cabinet,DataAngajarii) VALUES('FLOREA','MARIUS',3,2,16,'8/17/2017');
INSERT INTO MEDICI(Nume,Prenume,idSectie,idFunctie,Cabinet,DataAngajarii) VALUES('DIMA','ANCA',3,2,17,'9/1/2013');
--dermatologie
INSERT INTO MEDICI(Nume,Prenume,idSectie,idFunctie,Cabinet,DataAngajarii) VALUES('LAZAR','VICTOR',5,2,18,'6/1/2018');
INSERT INTO MEDICI(Nume,Prenume,idSectie,idFunctie,Cabinet,DataAngajarii) VALUES('GRIGORESCU','CORINA',5,3,18,'5/1/2015');
--alergologie
INSERT INTO MEDICI(Nume,Prenume,idSectie,idFunctie,Cabinet,DataAngajarii) VALUES('POPA','VIRGIL',1,2,19,'3/1/2017');
INSERT INTO MEDICI(Nume,Prenume,idSectie,idFunctie,Cabinet,DataAngajarii) VALUES('BUSTEA','MAGDALENA',1,3,19,'4/1/2019');
GO

--populare tabela CONDUCATOR
INSERT INTO CONDUCATOR(Nume,Prenume,idSectie,Email,DataAngajarii) VALUES ('CIOLAN',  'GABRIEL',1,'ciolan_gabriel@yahoo.com','4/11/2008')
INSERT INTO CONDUCATOR(Nume,Prenume,idSectie,Email) VALUES ('KOVACS',  'MARCEL',2,'kovacs_marcel@yahoo.com')
INSERT INTO CONDUCATOR(Nume,Prenume,idSectie,Email) VALUES ('ZOLTAN',  'PAULA',3,'zoltan_paula@yahoo.com')
INSERT INTO CONDUCATOR(Nume,Prenume,idSectie,Email) VALUES ('COSTACHE',  'VASILE',4,'costache_vasile@yahoo.com')
INSERT INTO CONDUCATOR(Nume,Prenume,idSectie,Email,DataAngajarii) VALUES ('ROTARU',  'GHITA',5,'rotaru_ghita@yahoo.com','10/23/2013')
INSERT INTO CONDUCATOR(Nume,Prenume,idSectie,Email,DataAngajarii) VALUES ('VARLAN',  'GHEORGHE',6,'varlan_gheorghe@yahoo.com','1/8/2018')
INSERT INTO CONDUCATOR(Nume,Prenume,idSectie,Email) VALUES ('FILIP',  'NICOLETA',7,'filip_nicoleta@yahoo.com')
INSERT INTO CONDUCATOR(Nume,Prenume,idSectie,Email,DataAngajarii) VALUES ('POPESCU',  'ANICA',8,'popescu_anica@yahoo.com','7/1/2009')
INSERT INTO CONDUCATOR(Nume,Prenume,idSectie,Email,DataAngajarii) VALUES ('ISPAS',  'MARIA',9,'popescu_anica@yahoo.com','9/1/2012')
GO

--populare tabela ASISTENTI
INSERT INTO ASISTENTI(Nume,Prenume,Denumire,idSectie,Telefon,DataAngajarii,DataNasterii) VALUES('BALAN','CODRUTA','ASISTENT MEDICAL PRINCIPAL',1,0264451188,'10/15/2005','10/15/1960');
INSERT INTO ASISTENTI(Nume,Prenume,Denumire,idSectie,Telefon,DataAngajarii,DataNasterii) VALUES('MARCUT','LAVINIA','ASISTENT MEDICAL PRINCIPAL',2,0264584276,'1/18/2008','7/11/1965');
INSERT INTO ASISTENTI(Nume,Prenume,Denumire,idSectie,DataAngajarii,DataNasterii) VALUES('TIMAR','IONELA','ASISTENT MEDICAL',2,'6/5/2011','9/12/1978');
INSERT INTO ASISTENTI(Nume,Prenume,Denumire,idSectie,Telefon,DataAngajarii,DataNasterii) VALUES('MITRASCA','FLORICA','ASISTENT MEDICAL PRINCIPAL',3,0264339609,'9/7/2015','10/13/1966');
INSERT INTO ASISTENTI(Nume,Prenume,Denumire,idSectie,Telefon,DataAngajarii,DataNasterii) VALUES('MICLAU','GEORGETA','ASISTENT MEDICAL',3,0264339609,'4/3/2015','6/21/1971');
INSERT INTO ASISTENTI(Nume,Prenume,Denumire,idSectie,Telefon,DataAngajarii,DataNasterii) VALUES('SZABO','CODRUTA','ASISTENT MEDICAL PRINCIPAL',4,0264596414,'10/8/2009','9/15/1965');
INSERT INTO ASISTENTI(Nume,Prenume,Denumire,idSectie,Telefon,DataAngajarii,DataNasterii) VALUES('MICLAU','MIUTA','ASISTENT MEDICAL',4,0264596414,'10/15/2017','8/5/1969');
INSERT INTO ASISTENTI(Nume,Prenume,Denumire,idSectie,DataAngajarii,DataNasterii) VALUES('BERARU','SIMONA','ASISTENT MEDICAL PRINCIPAL',5,'6/14/2005','10/15/1967');
INSERT INTO ASISTENTI(Nume,Prenume,Denumire,idSectie,DataAngajarii,DataNasterii) VALUES('ROMANIUC','NICOLETA','ASISTENT MEDICAL',5,'10/16/2008','3/24/1965');
INSERT INTO ASISTENTI(Nume,Prenume,Denumire,idSectie,DataAngajarii,DataNasterii) VALUES('TUNDREA','ANDRA','ASISTENT MEDICAL PRINCIPAL',6,'11/23/2006','4/15/1966');
INSERT INTO ASISTENTI(Nume,Prenume,Denumire,idSectie,DataAngajarii,DataNasterii) VALUES('BUZLEA','OANA','ASISTENT MEDICAL',6,'7/17/2019','9/17/1975');
INSERT INTO ASISTENTI(Nume,Prenume,Denumire,idSectie,DataAngajarii,DataNasterii) VALUES('KUGLIS','TUNDE','ASISTENT MEDICAL',6,'12/11/2016','12/12/1985');
INSERT INTO ASISTENTI(Nume,Prenume,Denumire,idSectie,DataAngajarii,DataNasterii) VALUES('BRAND','ALINA','ASISTENT MEDICAL PRINCIPAL',7,'2/1/2006','8/1/1970');
INSERT INTO ASISTENTI(Nume,Prenume,Denumire,idSectie,Telefon,DataAngajarii,DataNasterii) VALUES('OLAR','IOANA','ASISTENT MEDICAL PRINCIPAL',8,0264877432,'7/23/2016','11/12/1973');
INSERT INTO ASISTENTI(Nume,Prenume,Denumire,idSectie,DataAngajarii,DataNasterii) VALUES('STAN','NATALIA','ASISTENT MEDICAL',8,'3/22/2017','9/19/1987');
INSERT INTO ASISTENTI(Nume,Prenume,Denumire,idSectie,DataAngajarii,DataNasterii) VALUES('VIERIU','VALERIA','ASISTENT MEDICAL PRINCIPAL',9,'4/1/2018','7/3/1984');
INSERT INTO ASISTENTI(Nume,Prenume,Denumire,idSectie,DataAngajarii,DataNasterii) VALUES('SAS','MARIANA','ASISTENT MEDICAL',9,'9/1/2019','8/5/1989');
GO

--populare tabela pacient
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,Email,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('CHIOREAN','DANIEL',1951023010534,0760283001,'daniel.chiorean@gmail.com','C++ Developer',7,25,'2020-11-15 12:30:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,Email,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('GHERDAN','TRAIAN',1920625259178,0724010640,'dan_traian@gmail.com','Web Developer',16,28,'2020-11-14 12:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,Email,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('SABAU','FLORINA',2871121327319,0739033249,'florinaSabau@yahoo.com','Profesor',9,33,'2020-11-10 10:00:00');
GO

INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,Email,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('ZAHA','LAURA',2910208340964,0712036059,'laurazaha@gmail.com','Project Manager',20,29,'2020-11-14 11:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,Email,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('MICLE','DORIN',1850331014968,0759046370,'micle_dorin@yahoo.com','Jurist',13,35,'2020-11-15 10:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,Email,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('POPESCU','MIHAI',1981231403399,0722128199,'popescu_mihai@yahoo.com','Student',21,22,'2020-11-14 13:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,Email,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('DAN','RENATA',6000617093527,0750136069,'renatadan@yahoo.com','Student',17,20,'2020-11-14 14:00:00');
GO

INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('BOTA','LUCIAN',1891214010332,0719016731,'Inginer',23,31,'2020-11-24 09:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('ROTARU','RAZVAN',1850210381605,0762015371,'Mecanic',21,35,'2020-11-17 11:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('GANEA','TIBERIU',1871220185544,0758069052,'Judecator',14,33,'2020-12-14 12:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('SIRCA','EUGENINA',2950913242027,0736054091,'Vanzatoare',11,25,'2020-12-15 16:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('BALEA','VIORICA',2971202354958,0729085154,'Student',18,23,'2020-12-10 12:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('ISPAS','DANIEL',1460219097671,0725064486,'Pensionar',9,74,'2020-11-12 12:30:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('STANCA','GABRIELLA',6190515125578,0733049193,'Prescolar',5,1,'2020-12-17 17:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('IEPURE','NICOLAE',1390124091018,0745068053,'Pensionar',3,81,'2020-11-14 13:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('FODOR','MARCELA',2420429462505,0756020568,'Pensionar',3,72,'2020-11-10 11:30:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('LAZAR','VLAD',1731025214986,0723013237,'Tehnician',23,47,'2020-11-11 10:00:00');
GO

INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,Email,DenumireOcupatie,Varsta,idMedic,Programare) VALUES('VOICU','VIOLETA',2890723202380,0765046226,'viovoicu@yahoo.com','Inginer',31,21,'2020-12-18 14:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,Varsta,idMedic,Programare) VALUES('CHIOREAN','MIRCEA',5150408018339,0754009036,'Prescolar',5,5,'2020-12-19 15:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,Email,DenumireOcupatie,Varsta,idMedic,Programare) VALUES('ADAM','VALERIA',6010606451215,0755896012,'valeria.adam@yahoo.com','Student',19,11,'2020-12-20 14:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,Varsta,idMedic,Programare) VALUES('NICOARA','BOGDAN',5140813019507,0736057998,'Prescolar',6,6,'2020-12-21 13:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,Varsta,idMedic,Programare) VALUES('CRIHALMEAN','FLAVIUS',5171026127361,0735011731,'Prescolar',3,6,'2020-11-17 09:30:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,Varsta,idMedic,Programare) VALUES('ONCU','EMILIA',2881231293534,0754083054,'Avocat',32,18,'2020-11-10 16:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,Varsta,idMedic,Programare) VALUES('STEFAN','CLAUDIU',5101119449047,0753022078,'Elev',10,2,'2020-12-15 17:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,Varsta,idMedic,Programare) VALUES('BACRAU','DAVID',1550304271661,0725026048,'Pensionar',65,1,'2020-11-18 15:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,Email,DenumireOcupatie,Varsta,idMedic,Programare) VALUES('BOROS','ALEXANDRA',2990903308389,0731051495,'borosalexandra@gmail.com','Student',21,7,'2020-12-08 12:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,Varsta,idMedic,Programare) VALUES('SUCIU','IOAN',1910919412165,0725026948,'Sofer',29,15,'2020-12-13 16:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,Varsta,idMedic,Programare) VALUES('TAMAS','RAUL',1871028175252,0750562820,'Magazioner',33,16,'2020-12-02 14:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,Email,DenumireOcupatie,Varsta,idMedic,Programare) VALUES('ZINCA','DANA',2860915413576,0721951475,'danazinca@yahoo.com','Secretara',34,20,'2020-12-04 11:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,Varsta,idMedic,Programare) VALUES('GROZA','CATALIN',1991227513613,0748048738,'Student',21,18,'2020-12-22 17:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,Varsta,idMedic,Programare) VALUES('RUSU','CIPRIAN',5010412376033,0758048049,'Student',19,11,'2020-12-21 11:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,Varsta,idMedic,Programare) VALUES('PINTEA','RAMONA',2970520021725,0761080452,'Student',23,23,'2020-12-14 13:30:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,Varsta,idMedic,Programare) VALUES('PASCU','ADRIAN',1890713153741,0762039421,'Instalator',31,9,'2020-12-16 14:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,Varsta,idMedic,Programare) VALUES('CANTOR','GEORGETA',2900405146709,0736058028,'Educatoare',30,18,'2020-12-15 09:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,Varsta,idMedic,Programare) VALUES('ILIES','CODRUTA',2930525088601,0751085045,'Arhitect',27,7,'2020-12-05 15:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,Varsta,idMedic,Programare) VALUES('VOICULESCU','FELICIA',6030526104181,0753726948,'Elev',17,4,'2020-12-03 14:30:00');
GO

-------------------------------
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('CIOLAN','GABRIEL',1891016010332,0719016731,'Inginer',23,31,'2021-01-25 09:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('POPESCU','ANITA',1850722381605,0762015371,'Mecanic',21,35,'2021-01-26 11:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('MANEA','AUREL',1870217185544,0758069052,'Jurist',14,33,'2021-12-27 12:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('DUMA','EUGENINA',2950819242027,0736054091,'Vanzatoare',11,25,'2021-12-25 16:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('BILC','ALEXANDRU',2970512354958,0729085154,'Student',18,23,'2021-12-20 12:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('ORBAN','ADRIAN',1460913097671,0725064486,'Pensionar',9,74,'2021-11-21 15:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('ENACHE','STELLA',6190618125578,0733049193,'Prescolar',5,1,'2021-12-22 17:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('ISPAS','MONICA',1390925091018,0745068053,'Pensionar',3,81,'2021-11-25 13:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('FILIMON','DELIA',2420721462505,0756020568,'Pensionar',3,72,'2021-11-29 14:00:00');
INSERT INTO PACIENT(Nume,Prenume,CNP,Telefon,DenumireOcupatie,idMedic,Varsta,Programare) VALUES('GROZA','IONICA',1731115214986,0723013237,'Tehnician',23,47,'2021-11-28 10:00:00');
GO

------------------------

--populare tabela DIAGNOSTIC
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(1,7,'Conjunctivita');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(2,16,'Gastrita cronica');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(3,9,'Control');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(4,20,'Hipertiroidism');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(5,13,'Scleroza Multipla');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(6,21,'Acneea');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(7,17,'Reflux gastro-esofagian');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(8,23,'Rinita Alergica');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(9,21,'Rozaceea');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(10,14,'Encefalita');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(11,11,'Hipertensiunea arterială');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(12,18,'Ulcerul peptic gastro-duodenal');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(13,9,'Fibrilatia atriala');
GO

INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(14,5,'Gripa');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(15,3,'Gripa');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(16,3,'Bronsita');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(17,23,'Alergie produsa de intepaturi de insecte');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(18,21,'Urticaria');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(19,5,'Varicela');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(20,11,'Insuficienta cardiaca');
GO

INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(21,6,'Virusul respirator');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(22,6,'Pojar');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(23,18,'Abces hepatic');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(24,2,'Afectiuni respiratorii');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(25,1,'Insomnie');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(26,7,'Miopie');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(27,15,'Cefaleea');
GO

INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(28,16,'Gastrita cronica');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(29,20,'Adenomul cromofob');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(30,18,'Angiodisplazia colonica');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(31,11,'Anevrismul aortic toracic');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(32,23,'Angioedemul');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(33,18,'Reflux gastro-esofagian');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(35,7,'Afectiune cristalin');
INSERT INTO DIAGNOSTIC(idPacient,idMedic,Denumire) VALUES(36,4,'Astm bronsic');
GO





