-- KPI's Requirement: 
--1. Total Revenue:
SELECT SUM(Amount) AS Total_Revenue FROM NewDetails

--2. Average Amount per Quantity:
SELECT (SUM(Amount) / SUM(Quantity)) AS Avg_Amountper_Quantity FROM NewDetails

--3. Total Profit:
SELECT SUM(Profit) AS Total_Profit FROM NewDetails

--4. Total Quantity:
SELECT COUNT(Quantity) AS Total_Quantity FROM NewDetails

--5. Average Profit per Quantity:
SELECT (SUM(Profit) / SUM(Quantity)) AS Avg_Profitper_Quantity FROM NewDetails

-- Chart Requirement:
--1. Daily Trend for Total Quantity:
SELECT 
    DATENAME(DW, TRY_CONVERT(DATE, Order_Date, 103)) AS Order_day, 
    SUM(Quantity) AS Total_Quantity
FROM NewDetails
GROUP BY DATENAME(DW, TRY_CONVERT(DATE, Order_Date, 103));

--2. Monthly Trend for Total Quantity:
SELECT 
    DATENAME(MONTH, CONVERT(DATE, Order_Date, 103)) AS Month_Name,  -- Convert date to extract the month name
    SUM(Quantity) AS Total_Quantity
FROM NewDetails
GROUP BY DATENAME(MONTH, CONVERT(DATE, Order_Date, 103)),                -- Group by the month name
		 MONTH(CONVERT(DATE, Order_Date, 103))                           -- Group by the month number
ORDER BY MONTH(CONVERT(DATE, Order_Date, 103));                          -- Order by the month number

--3. Percentage of Amount by Category:
SELECT 
    Category, 
    CAST(SUM(Amount) AS DECIMAL(10,2)) AS Total_revenue,
    CAST(ROUND((SUM(Amount) * 100.0) / (SELECT SUM(Amount) FROM NewDetails), 2) AS DECIMAL(5,2)) AS PCT
FROM NewDetails
GROUP BY Category;

--4. Percentage of Profit by Category:
SELECT 
    Category, 
    CAST(SUM(Profit) AS DECIMAL(10,2)) AS Total_Profit,
    CAST(ROUND((SUM(Profit) * 100.0) / (SELECT SUM(Profit) FROM NewDetails), 2) AS DECIMAL(5,2)) AS PCT
FROM NewDetails
GROUP BY Category;

--5. Total Quantity Sold by Category:
SELECT
	Category,
	SUM(Quantity) AS Total_Quantity
FROM NewDetails
GROUP BY Category
ORDER BY Total_Quantity DESC

--6a. Top 5 Sub Category by Total Amount
SELECT Top 5 Sub_Category, SUM(Amount) AS Total_Revenue
FROM NewDetails
GROUP BY Sub_Category
ORDER BY Total_Revenue DESC

--7a. Bottom 5 Sub Category by Total Amount
SELECT Top 5 Sub_Category, SUM(Amount) AS Total_Revenue
FROM NewDetails
GROUP BY Sub_Category
ORDER BY Total_Revenue ASC

--6b. Top 5 Sub Category by Total Profit
SELECT Top 5 Sub_Category, SUM(Profit) AS Total_Profit
FROM NewDetails
GROUP BY Sub_Category
ORDER BY Total_Profit DESC

--7b. Bottom 5 Sub Category by Total Profit
SELECT Top 5 Sub_Category, SUM(Profit) AS Total_Profit
FROM NewDetails
GROUP BY Sub_Category
ORDER BY Total_Profit ASC

--6c. Top 5 Sub Category by Total Quantity Sold
SELECT Top 5 Sub_Category, SUM(Quantity) AS Total_Quantity
FROM NewDetails
GROUP BY Sub_Category
ORDER BY Total_Quantity DESC

--7c. Bottom 5 Sub Category by Total Quantity Sold
SELECT Top 5 Sub_Category, SUM(Quantity) AS Total_Quantity
FROM NewDetails
GROUP BY Sub_Category
ORDER BY Total_Quantity ASC

--8. Percentage of Payment Mode:
SELECT PaymentMode, 
    COUNT(PaymentMode) AS PaymentCount,
    ROUND((COUNT(PaymentMode) * 100.0 / (SELECT COUNT(*) FROM NewDetails)),2) AS Pay_M_Percentage
FROM NewDetails
GROUP BY PaymentMode
ORDER BY Pay_M_Percentage DESC

--9. Total Amount by Payment Mode:
SELECT
	PaymentMode,
	SUM(Amount) AS Total_Amount
FROM NewDetails
GROUP BY PaymentMode
ORDER BY Total_Amount DESC