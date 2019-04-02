DROP DATABASE IF EXISTS Hospital; 
CREATE DATABASE Hospital;
USE Hospital;

DROP TABLE IF EXISTS Patient;
DROP TABLE IF EXISTS Department;
DROP TABLE IF EXISTS Room;
DROP TABLE IF EXISTS Disease;
DROP TABLE IF EXISTS Medicine;
DROP TABLE IF EXISTS Nurse;
DROP TABLE IF EXISTS Doctor;

CREATE TABLE Department
	(Dept_ID		INT,
	 Dept_Name		VARCHAR(50),
	 PRIMARY KEY(Dept_ID)
	);
    
CREATE TABLE Room
	(Room_ID			INT,
	 Room_VacantBed		INT,    # vacant number of beds in range [0, 6]
	 Room_Dept_ID		INT,
     PRIMARY KEY(Room_ID),
     FOREIGN KEY(Room_Dept_ID) REFERENCES Department(Dept_ID) ON DELETE SET NULL
	);
 
 CREATE TABLE Disease
	(Disc_Name			VARCHAR(50),
     Disc_Description	VARCHAR(100),
	 PRIMARY KEY(Disc_Name)
	);
    
 CREATE TABLE Medicine
	(Medi_Quantity		INT,
     Medi_Name		 	VARCHAR(50),
     Medi_Description	VARCHAR(100),
	 PRIMARY KEY(Medi_Name)
	);
    
CREATE TABLE Nurse
	(Nurs_ID		INT,
	 Nurs_Name		VARCHAR(50),
	 Nurs_Gender	VARCHAR(1),	# M/F  
	 Nurs_Salary	INT,
     Nurs_Age		INT,
     Nurs_Seniority	INT,
	 PRIMARY KEY(Nurs_ID)
	);
    
CREATE TABLE Doctor
	(Doct_ID		INT, 
	 Doct_Name		VARCHAR(50),
	 Doct_Gender	VARCHAR(1),	# M/F  
     Doct_Dept_ID	INT,
	 Doct_Salary	INT,
     Doct_Age		INT,
     Doct_Seniority	INT,
	 PRIMARY KEY(Doct_ID),
     FOREIGN KEY(Doct_Dept_ID) REFERENCES Department(Dept_ID) ON DELETE SET NULL
	);

CREATE TABLE Patient
	(Pati_ID		INT,             
	 Pati_RoomID	INT,
	 Pati_NurseID	INT,
	 Pati_DoctorID	INT,
     Pati_Age		INT,
	 Pati_Name		VARCHAR(50),
	 Pati_Gender	VARCHAR(1),	# M/F
     Pati_Nation	VARCHAR(20),
	 Pati_Disease	VARCHAR(50),
     Pati_Medicine	VARCHAR(50), 
	 Pati_Urgent	VARCHAR(1),    # Y/N
	 PRIMARY KEY(Pati_ID),
     FOREIGN KEY(Pati_RoomID) REFERENCES Room(Room_ID) ON DELETE SET NULL,
     FOREIGN KEY(Pati_Disease) REFERENCES Disease(Disc_Name) ON DELETE SET NULL,
     FOREIGN KEY(Pati_Medicine) REFERENCES Medicine(Medi_Name) ON DELETE SET NULL,
     FOREIGN KEY(Pati_NurseID) REFERENCES Nurse(Nurs_ID) ON DELETE SET NULL,
     FOREIGN KEY(Pati_DoctorID) REFERENCES Doctor(Doct_ID) ON DELETE SET NULL
	);
    