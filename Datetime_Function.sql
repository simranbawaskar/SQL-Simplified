use AdventureWorks2022;

--Retrieve all sales records from the Adventure Works Sales table.
select * from Sales.SalesOrderHeader;

--Find the earliest date of sale recorded in the Adventure Works Sales table.
SELECT MIN(OrderDate) from Sales.SalesOrderHeader;

--Find the latest date of sale recorded in the Adventure Works Sales table.
SELECT MAX(OrderDate) from Sales.SalesOrderHeader;

--Retrieve sales records for a specific date, such as January 1, 2011.
SELECT * from Sales.SaleSOrderHeader where CONVERT(DATE, OrderDate) = '01-01-2011';

--Count the number of sales records that occurred in the year 2012.
SELECT COUNT(*) FROM Sales.SalesOrderHeader where Year(OrderDate) = 2012; 

--Calculate the total sales amount for the month of March 2012.
SELECT SUM(SubTotal) from Sales.SalesOrderHeader where Month(OrderDate) = 03 AND Year(OrderDate) = 2012;

--Retrieve sales records for the last 7 days (assume present day as '2012-12-05'.
SELECT * from Sales.SalesOrderHeader where OrderDate BETWEEN dateadd(day,-7,'2021-12-05') and '2021-12-05';

--Calculate the average sales amount per day for the month of February 2012.
select avg(SubTotal) from Sales.SalesOrderHeader where YEAR(OrderDate) = 2012 AND MONTH(OrderDate) = 2; 

--Find the sales record with the highest sales amount in the Adventure Works Sales table.
SELECT  TOP 1 * from Sales.SalesOrderHeader ORDER BY TotalDue Desc;

--Retrieve sales records for the current year(assume current year as 2012).
select * from Sales.SalesOrderHeader where YEAR(OrderDate) = 2012;

--Calculate the total sales amount for each quarter of the year 2013.
SELECT SUM(TotalDue) as TotalSalesAmount, DATEPART(QUARTER, OrderDate) AS Quarter, YEAR(OrderDate) as Year from Sales.SalesOrderHeader where YEAR(OrderDate) = 2013 
GROUP BY YEAR(OrderDate), DATEPART(QUARTER,OrderDate);

--Count the number of sales records that occurred on weekends (Saturday and Sunday).
SELECT count(*) from Sales.SalesOrderHeader 


