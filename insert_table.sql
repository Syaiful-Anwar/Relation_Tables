--insert data to table employee
INSERT INTO employee (
Id, EmployeeId, FullName, BirthDate, Address
)
   VALUES
   (1, '10105001', 'Ali Anton', '19-Aug-1982', 'Jakarta Utara'),
   (2, '10105002', 'Rara Siva', '1-Jan-82', 'Mandalika'),
   (3, '10105003', 'Rini Aini', '20-Feb-82', 'Sumbawa Besar'),
   (4, '10105004', 'Budi', '22-Feb-82', 'Mataram Kota');
   
--insert table position history
INSERT INTO position_history (Id, PosId, PosTitle, EmployeeId, StartDate, EndDate)
	VALUES (1, '50000', 'IT Manager', '10105001', '1-Jan-2022', '28-Feb-2022'),
	(2, '50001', 'IT Sr. Manager', '10105001', '1-Mar-2022', '31-Dec-2022'),
	(3, '50002', 'Programmer Analyst', '10105002', '1-Jan-2022', '28-Feb-2022'),
	(4, '50003', 'Sr. Programmer Analyst', '10105002', '1-Mar-2022', '31-Dec-2022'),
	(5, '50004', 'IT Admin', '10105003', '1-Jan-2022', '28-Feb-2022'),
	(6, '50005', 'IT Secretary', '10105003', '1-Mar-2022', '31-Dec-2022');