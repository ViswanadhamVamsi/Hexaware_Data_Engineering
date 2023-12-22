/* example of total and subtotal */
CREATE TABLE
SalesList
(SalesMonth NVARCHAR(20), SalesQuartes  VARCHAR(5), SalesYear  SMALLINT, SalesTotal MONEY)
GO
INSERT INTO  SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'March','Q1',2019,60)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'March','Q1',2020,50)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'May','Q2',2019,30)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'July','Q3',2020,10)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'November','Q4',2019,120)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'October','Q4',2019,150)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'November','Q4',2019,180)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'November','Q4',2020,120)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'July','Q3',2019,160)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'March','Q1',2020,170)
GO
SELECT  * FROM SalesList;
SELECT  SalesYear, SUM(SalesTotal) AS SalesTotal FROM SalesList
    GROUP BY ROLLUP(SalesYear);
SELECT  SalesYear,SalesQuartes, SUM(SalesTotal) AS SalesTotal FROM SalesList GROUP BY ROLLUP(SalesYear, SalesQuartes);
SELECT  SalesYear,SalesQuartes,SalesMonth ,SUM(SalesTotal) AS SalesTotal
FROM SalesList GROUP BY ROLLUP(SalesYear, SalesQuartes, SalesMonth);
/* SubTotal and Grand Total */
SELECT 
CASE 
WHEN GROUPING(SalesQuartes)=1 AND GROUPING(SalesYear)=0
THEN 'SubTotal'
WHEN GROUPING(SalesQuartes)=1 AND GROUPING(SalesYear)=1
THEN 
'Grand Total'
ELSE
CAST(SalesYear AS varchar(10))
END 
AS SalesYear,
SalesQuartes,
SUM(SalesTotal) AS SalesTotal 
FROM SalesList
GROUP BY GROUPING SETS(SalesYear,(SalesYear,SalesQuartes),());\


/*procedure with no params */
create procedure selectAll 
as 
select * from SalesList
GO;

exec selectAll;

/* procedure with single param */
create procedure selectAllSales_M @SalesMonth nvarchar(50)
as select * from SalesList where SalesMonth = @SalesMonth;

exec selectAllSales_M @SalesMonth = N'March';

/* procedure with multiple param */
create procedure selectAllSales_M_Y @SalesMonth nvarchar(50), @SalesYear smallint
as 
select * from SalesList where SalesMonth = @SalesMonth and SalesYear = @SalesYear;

exec selectAllSales_M_Y @SalesMonth = N'March', @SalesYear = 2020;