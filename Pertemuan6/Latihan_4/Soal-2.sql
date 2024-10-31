SELECT 
    e.Name AS EmployeeName,
    p.ProjectName AS ProjectName
FROM 
    Employee e
LEFT JOIN 
    Projects p ON e.DepartmentsID = p.DepartmentsID;
