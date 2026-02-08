SELECT
	g.Name, 
	COALESCE(SUM(il.Quantity),0) as TotalSold
FROM Genre g
LEFT JOIN Track t ON g.GenreId = t.GenreId
LEFT JOIN InvoiceLine il ON t.TrackId = il.TrackId
GROUP BY g.GenreId, g.Name
ORDER BY totalsold DESC;