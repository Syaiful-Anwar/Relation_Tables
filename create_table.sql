--create table employee
CREATE TABLE employee (
    Id INTEGER IDENTITY NOT NULL PRIMARY KEY,
    EmployeeId VARCHAR(10) NOT NULL UNIQUE,
    FullName VARCHAR(100) NOT NULL,
    BirthDate DATE NOT NULL,
    Address VARCHAR(500)
	);

--insert data to table employee
INSERT INTO employee (
Id, EmployeeId, FullName, BirthDate, Address
)
   VALUES
   (1, '10105001', 'Ali Anton', '19-Aug-1982', 'Jakarta Utara'),
   (2, '10105002', 'Rara Siva', '1-Jan-82', 'Mandalika'),
   (3, '10105003', 'Rini Aini', '20-Feb-82', 'Sumbawa Besar'),
   (4, '10105004', 'Budi', '22-Feb-82', 'Mataram Kota');
   
--create table position history
CREATE TABLE position_history (
    Id INTEGER IDENTITY NOT NULL PRIMARY KEY,
    PosId VARCHAR(10) NOT NULL,
    PosTitle VARCHAR(100) NOT NULL,
    EmployeeId VARCHAR(10) NOT NULL,
    StartDate DATE NOT NULL,
	EndDate DATE NOT NULL
	);
	
--insert table position history
INSERT INTO position_history (Id, PosId, PosTitle, EmployeeId, StartDate, EndDate)
	VALUES (1, '50000', 'IT Manager', '10105001', '1-Jan-2022', '28-Feb-2022'),
	(2, '50001', 'IT Sr. Manager', '10105001', '1-Mar-2022', '31-Dec-2022'),
	(3, '50002', 'Programmer Analyst', '10105002', '1-Jan-2022', '28-Feb-2022'),
	(4, '50003', 'Sr. Programmer Analyst', '10105002', '1-Mar-2022', '31-Dec-2022'),
	(5, '50004', 'IT Admin', '10105003', '1-Jan-2022', '28-Feb-2022'),
	(6, '50005', 'IT Secretary', '10105003', '1-Mar-2022', '31-Dec-2022');
	
--select employee position history
SELECT
a.EmployeeId,
a.FullName,
a.BirthDate,
a.Address,
b.PosId,
b.PosTitle,
b.StartDate,
b.EndDate
FROM employee a
INNER JOIN position_history b
ON a.EmployeeId=b.EmployeeId;