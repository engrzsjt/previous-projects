SELECT 
    c.FirstName, 
    c.LastName, 
    c.Email, 
    SUM(i.Total) as TotalSpent
FROM Customer c
JOIN invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.customerid, c.FirstName, c.LastName, c.Email
ORDER BY totalspent DESC; 