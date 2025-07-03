-- Select the data from Details Table
SELECT TOP (5) *
  FROM Details;

  -- Count the number of rows and columns for the Details Table
 SELECT COUNT(*) AS Number_of_Rows
FROM dbo.Details;
SELECT COUNT(*) AS Number_of_Columns
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Details';

 -- Obtain the infor from the Details Table (Type and Nullable)
  EXEC sp_help 'Details';

  -- Count the Total number of duplicate rows of Details Table
  SELECT SUM(DuplicateCount - 1) AS TotalDuplicates
FROM (
    SELECT COUNT(*) AS DuplicateCount
    FROM Details
    GROUP BY [Order_ID]
      ,[Amount]
      ,[Profit]
      ,[Quantity]
      ,[Category]
      ,[Sub_Category]
      ,[PaymentMode]
    HAVING COUNT(*) > 1
) AS Duplicates;

  -- Select the data from Orders Table
  SELECT TOP (5) *
  FROM Orders;

  -- Count the number of rows and columns for the Orders Table
 SELECT COUNT(*) AS Number_of_Rows
FROM dbo.Orders;
SELECT COUNT(*) AS Number_of_Columns
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Orders';

  -- Obtain the infor from the Orders Table (Type and Nullable)
  EXEC sp_help 'Orders';

  -- Count the Total number of duplicate rows of Orders Table
  SELECT SUM(DuplicateCount - 1) AS TotalDuplicates
FROM (
    SELECT COUNT(*) AS DuplicateCount
    FROM Orders
    GROUP BY [Order_ID]
      ,[Order_Date]
      ,[CustomerName]
      ,[State]
      ,[City]
    HAVING COUNT(*) > 1
) AS Duplicates;

  -- Merge Two Datasets into a New Table and name it as NewDetails
SELECT Details.*,Orders.Order_Date,Orders.CustomerName,Orders.State,Orders.City
INTO NewDetails
FROM Details
LEFT JOIN Orders ON Details.Order_ID = Orders.Order_ID;

  -- Show the Top5 rows
SELECT TOP(5) *
FROM NewDetails

  -- Count the number of rows and columns for the NewDetails Table
 SELECT COUNT(*) AS Number_of_Rows
FROM NewDetails
SELECT COUNT(*) AS Number_of_Columns 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'NewDetails';

 -- Obtain the infor from the NewDetails Table (Type and Nullable)
  EXEC sp_help 'NewDetails';

  -- Count the Total number of duplicate rows of NewDetails Table
  SELECT SUM(DuplicateCount - 1) AS TotalDuplicates
FROM (
    SELECT COUNT(*) AS DuplicateCount
    FROM NewDetails
    GROUP BY [Order_ID]
	  ,[Amount]
	  ,[Profit]
	  ,[Quantity]
	  ,[Category]
	  ,[Sub_Category]
	  ,[PaymentMode]
      ,[Order_Date]
      ,[CustomerName]
      ,[State]
      ,[City]
    HAVING COUNT(*) > 1
) AS Duplicates;
