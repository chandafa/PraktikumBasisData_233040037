SELECT empid, firstname, lastname, titleofcourtesy,
CASE
	WHEN titleofcourtesy = 'Ms.' OR titleofcourtesy = 'Mrs.' THEN 'Female'
	WHEN titleofcourtesy = 'Mr.' THEN 'Male'
	ELSE 'Unknown'
END AS gender
FROM HR.Employees