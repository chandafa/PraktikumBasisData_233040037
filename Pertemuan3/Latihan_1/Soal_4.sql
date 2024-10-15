SELECT 
    C.custid,
    C.CompanyName,
    O.OrderID,
    O.OrderDate
FROM 
    Sales.Customers AS C
LEFT JOIN 
	Sales.Orders AS O ON C.custid = O.custid
;