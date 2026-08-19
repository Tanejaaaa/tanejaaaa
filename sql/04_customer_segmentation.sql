WITH CustomerStats AS (
    SELECT 
        c.CustomerId,
        c.FirstName,
        c.LastName,
        MAX(i.InvoiceDate) AS LastPurchaseDate,
        COUNT(i.InvoiceId) AS PurchaseFrequency,
        ROUND(SUM(i.Total), 2) AS TotalSpent
    FROM Customer c
    JOIN Invoice i ON c.CustomerId = i.CustomerId
    GROUP BY c.CustomerId, c.FirstName, c.LastName
),
CustomerRecency AS (
    SELECT 
        *,
        DATEDIFF((SELECT MAX(InvoiceDate) FROM Invoice), LastPurchaseDate) AS DaysSinceLastPurchase
    FROM CustomerStats
)
SELECT
    *,
    CASE
        WHEN TotalSpent >= 40 AND DaysSinceLastPurchase <= 90 THEN 'High Value - Active'
        WHEN TotalSpent >= 40 AND DaysSinceLastPurchase > 90 THEN 'High Value - At Risk'
        WHEN TotalSpent < 40 AND DaysSinceLastPurchase <= 90 THEN 'Low Value - Active'
        ELSE 'Low Value - At Risk'
    END AS CustomerSegment
FROM CustomerRecency
ORDER BY TotalSpent DESC;