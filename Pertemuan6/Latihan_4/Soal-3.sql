SELECT 
    p.ProjectName,
    d.DepartmentName
FROM 
    Projects p
LEFT JOIN 
    Departments d ON p.DepartmentsID = d.DepartmentsID;
