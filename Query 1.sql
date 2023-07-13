SELECT * FROM Sales;

SELECT SaleDate, Amount, Customers FROM Sales;
SELECT Amount, customers, GeoID FROM Sales;

SELECT SaleDate, Amount, Boxes, (Amount / Boxes) AS Income FROM Sales;

SELECT * FROM Sales
WHERE Amount > 10000;

SELECT * FROM Sales
WHERE Amount > 10000
ORDER BY Amount DESC;

SELECT * FROM Sales
WHERE GeoID = 'G1'
ORDER BY PID, Amount DESC;

SELECT * FROM sales
WHERE Amount > 10000 AND SaleDate >= '2022-01-01';

SELECT SaleDate, Amount FROM sales
WHERE Amount > 10000 AND year(SaleDate) = 2022
ORDER BY Amount DESC;

SELECT * FROM Sales
WHERE Boxes > 0 AND Boxes <= 50;

SELECT * FROM sales
WHERE boxes BETWEEN 0 AND 50;

SELECT SaleDate, Amount, Boxes, WEEKDAY(SaleDate) AS 'Day of week'
FROM sales
WHERE WEEKDAY(SaleDate) = 4;

SELECT * FROM People
WHERE Team = 'Delish' OR Team = 'Jucies';

SELECT * FROM People
WHERE Team IN ('Delish', 'Jucies');

SELECT * FROM People
WHERE Salesperson LIKE 'B%';

SELECT * FROM People
WHERE Salesperson LIKE '%B%';

SELECT * FROM Sales;

SELECT SaleDate, Amount, 
	CASE 	WHEN Amount < 1000 then 'Under 1k'
			WHEN Amount < 5000 then 'Under 5k'
			WHEN Amount < 10000 then 'Under 10k'
            ELSE '10k or more'
		END AS 'Amount category'
FROM sales;

