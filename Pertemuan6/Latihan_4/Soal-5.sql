SELECT 
    e.Name AS EmployeeName,
    p.ProjectName
FROM 
    Employee e
CROSS JOIN 
    Projects p;
