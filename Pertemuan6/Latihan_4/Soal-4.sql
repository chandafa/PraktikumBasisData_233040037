SELECT 
    e.Name AS EmployeeName,
    s.Salaries
FROM 
    Employee e
FULL OUTER JOIN 
    Salaries s ON e.EmployeeID = s.EmployeeID;
