SELECT 
    DATE_FORMAT(InvoiceDate, '%Y-%m') AS Month,
    ROUND(SUM(Total), 2) AS TotalRevenue
FROM Invoice
GROUP BY DATE_FORMAT(InvoiceDate, '%Y-%m')
ORDER BY Month ASC;