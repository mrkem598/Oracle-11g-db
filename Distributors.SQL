SPOOL Kloutput.log
DROP TABLE Distributors CASCADE CONSTRAINTS;
COMMIT;

CREATE TABLE Distributors
(
	Distributors_ID NUMBER(5) PRIMARY KEY NOT NULL,
	Company_Name VARCHAR2(255) NOT NULL,
	Street_Address NUMBER(5) NOT NULL,
	City VARCHAR2(255) NOT NULL,
	State CHAR(2) NOT NULL,
	Country VARCHAR2(255) NOT NULL,
	Quantity NUMBER(10) NOT NULL
);
COMMIT;

INSERT INTO Distributors VALUES (10,'Love Movies',1862,'Washington','DC','USA',19);
INSERT INTO Distributors VALUES (11,'Love Movies',901,'Washington','DC','USA',22);
INSERT INTO Distributors VALUES (12,'Love Movies',990,'RosslynRFHIW','MU','ETHIOPIA',95);
INSERT INTO Distributors VALUES (13,'Love Movies',667,'Gleen','VA','USA',99);
INSERT INTO Distributors VALUES (14,'Love Movies',1863,'Washin','Addis','Eritria',78);
COMMIT;

SELECT * FROM Distributors;
COMMIT;
UPDATE Distributors
 	SET Company_Name='Walgreens'
WHERE Distributors_ID=10;
UPDATE Distributors
 	SET Company_Name='DeltaMovies',
	City='Gleb',
	State='MD'
WHERE Distributors_ID=13;
DELETE FROM Distributors
	WHERE Country='US';
DELETE FROM Distributors
	WHERE Country='USA';
SELECT Distributors_ID, Company_Name,Street_Address
	FROM Distributors
WHERE Distributors_ID=12;
SELECT DISTINICT Quantity
	FROM Distributors
SET SERVEROUTPUT OFF
SPOOL OFF
