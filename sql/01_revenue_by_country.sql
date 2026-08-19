SELECT Country, ROUND(SUM(Total), 2) AS TotalRevenue
FROM Customer
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
GROUP BY Country
ORDER BY TotalRevenue DESC;