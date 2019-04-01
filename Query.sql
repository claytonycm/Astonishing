# for connecting to local host, enter command line:
#    mysql -u root
# alternatively, if password is set, enter:
#    mysql -u root -p
# if neither works, enter:
#    mysqld_safe --skip-grant-tables &

# please include "Surgery" as one of Dept_Name

USE Hospital;

#list the name and salary for each doctor in decreasing order
SELECT Doct_Name, Doct_Salary FROM Doctor ORDER BY Doct_Salary DESC;

#list the patient name and whether is urgent for each patient group by urgent situation
SELECT Pati_Name, Pati_Urgent FROM Patient GROUP BY Pati_Urgent ORDER BY Pati_ID ASC;

#list all the patients that each doctor in surgery department is responsible for
SELECT Doct_Name, Pati_Name FROM Doctor NATURAL JOIN Patient WHERE Pati_DoctorID = Doct_ID AND Doct_Dept = "Surgery" GROUP BY Doct_Name;

#update all the doctors' salary in surgery department
UPDATE Doctor SET Doct_Salary = Doct_Salary * 1.2  WHERE Doct_Dept = "Surgery";

#delete the data of nurse with id 001
DELETE FROM Nurse WHERE Nurs_ID = "001";

#function to count the number of vacant beds for a given department
DROP FUNCTION IF EXISTS VacantBedCount;
CREATE FUNCTION VacantBedCount(vDept_Name VARCHAR(50)) RETURNS INT
RETURN (SELECT SUM(Room_VacantBeds) FROM Room
    WHERE Room_Dept = vDept_Name);
    
#procedure to remove patient from Patient table for a given name
DROP PROCEDURE IF EXISTS RemovePatient;
CREATE PROCEDURE RemovePatient(IN vPati_Name VARCHAR(50))
	DELETE FROM Patient WHERE Pati_Name = vPati_Name;
    
#transaction to move patient to another room
DROP PROCEDURE IF EXISTS TransferPatient;
DELIMITER //
CREATE PROCEDURE TransferPatient(IN vPati_Name VARCHAR(50), ori_Room_ID VARCHAR(10), new_Room_ID VARCHAR(10))
BEGIN
	DECLARE oriRoomVacantBed0, newRoomVacantBed0, oriRoomVacantBed1, newRoomVacantBed1 INT DEFAULT 0;
	START TRANSACTION;
    SET SQL_SAFE_UPDATES = 0;
    SET oriRoomVacantBed0 = (SELECT Room_VacantBed FROM Room WHERE Room_ID = ori_Room_ID);
    SET oriRoomVacantBed1 = oriRoomVacantBed0 + 1;
    SET newRoomVacantBed0 = (SELECT Room_VacantBed FROM Room WHERE Room_ID = new_Room_ID);
    SET newRoomVacantBed1 = newRoomVacantBed0 - 1;
    UPDATE Room SET Room_VacantBed = oriRoomVacantBed1 WHERE Room_ID = ori_Room_ID;
    UPDATE Room SET Room_VacantBed = newRoomVacantBed1 WHERE Room_ID = new_Room_ID;
    UPDATE Patient SET Pati_RoomID = new_Room_ID;
    IF ((oriRoomVacantBed0 + newRoomVacantBed0) = (oriRoomVacantBed1 + newRoomVacantBed1) AND (oriRoomVacantBed0 < 6)
		AND (newRoomVacantBed0 > 0))
        THEN COMMIT;
        ELSE ROLLBACK;
	END IF;
END;

#trigger before inserting on table Doctor, checking the initial salary is in range [30000, 300000]
#DROP TRIGGER IF EXISTS Doctor_Before_Insert;
DELIMITER //
CREATE TRIGGER Doctor_Before_Insert
BEFORE INSERT ON Doctor FOR EACH ROW
BEGIN
	IF NEW.Doct_Salary < 30000 THEN SET NEW.Doct_Salary = 30000;
    ELSE IF NEW.Doct_Salary > 300000 THEN SET NEW.Doct_Salary = 300000;
    END IF;
END;

#create an event that each year updating the age of all staff
DROP PROCEDURE IF EXISTS UpdateAgeForAllStaff;
DELIMITER //
CREATE PROCEDURE UpdateAgeForAllStaff()
BEGIN
    UPDATE Doctor SET Doctor_Age = Doctor_Age + 1;
    UPDATE Nurse SET Nurs_Age = Nurs_Age + 1;
END;
 
SET GLOBAL EVENT_SCHEDULER = 1;
DROP EVENT IF EXISTS UpdateAge;
DELIMITER //
CREATE EVENT UpdateAge ON SCHEDULE EVERY 1 YEAR
STARTS '2019-01-01 00:00:01'
DO CALL UpdateAgeForAllStaff;
