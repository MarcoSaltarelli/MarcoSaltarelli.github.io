DECLARE  @T1 table ( Nome varchar(50),
					 Email varchar(50))
DECLARE  @T2 table ( Nominativo varchar(50),
					 Email varchar(50))

INSERT INTO @T1 VALUES ('Mario','Mario@dominio.com') 
INSERT INTO @T1 VALUES ('Giovanni','Giovanni@dominio.com') 
INSERT INTO @T1 VALUES ('Francesco','Francesco@dominio.com') 


INSERT INTO @T2 VALUES ('Salvatore','Salvatore@dominio.com') 
INSERT INTO @T2 VALUES ('Giuseppe','Giuseppe@dominio.com') 
INSERT INTO @T2 VALUES ('Giovanni','Giovanni@dominio.com') 



SELECT Nome,Email
FROM @T1
UNION 
SELECT Nominativo,Email
FROM @T2



SELECT Nome,Email
FROM @T1
UNION  ALL
SELECT Nominativo,Email
FROM @T2




