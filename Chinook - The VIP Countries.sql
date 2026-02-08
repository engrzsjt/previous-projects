SELECT 
    i.billingcountry, SUM(i.Total) as TotalRevenue
FROM Invoice i
GROUP BY i.BillingCountry
HAVING SUM(i.Total) > 100
ORDER BY totalrevenue DESC;