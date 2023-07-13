SELECT GeoID, Sum(Amount), Avg(Amount), Sum(Boxes)
FROM sales
Group by GeoID;

SELECT G.Geo, Sum(Amount), Avg(Amount), Sum(Boxes)
FROM Sales S 
JOIN Geo G ON S.GeoID = G.GeoID
GROUP BY G.Geo;

SELECT PR.Category, P.Team, Sum(Boxes), Sum(Amount)
FROM Sales S 
JOIN People P ON P.SPID = S.SPID
JOIN Products PR ON PR.PID = S.PID
GROUP BY PR.Category, P.Team;


SELECT PR.Category, P.Team, Sum(Boxes), Sum(Amount)
FROM Sales S 
JOIN People P ON P.SPID = S.SPID
JOIN Products PR ON PR.PID = S.PID
WHERE P.Team <> ''
GROUP BY PR.Category, P.Team
ORDER BY PR.Category, P.Team;

SELECT PR.Product, Sum(S.Amount) AS 'Total Amount'
FROM Sales S
JOIN Products PR ON PR.PID = S.PID
GROUP BY PR.Product
ORDER BY 'Total Amount' DESC
LIMIT 10;
