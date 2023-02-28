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