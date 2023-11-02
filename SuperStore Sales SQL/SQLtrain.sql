SELECT * FROM first_marco.trainforsql;

-- select the data we are going to use
SELECT RowID,ShipMode,CustomerName,Segment,City,State,Region,Category,SubCategory,Sales
FROM first_marco.trainforsql;



-- --------- Highest Sales -----------
-- looking at highest segment using sales
SELECT Segment, cast(max(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
GROUP BY Segment
ORDER BY TotalSales desc;

-- looking at highest shipmode using sales
SELECT ShipMode, cast(max(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
GROUP BY ShipMode
ORDER BY TotalSales desc;

-- looking at highest city using sales
SELECT City, cast(max(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
GROUP BY City
ORDER BY TotalSales desc;

-- looking at highest state using sales
SELECT State, cast(max(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
GROUP BY State
ORDER BY TotalSales desc;

-- looking at highest region using sales
SELECT Region, cast(max(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
GROUP BY Region
ORDER BY TotalSales desc;


-- --------- Quarter Highest Sales ----------
-- looking at highest segment using sales
SELECT Segment,OrderDate, cast(sum(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
WHERE YEAR(str_to_date(OrderDate, '%d/%m/%Y')) = 2016
AND QUARTER(str_to_date(OrderDate, '%d/%m/%Y')) IN (3)
AND Segment = 'Consumer'
GROUP BY Segment,OrderDate
ORDER BY TotalSales desc;


-- ------------ 2016 -----------

-- Year Total Sales by Segment---
SELECT Segment, cast(sum(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
WHERE YEAR(str_to_date(OrderDate, '%d/%m/%Y')) = 2016
GROUP BY Segment
ORDER BY TotalSales desc;

-- Year sales by ship mode ---
SELECT ShipMode, cast(sum(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
WHERE YEAR(str_to_date(OrderDate, '%d/%m/%Y')) = 2016
GROUP BY ShipMode
ORDER BY TotalSales desc;

-- Year sales by category ----
SELECT Category, cast(sum(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
WHERE YEAR(str_to_date(OrderDate, '%d/%m/%Y')) = 2016
GROUP BY Category
ORDER BY TotalSales desc;

-- Year sales by city ---
SELECT City, cast(sum(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
WHERE YEAR(str_to_date(OrderDate, '%d/%m/%Y')) = 2016
GROUP BY City
ORDER BY TotalSales desc;

-- Year sales by State
SELECT State, cast(sum(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
WHERE YEAR(str_to_date(OrderDate, '%d/%m/%Y')) = 2016
GROUP BY State
ORDER BY TotalSales desc;

-- Year city by region ---
SELECT Region, cast(sum(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
WHERE YEAR(str_to_date(OrderDate, '%d/%m/%Y')) = 2016
GROUP BY Region
ORDER BY TotalSales desc;

-- Customers ---
SELECT CustomerName, cast(sum(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
WHERE YEAR(str_to_date(OrderDate, '%d/%m/%Y')) in (2016)
GROUP BY CustomerName
ORDER BY TotalSales desc;

-- ------------ Total Sales in Quarter 1(Q1) By Segment-----------
SELECT Segment, cast(sum(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
WHERE YEAR(str_to_date(OrderDate, '%d/%m/%Y')) = 2016
AND QUARTER(str_to_date(OrderDate, '%d/%m/%Y')) IN (1)
GROUP BY Segment
ORDER BY TotalSales desc;

-- ------------ Total Sales in Quarter 2(Q2) By Segment-----------
SELECT Segment, cast(sum(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
WHERE YEAR(str_to_date(OrderDate, '%d/%m/%Y')) = 2016
AND QUARTER(str_to_date(OrderDate, '%d/%m/%Y')) IN (2)
GROUP BY Segment
ORDER BY TotalSales desc;

-- ------------ Total Sales in Quarter 3(Q3) By Segment-----------
SELECT Segment, cast(sum(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
WHERE YEAR(str_to_date(OrderDate, '%d/%m/%Y')) = 2016
AND QUARTER(str_to_date(OrderDate, '%d/%m/%Y')) IN (3)
GROUP BY Segment
ORDER BY TotalSales desc;

-- ------------ Total Sales in Quarter 4(Q4) By Segment-----------
SELECT Segment, cast(sum(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
WHERE YEAR(str_to_date(OrderDate, '%d/%m/%Y')) = 2016
AND QUARTER(str_to_date(OrderDate, '%d/%m/%Y')) IN (4)
GROUP BY Segment
ORDER BY TotalSales desc;

-- --------2017 -----------
-- Year Sales ------
SELECT Segment, cast(sum(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
WHERE YEAR(str_to_date(OrderDate, '%d/%m/%Y')) = 2017
GROUP BY Segment
ORDER BY TotalSales desc;

-- Year sales by ship mode ---
SELECT ShipMode, cast(sum(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
WHERE YEAR(str_to_date(OrderDate, '%d/%m/%Y')) = 2017
GROUP BY ShipMode
ORDER BY TotalSales desc;

-- Year sales by category ----
SELECT Category, cast(sum(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
WHERE YEAR(str_to_date(OrderDate, '%d/%m/%Y')) = 2017
GROUP BY Category
ORDER BY TotalSales desc;

-- Year sales by city ---
SELECT City, cast(sum(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
WHERE YEAR(str_to_date(OrderDate, '%d/%m/%Y')) = 2017
GROUP BY City
ORDER BY TotalSales desc;

-- Year sales by State
SELECT State, cast(sum(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
WHERE YEAR(str_to_date(OrderDate, '%d/%m/%Y')) = 2017
GROUP BY State
ORDER BY TotalSales desc;

-- Year city by region ---
SELECT Region, cast(sum(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
WHERE YEAR(str_to_date(OrderDate, '%d/%m/%Y')) = 2017
GROUP BY Region
ORDER BY TotalSales desc;

-- Customers ---
SELECT CustomerName, cast(sum(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
WHERE YEAR(str_to_date(OrderDate, '%d/%m/%Y')) in (2017)
GROUP BY CustomerName
ORDER BY TotalSales desc;

-- -----------------Test run (ignore this block of code)-----------------
-- SELECT cast(max(Sales) as signed) as TotalSales
-- FROM first_marco.trainforsql
-- WHERE YEAR(str_to_date(OrderDate, '%d/%m/%Y')) = 2016
-- AND QUARTER(str_to_date(OrderDate, '%d/%m/%Y')) = 3
-- AND Segment = 'Consumer';

-- --------- Total Sales -----------
-- Total Sales VS Segment
-- looking at most bought segment using total sales
SELECT Segment, cast(sum(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
GROUP BY Segment
ORDER BY TotalSales desc;

-- Total Sales VS ShipMode
-- looking at most bought segment using total sales
SELECT ShipMode, cast(sum(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
GROUP BY ShipMode
ORDER BY TotalSales desc;

-- Total Sales VS City
SELECT City, cast(sum(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
GROUP BY City
ORDER BY TotalSales desc;

-- select the data we are going to use AND ORDER by sales
SELECT Sales,ShipMode,CustomerName,Segment,City,State,Region,Category,SubCategory
FROM first_marco.trainforsql
ORDER BY Sales desc;

-- CITY
-- looking at city with highest-lowest consumers using sales
SELECT City, Segment, cast(max(Sales) as signed) as ConsumerSales
FROM first_marco.trainforsql
where Segment = 'Consumer'
GROUP BY Segment,City
ORDER BY ConsumerSales desc;

-- looking at city with highest-lowest corporate using sales
SELECT City, Segment, cast(max(Sales) as signed) as CorporateSales
FROM first_marco.trainforsql
where Segment = 'Corporate'
GROUP BY Segment,City
ORDER BY CorporateSales desc;

-- looking at city with highest-lowest home office using sales
SELECT City, Segment, cast(max(Sales) as signed) as HomeOfficeSales
FROM first_marco.trainforsql
where Segment = 'Home Office'
GROUP BY Segment,City
ORDER BY HomeOfficeSales desc;

-- STATE
-- looking at state with highest-lowest consumers using sales
SELECT State, Segment, cast(max(Sales) as signed) as ConsumerSales
FROM first_marco.trainforsql
where Segment = 'Consumer'
GROUP BY Segment,State
ORDER BY ConsumerSales desc;

-- looking at state with highest-lowest corporate using sales
SELECT State, Segment, cast(max(Sales) as signed) as CorporateSales
FROM first_marco.trainforsql
where Segment = 'Corporate'
GROUP BY Segment,State
ORDER BY CorporateSales desc;

-- looking at state with highest-lowest home office using sales
SELECT State, Segment, cast(max(Sales) as signed) as HomeOfficeSales
FROM first_marco.trainforsql
where Segment = 'Home Office'
GROUP BY Segment,State
ORDER BY HomeOfficeSales desc;

-- REGION
-- looking at region with highest-lowest consumer using sales
SELECT Region, Segment, cast(max(Sales) as signed) as ConsumerSales
FROM first_marco.trainforsql
where Segment = 'Consumer'
GROUP BY Segment,Region
ORDER BY ConsumerSales desc;

-- looking at region with highest-lowest corporate using sales
SELECT Region, Segment, cast(max(Sales) as signed) as CorporateSales
FROM first_marco.trainforsql
where Segment = 'Corporate'
GROUP BY Segment,Region
ORDER BY CorporateSales desc;

-- looking at region with highest-lowest home office using sales
SELECT Region, Segment, cast(max(Sales) as signed) as HomeOfficeSales
FROM first_marco.trainforsql
where Segment = 'Home Office'
GROUP BY Segment,Region
ORDER BY HomeOfficeSales desc;


-- create view for year total sales in 2016
CREATE VIEW YearSales2016 as
SELECT Segment, cast(sum(Sales) as signed) as TotalSales
FROM first_marco.trainforsql
WHERE YEAR(str_to_date(OrderDate, '%d/%m/%Y')) = 2016
GROUP BY Segment
ORDER BY TotalSales desc;