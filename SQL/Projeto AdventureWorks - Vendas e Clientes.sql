USE AdventureWorks2022

--Data exploration and visualization
SELECT * FROM Sales.SalesOrderHeader
SELECT * FROM Sales.SalesOrderDetail
SELECT * FROM Production.Product
SELECT * FROM Production.ProductSubcategory
SELECT * FROM Production.ProductCategory
SELECT * FROM Person.Person
SELECT * FROM Sales.Customer


--Total de venda
SELECT
	SUM(SOH.TotalDue) as total_revenue
FROM Sales.SalesOrderHeader as SOH

--Total de vendas por ano
SELECT 
	DATEPART(YEAR, OrderDate),
	SUM(TotalDue) as soma_total
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(YEAR, OrderDate)
ORDER BY 2 DESC

--Ticket medio de venda
SELECT
	MIN(SOH.TotalDue) as menor_compra,
	AVG(SOH.TotalDue) as ticket_medio,
	MAX(SOH.TotalDue) as maior_compra
FROM Sales.SalesOrderHeader as SOH


--Venda por categoria de produto
SELECT 
	PC.Name as category_name,
	SUM(SOD.LineTotal) as total_sales_by_category
FROM Sales.SalesOrderHeader as SOH
INNER JOIN Sales.SalesOrderDetail as SOD ON SOD.SalesOrderID = SOH.SalesOrderID
INNER JOIN Production.Product as P ON P.ProductID = SOD.ProductID
INNER JOIN Production.ProductSubcategory AS PSC ON PSC.ProductSubcategoryID = P.ProductSubcategoryID
INNER JOIN Production.ProductCategory AS PC ON PC.ProductCategoryID = PSC.ProductCategoryID
GROUP BY PC.Name
ORDER BY 2 DESC


--TOP 10 produtos mais vendidos
SELECT TOP 10
	P.Name as product_name,
	PC.Name as category_name,
	SUM(SOD.LineTotal) as total_selling
FROM Sales.SalesOrderDetail as SOD
INNER JOIN Production.Product AS P ON P.ProductID = SOD.ProductID
INNER JOIN Production.ProductSubcategory AS PS ON PS.ProductSubcategoryID = P.ProductSubcategoryID
INNER JOIN Production.ProductCategory AS PC ON PC.ProductCategoryID = PS.ProductCategoryID
GROUP BY P.Name, PC.Name
ORDER BY total_selling DESC

--Média de vendas por mês
SELECT 
	DATEPART(YEAR, OrderDate) as ano,
	DATEPART(MONTH, OrderDate) as mes,
	AVG(TotalDue) as media_mes
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(YEAR, OrderDate), DATEPART(MONTH, OrderDate)
ORDER BY ano, mes;

-- Mês que menos vendeu e o que mais vendeu
WITH VENDAS AS 
(
SELECT 
	DATEPART(YEAR, OrderDate) as ano,
	DATEPART(MONTH, OrderDate) as mes,
	SUM(TotalDue) as soma_mes
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(YEAR, OrderDate), DATEPART(MONTH, OrderDate)
)

SELECT
	'Menor Venda' AS tipo,ano,mes,soma_mes
FROM VENDAS
WHERE soma_mes = (SELECT MIN(soma_mes) FROM VENDAS)

UNION ALL  -- unir as duas consultas

SELECT 
	'Maior Venda' AS tipo,ano,mes,soma_mes
FROM VENDAS
WHERE soma_mes = (SELECT MAX(soma_mes) FROM VENDAS)

--TOP 10 clientes que mais compraram
SELECT TOP 10
	SOH.CustomerID as customer_ID,
	P.FirstName,
	P.LastName,
	SUM(SOH.TotalDue) as total_comprado
FROM Sales.SalesOrderHeader AS SOH
INNER JOIN Sales.Customer as C ON C.CustomerID = SOH.CustomerID
INNER JOIN Person.Person AS P ON P.BusinessEntityID = C.CustomerID
GROUP BY SOH.CustomerID, P.FirstName, P.LastName
ORDER BY total_comprado DESC

--Média de vendas por cliente
SELECT
	AVG(sum_by_customer) as avg_by_customer
FROM 
(
	SELECT TOP 10
		SOH.CustomerID,
		SUM(SOH.TotalDue) as sum_by_customer
	FROM Sales.SalesOrderHeader AS SOH
	INNER JOIN Sales.Customer as C ON C.CustomerID = SOH.CustomerID
	INNER JOIN Person.Person AS P ON P.BusinessEntityID = C.CustomerID
	GROUP BY SOH.CustomerID
) avg_by_customer

--Clientes novos x recorrentes por ano
WITH PrimeiraCompra AS
(
SELECT
	CustomerID,
	MIN(OrderDate) as primeira_compra
FROM Sales.SalesOrderHeader
GROUP BY CustomerID
),-- identifica qual foi a primeira compra de cada cliente

Classificacao AS
(
	SELECT
		S.CustomerID,
		S.OrderDate,
		CASE
			WHEN S.OrderDate = PC.primeira_compra THEN 'Cliente novo'
			ELSE 'Cliente recorrente'
		END as tipo_cliente
	FROM Sales.SalesOrderHeader AS S
	INNER JOIN PrimeiraCompra as PC ON PC.CustomerID = S.CustomerID
) --classifica cada cliente como novo ou recorrente

SELECT
	DATEPART(YEAR, C.OrderDate) as ano,
	tipo_cliente,
	COUNT(Distinct CustomerID) as quantidade_clientes
FROM Classificacao C
GROUP BY DATEPART(YEAR, C.OrderDate), tipo_cliente 
ORDER BY DATEPART(YEAR, C.OrderDate) ASC, tipo_cliente