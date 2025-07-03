# Ecommerce Sales Data Analysis
---
![Main Image](https://github.com/user-attachments/assets/1ee290f5-3624-489e-903d-d6437bf6a346)

## Table of Contents
- [Project Overview](#project-overview)
- [Objectives](#objectives) 
-	[Data Source](#data-source) 
-	[Terminologies Used in Data](#terminologies-used-in-data) 
-	[Methodology](#methodology) 
-	[Tools and Technologies Used](#tools-and-technologies-used) 
-	[KPI and Charting Requirement for Online Sales Analysis](#kpi-and-charting-requirement-for-online-sales-analysis)
-	[Data Visualization Interfaces](#data-visualization-interfaces)
-	[Key Insights and Findings](#key-insights-and-findings)
-	[Recommendations](#recommendations)
-	[Getting Started](#getting-started)
-	[Conclusion](#conclusion)
-	[MIT License](#mit-license)


### Project Overview
Owner of Madhav Store wants us to help them create a dashboard to track and analyze their online sales across India. This project undertakes a comprehensive analysis of online sales data, leveraging SQL for robust data querying and manipulation. The analysis is complemented by advanced visualization by using Power BI.

---

### Objectives
-	The objective of this project is to derive actionable insights related to sales transactions, customer behavior, and product performance across year 2018.
-	The analysis spans various dimensions, including temporal (monthly trends, purchase dates), geographical (state level analysis), and categorical aspects (product categories, sub-categories, and payment modes). 
-	By exploring these dimensions, the project aims to uncover patterns in sales performance, customer preferences, and profitability across different regions and product types, ultimately supporting data-driven decision-making.

---

### Data Source
This Project is based on two datasets stored in SQL Server, which are Orders and Details csv file.
- [Datasets](Datasets)
- [Kaggle](https://www.kaggle.com/datasets/samruddhi4040/online-sales-data)

---

### Terminologies Used in Data
Dataset of Details csv file:
- Order_ID: A unique identifier for each order transaction.
- Amount: The total value of the order in monetary terms.
- Profit: The profit earned from each order, calculated as the difference between revenue and cost.
- Quantity: The number of items included in the order.
- Category: The broad classification of products (e.g., Electronics, Furniture, Clothing).
- Sub_Category: A more specific classification within the main category.
- PaymentMode: The method used to complete the transaction (e.g., COD, Credit Card, Debit Card, EMI, UPI).

Dataset of Orders csv file:
- Order_ID: A unique identifier assigned to each order transaction.
- Order_Date: The date when the order was placed.
- CustomerName: The name of the customer who placed the order.
- State: The state where the customer is located.
- City: The city within the state where the customer resides.

---

### Methodology
#### Our method for analysing the online sales data followed a structured, multi-step approach aimed at ensuring a comprehensive data review and meaningful visualization. The stages of our methodology are outlined below:
**Data Ingestion and Database Creation:**
-	Objective: Develop a reliable system for data storage and retrieval.
-	Process: A relational database was set up using Microsoft SQL Server to store detailed online sales data, ensuring both data integrity and easy access.

**Data Merging and Validation:**
-	Objective: To ensure data consistency and completeness.
-	Process:
1.	Data Type Verification: Check the data types of each column to confirm they align with the expected formats (e.g., integers for quantities, dates for transaction dates, and strings for customer names).
2.	Missing Value Analysis: Inspect the dataset for any missing values and record their occurrence. If found, determine the appropriate method to handle them, such as imputation, removal, or substitution, based on the impact on the analysis.
3.	Data Merging: Combine two data sources into a single dataset using appropriate keys, which is Order_ID to maintain data integrity.
![Relationship Diagram](https://github.com/user-attachments/assets/6a7efa7e-2281-474b-a486-fbfe7ba23cdb)

**Data Analysis and SQL Queries:**
-	Objective: Derive meaningful insights and key performance indicators (KPIs).
-	Process: SQL queries were carefully crafted to extract essential KPIs, such as total sales amount, average amount per quantity, total quantity, total profit, and average profit per quantity. This approach enabled the identification of significant trends and performance metrics.

**Temporal and Categorical Analysis:**
-	Objective: Analyse the data across different time periods and dimensions.
-	Process: A detailed examination was performed considering several factors, such as month, category, sub-category, and payment mode. This multi-dimensional approach provided a comprehensive understanding of the elements affecting loan performance.

**Categorization of Payment Mode:**
-	Objective: Classify online sales based on the performance of different payment modes.
-	Process: The sales data was segmented according to payment modes such as Debit Card, Credit Card, COD (Cash on Delivery), UPI, and EMI. Each category was analysis to evaluate its contribution to total sales, average transaction amount, and profitability. This classification helped identify which payment methods were most preferred by customers and their impact on overall sales performance.

**Visualization:**
-	Objective: Convert data into meaningful visual insights.
-	Process: The output from SQL queries was visualized using Power BI, creating visualizations that ensured data accuracy and offered a clear, graphical representation of the findings. This step was crucial for effectively conveying insights to stakeholders and supporting data-driven decision-making.

---
### Tools and Technologies Used
- <img src="https://github.com/mdshajie720/Ecommerce_Sales_Data_Analysis-SQL-Power-BI/blob/main/Report%20Images/SSMS.png" alt="SSMS Icon" width="30" height="30"> SQL Server Management Sudio: Utilized for managing databases, executing queries, and performing data analysis. SQL queries played a vital role in extracting key metrics and insights from the online sales dataset, enabling effective data-driven analysis.
- <img src="https://github.com/mdshajie720/Ecommerce_Sales_Data_Analysis-SQL-Power-BI/blob/main/Report%20Images/Power%20BI.png" alt="SSMS Icon" width="30" height="30"> Power BI: A powerful data visualization and business intelligence tool used for creating interactive dashboards and reports. Power BI was utilized to transform the extracted data into visual insights, allowing for clear representation and analysis of key metrics. This enabled stakeholders to quickly interpret online sales trends, patterns, and performance indicators, facilitating informed decision-making.

---

### KPI and Charting Requirement for Online Sales Analysis
#### KPI’s Requirement:
We aim to assess important metrics from our online sales data to better understand our business performance. In particular, we will on calculate the following key indicators:
-	**Total Revenue:** The sum of the total amount of all online store orders.
-	**Average Amount per Quantity:** The average amount spent per quantity, calculated by dividing the total amount by the total quantity of orders.
-	**Total Profit:** The sum of the profit of all online sold.
-	**Total Quantity:** The total number of quantities placed.
-	**Average Profit Per Quantity:** The average profit sold per quantity, calculated by dividing the total profit by the total numbers of quantity.

#### Charts Requirement:
We plan to create visual representations of our online sales data to uncover insights and identify key trends. The following charting needs have been outlined:
1.	**Daily Trend for Total Quantity:**
Create a bar chart that displays the daily trend of total quantity over a specific time period. This chart will help us identify any patterns or fluctuations in quantity volumes on a daily basis.
2.	**Monthly Trend for Total Quantity:**
Create a line chart that illustrates the hourly trend of total quantity throughout the day. This chart will allow us to identify peak hours or periods of high order activity.
3.	**Percentage of Amount by Category:**
Create a pie chart that shows the distribution of sales across different categories. This chart will provide insights into the popularity of various categories and their contribution to overall amounts.
4.	**Percentage of Profit by Category:**
Generate a pie chart that represents the percentage of Profit attributed to different Category. This chart will help us understand customer preferences for category and their impact on sales.
5.	**Total Quantity Sold by Category:**
Create a funnel chart that presents the total quantity sold for each category. This chart will allow us to compare the sales performance of different categories.
6.	**Top 5 Best Sub Category by Total Amount, Total Profit, Total Quantity Sold:**
Generate a bar chart that represents the total amount, total profit and total quantity sold for the top 5 best sub category sold. This chart will help us identify the most Sub Category Options.
7.	**Bottom 5 Worst Sub Category by Total Amount, Total Profit, Total Quantity Sold:**
Generate a bar chart that represents the total amount, total profit and total quantity sold for the bottom 5 best sub category sold. This chart will help us identify the underperforming or least popular Sub Category Options.
8.	**Percentage of Payment Mode:**
Generate a pie chart that represents the percentage of payment mode attributed to different customer. This chart will help us understand which payment type that will be chosen by customer when they want to make the payment.
9.	**Total Amount by Payment Mode:**
Create a table that presents the total amount received for each payment mode. This table will allow us to understand where does the larger amount coming from which payment mode.

---

### Data Visualization Interfaces
Explore our online sales analysis project in-depth with our interactive data visualization dashboards! These dashboards provide an engaging way to navigate the data and uncover valuable insights.
<table>
  <tr>
    <th>Tool</th>
    <th>Power BI</th>
  </tr>
  <tr>
    <td><strong>Overview</strong></td>
    <td>The dashboards showcase an e-commerce sales analysis report for Madhav Ecommerce, covering the period for the entire year of 2018. These interactive dashboards are designed to provide a comprehensive view of sales performance, trends, and customer behavior insights. Users can filter data by state, category, and date range to focus on specific segments and time periods.</td>
  </tr>
  <tr>
    <td><strong>Features</strong></td>
    <td>
      <ul>
        <li><strong>Summary Metrics:</strong> Displays total revenue, profit, quantity sold, and average metrics.</li>
        <li><strong>Trend Analysis:</strong> Visualizes daily and monthly sales trends.</li>
        <li><strong>Category & Sub-Category Analysis:</strong> Shows revenue and profit distribution by product categories and highlights top/bottom sub-categories.</li>
        <li><strong>Payment Mode Analysis:</strong> Illustrates the distribution of sales across different payment methods.</li>
        <li><strong>Customer Insights:</strong> Provides analysis on customer behavior, such as payment preferences.</li>
        <li><strong>Interactive Filters:</strong> Users can filter data by state, category, and date range.</li>
      </ul>
    </td>
  </tr>
</table>

[Power BI Dashboard](https://app.powerbi.com/groups/me/reports/fd94e7b9-a3b9-4fed-99e1-c1b2d9f37589/179358e6548615d00c41?experience=power-bi)
### Home page
![Dashboard_Home](https://github.com/user-attachments/assets/9a1bfa19-aa29-47ba-885d-348db92187b0)

### Customer Behavior page
![Dashboard_Customer Behavior](https://github.com/user-attachments/assets/fb166c2d-dcba-4ddb-af7d-685e71aa4c61)

### Payment Preference page
![Dashboard_Payment Preference](https://github.com/user-attachments/assets/95199d6f-0a68-4ee9-9cbd-dcf78eb8ba0d)

---

### Key Insights and Findings
**Sales Performance:**
-	Total revenue for the period is 438K, with a total profit of 36,963 and 5,615 items sold, showing consistent sales performance.
-	Average profit per item is 6.58, and the average amount per quantity is 77.96, indicating a stable profit margin.

**Sales Trends:**
-	Daily Trend: Highest quantities are sold on Thursdays, while the lowest are on Wednesdays.
-	Monthly Trend: March and November record the highest sales volumes, while sales dip in April and July.

**Category and Sub-Category Analysis:**
-	Categories: Electronics, Clothing, and Furniture are the main revenue-generating categories.
-	Top Sub-Categories: Printers, Sarees, and Bookcases lead in total amount and profit, whereas Skirts and Leggings underperform.
-	Clothing items like Sarees and Handkerchiefs are the most popular based on quantity sold.

**Payment Behavior:**
-	COD is the most preferred payment method, making up 45.6% of all transactions, indicating a preference for paying upon delivery.
-	Digital methods like Debit Card, Credit Card, EMI, and UPI are less favored, suggesting customers’ trust in physical confirmation before payment.

**Payment Method Preference:**
- Customers show a strong tendency towards paying after receiving goods, reflecting hesitancy towards upfront payments and digital transactions.

---

### Recommendations
**Boost Midweek Sales:**
-	Action: Implement special promotions or discounts on Wednesdays to stimulate sales.
-	Rationale: Since Wednesdays show the lowest sales, targeted campaigns like “Midweek Specials” can incentivize customers to shop on this day, balancing daily sales performance.

**Encourage Digital Payment Adoption:**
-	Action: Offer discounts or loyalty points for customers who use digital payment methods. Promote the safety and convenience of digital payments through awareness campaigns.
-	Rationale: Encouraging digital payments can reduce dependency on COD and streamline operations, potentially reducing costs associated with COD management.

**Inventory Management for High-Demand Products:**
-	Action: Monitor and forecast inventory levels for popular items like Sarees and Printers to avoid stockouts and ensure continuous availability.
-	Rationale: Maintaining adequate stock levels for high-demand items ensures consistent sales and minimizes lost revenue opportunities.

---

### Getting Started
Prerequisites:
-	SQL Server Management Studio: Used for managing and querying the database, as well as for data processing and analysis.
-	Power BI: Utilized for creating and viewing dashboards.

Installation and Setup
1.	Clone the Repository:
  -git clone (repo url)
2.	Database Setup:
-	Import the online sales data from the [CSV file](Datasets) into SQL and create the database.
-	Execute the provided [SQL] in SQL Server Management Studio to set up the database structure, including tables, columns, and relationships.

3.	KPI and Chart Calculation:
-	Calculate key metrics value by [SQL]

4.	Power BI Setup:
-	Launch the provided [Power BI]
-	Connect the Power BI file to your SQL Server database.

---

### Conclusion
The analysis of Madhav Ecommerce’s sales data conducted using SQL for data extraction and Power BI for visualization, which has provided valuable insights into the company’s sales performance, customer preferences, and category profitability. SQL was utilized to efficiently query and aggregate the sales data, ensuring accurate and comprehensive insights into various dimensions of the business. Power BI further enhanced the analysis by enabling interactive visualizations that highlighted key trends, such as peak sales activity and profitability across different product categories.

Overall, this data project was leveraging the capabilities of SQL and Power BI, effectively identifies trends, strengths, and areas for improvement, supporting informed business decisions aimed at optimizing sales strategies and enhancing customer experience.
