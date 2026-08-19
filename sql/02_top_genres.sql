SELECT Genre.Name, ROUND(SUM(InvoiceLine.UnitPrice * InvoiceLine.Quantity), 2) AS TotalRevenue
FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
JOIN Genre ON Track.GenreId = Genre.GenreId
GROUP BY Genre.Name
ORDER BY TotalRevenue DESC;