CREATE DATABASE Hospital;
USE Hospital;

DROP TABLE IF EXISTS Patient;
#DROP TABLE IF EXISTS Department;
DROP TABLE IF EXISTS Room;
DROP TABLE IF EXISTS Disease;
DROP TABLE IF EXISTS Medicine;
DROP TABLE IF EXISTS Nurse;
DROP TABLE IF EXISTS Doctor;

#CREATE TABLE Department
#	(Dept_ID		TINYINT,
#	 Dept_Name		VARCHAR(60),
#	 PRIMARY KEY(Dept_ID)
#	);
    
CREATE TABLE Room
	(Room_ID		SMALLINT,
	 Room_InUse		VARCHAR(1),    # Y/N
	 PRIMARY KEY(Room_ID)
	);
 
 CREATE TABLE Disease
	(Disc_Name		CHAR,
     Disc_Description	CHAR,
	 PRIMARY KEY(Disc_Name)
	);
    
 CREATE TABLE Medicine
	(Medi_Name		CHAR,
     Medi_Quantity		SMALLINT,
     Medi_Description	CHAR,
	 PRIMARY KEY(Medi_Name)
	);
    
CREATE TABLE Nurse
	(Nurs_ID		SMALLINT,
	 Nurs_Name		VARCHAR(60),
	 Nurs_Gender	VARCHAR(1),	# M/F
     Nurs_Seniority	VARCHAR(20),
	 Nurs_Salary	SMALLINT,
     Nurs_Age		INT,
	 PRIMARY KEY(Nurs_ID)
	);
    
CREATE TABLE Doctor
	(Doct_ID		SMALLINT,
	 Doct_Name		VARCHAR(60),
	 Doct_Gender	VARCHAR(1),	# M/F
     Doct_Seniority	VARCHAR(20),
	 Doct_Salary	SMALLINT,
     Doct_Age		INT,
     Doct_Dept		VARCHAR(50),
	 PRIMARY KEY(Doct_ID)
	);

CREATE TABLE Patient
	(Pati_ID		SMALLINT,
	 Pati_Name		VARCHAR(60),
	 Pati_Gender	VARCHAR(1),	# M/F
     Pati_Nation	VARCHAR(30),
	 Pati_RoomID	SMALLINT,
	 Pati_Disease	CHAR,
     Pati_Medicine	CHAR,
	 Pati_NurseID	SMALLINT,
	 Pati_DoctorID	SMALLINT,
     Pati_Age		TINYINT,
	 Pati_Urgent	VARCHAR(1),    # Y/N
	 PRIMARY KEY(Pati_ID),
     FOREIGN KEY(Pati_RoomID) REFERENCES Room(Room_ID) ON DELETE SET NULL,
     FOREIGN KEY(Pati_Disease) REFERENCES Disease(Disc_Name) ON DELETE SET NULL,
     FOREIGN KEY(Pati_Medicine) REFERENCES Medicine(Medi_Name) ON DELETE SET NULL,
     FOREIGN KEY(Pati_NurseID) REFERENCES Nurse(Nurs_ID) ON DELETE SET NULL,
     FOREIGN KEY(Pati_DoctorID) REFERENCES Doctor(Doct_ID) ON DELETE SET NULL
	);
    
    DROP DATABASE Hospital; 
    