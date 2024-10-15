SELECT 
    OrderID, 
    OrderDate, 
    custid, 
    empid
FROM 
    Sales.Orders
WHERE 
    OrderDate = (SELECT MAX(OrderDate) FROM Sales.Orders);