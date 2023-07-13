SELECT * FROM sales;

SELECT * FROM People;

SELECT S.SaleDate, S.Amount, P.salesperson, S.SPID, P.SPID
FROM Sales S
JOIN People p ON P.SPID = S.SPID;

SELECT S.Saledate, S.Amount, PR.product
FROM Sales S
LEFT JOIN Products PR ON PR.PID = S.pid;

SELECT S.SaleDate, S.Amount, P.salesperson, PR.Product, P.Team
FROM Sales S
JOIN People p ON P.SPID = S.SPID
JOIN Products PR ON PR.PID = S.pid;


SELECT S.SaleDate, S.Amount, P.salesperson, PR.Product, P.Team
FROM Sales S
JOIN People p ON P.SPID = S.SPID
JOIN Products PR ON PR.PID = S.pid
WHERE S.Amount < 500
AND P.Team = 'Delish';

SELECT S.SaleDate, S.Amount, P.salesperson, PR.Product, P.Team
FROM Sales S
JOIN People p ON P.SPID = S.SPID
JOIN Products PR ON PR.PID = S.pid
WHERE S.Amount < 500
AND P.Team = '';

SELECT S.SaleDate, S.Amount, P.salesperson, PR.Product, P.Team
FROM Sales S
JOIN People p ON P.SPID = S.SPID
JOIN Products PR ON PR.PID = S.pid
JOIN Geo G ON G.GeoID = S.GeoID
WHERE S.Amount < 500
AND P.Team = ''
AND G.Geo IN ('New Zealand', 'India')
ORDER BY SaleDate;