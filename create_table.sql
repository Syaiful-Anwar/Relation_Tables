--create table employee
CREATE TABLE employee (
    Id INTEGER IDENTITY NOT NULL PRIMARY KEY,
    EmployeeId VARCHAR(10) NOT NULL UNIQUE,
    FullName VARCHAR(100) NOT NULL,
    BirthDate DATE NOT NULL,
    Address VARCHAR(500)
	);

   
--create table position history
CREATE TABLE position_history (
    Id INTEGER IDENTITY NOT NULL PRIMARY KEY,
    PosId VARCHAR(10) NOT NULL,
    PosTitle VARCHAR(100) NOT NULL,
    EmployeeId VARCHAR(10) NOT NULL,
    StartDate DATE NOT NULL,
	EndDate DATE NOT NULL
	);