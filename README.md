# SQLRestaurantSales
# Restaurant Sales Data Analysis Project

## Project Overview

This project involves a comprehensive analysis of restaurant sales data using SQL queries. The analysis covers various aspects of a food delivery service, including customer behavior, restaurant performance, order patterns, and delivery metrics.

## Database Structure

The database consists of five main tables:

1. Customers: Contains customer information
2. Restaurants: Stores details about restaurants
3. Orders: Records all order information
4. Riders: Contains data about delivery riders
5. Deliveries: Tracks delivery information for each order

## Database Schema


```
-- Customers table
CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100) NOT NULL,
    Reg_Date DATE NOT NULL
);

-- Restaurants table
CREATE TABLE Restaurants (
    Restaurant_ID INT PRIMARY KEY,
    Restaurant_Name VARCHAR(100) NOT NULL,
    City VARCHAR(50) NOT NULL,
    Opening_Hours VARCHAR(50) NOT NULL
);

-- Orders table
CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT NOT NULL FOREIGN KEY REFERENCES Customers(Customer_ID),
    Restaurant_ID INT NOT NULL FOREIGN KEY REFERENCES Restaurants(Restaurant_ID),
    Order_Item VARCHAR(255) NOT NULL,
    Order_Date DATE NOT NULL,
    Order_Time TIME NOT NULL,
    Order_Status VARCHAR(50) NOT NULL,
    Total_Amount FLOAT NOT NULL
);

-- Riders table
CREATE TABLE Riders (
    Rider_ID INT PRIMARY KEY,
    Rider_Name VARCHAR(100) NOT NULL,
    Signup_Date DATE NOT NULL
);

-- Deliveries table
CREATE TABLE Deliveries (
    Delivery_ID INT PRIMARY KEY,
    Order_ID INT NOT NULL FOREIGN KEY REFERENCES Orders(Order_ID),
    Delivery_Status VARCHAR(50) NOT NULL,
    Delivery_Time TIME,
    Rider_ID INT FOREIGN KEY REFERENCES Riders(Rider_ID)
);
```

text
# Restaurant Sales Data Analysis Project

## SQL Queries

### Query 1: Top 3 customers who spent the most money on orders

Fetch the top 3 customers based on their total spending across all orders.

SELECT TOP 3
Customer_ID,
SUM(Total_Amount) AS Total_Spent
FROM Orders
GROUP BY Customer_ID
ORDER BY Total_Spent DESC;
text

### Query 2: Most popular item across all restaurants

Identify the most frequently ordered item.

SELECT TOP 1
Order_Item,
COUNT(Order_Item) AS Order_Count
FROM Orders
GROUP BY Order_Item
ORDER BY Order_Count DESC;
text

### Query 3: Restaurant with the highest number of orders

Find the restaurant that received the maximum number of orders.

SELECT
Restaurant_ID,
COUNT(Restaurant_ID) AS Order_Count
FROM Orders
GROUP BY Restaurant_ID
ORDER BY Order_Count DESC;
text

### Query 4: Top 5 most frequently ordered dishes by a specific customer

Fetch the top 5 dishes ordered by a customer named "Nathan Scott."

SELECT TOP 5
C.Customer_ID,
C.Customer_Name,
O.Order_Item,
COUNT(O.Order_Item) AS Order_Count
FROM Customers C
JOIN Orders O ON C.Customer_ID = O.Customer_ID
WHERE C.Customer_Name LIKE 'Nathan Scott'
GROUP BY C.Customer_ID, C.Customer_Name, O.Order_Item
ORDER BY Order_Count DESC;
text

### Query 5: Time slot with the most orders placed

Analyze which time slot has the highest number of orders.

WITH TimeSlots AS (
SELECT
Order_ID,
CASE
WHEN DATEPART(HOUR, Order_Time) BETWEEN 0 AND 1 THEN '00:00 - 02:00'
WHEN DATEPART(HOUR, Order_Time) BETWEEN 2 AND 3 THEN '02:00 - 04:00'
WHEN DATEPART(HOUR, Order_Time) BETWEEN 4 AND 5 THEN '04:00 - 06:00'
WHEN DATEPART(HOUR, Order_Time) BETWEEN 6 AND 7 THEN '06:00 - 08:00'
WHEN DATEPART(HOUR, Order_Time) BETWEEN 8 AND 9 THEN '08:00 - 10:00'
WHEN DATEPART(HOUR, Order_Time) BETWEEN 10 AND 11 THEN '10:00 - 12:00'
WHEN DATEPART(HOUR, Order_Time) BETWEEN 12 AND 13 THEN '12:00 - 14:00'
WHEN DATEPART(HOUR, Order_Time) BETWEEN 14 AND 15 THEN '14:00 - 16:00'
WHEN DATEPART(HOUR, Order_Time) BETWEEN 16 AND 17 THEN '16:00 - 18:00'
WHEN DATEPART(HOUR, Order_Time) BETWEEN 18 AND 19 THEN '18:00 - 20:00'
WHEN DATEPART(HOUR, Order_Time) BETWEEN 20 AND 21 THEN '20:00 - 22:00'
WHEN DATEPART(HOUR, Order_Time) BETWEEN 22 AND 23 THEN '22:00 - 24:00'
END AS Order_Time_Slot
FROM Orders
)
SELECT
Order_Time_Slot,
COUNT(*) AS Order_Count
FROM TimeSlots
GROUP BY Order_Time_Slot
ORDER BY Order_Count DESC;
text

### Query 6: Average order value per customer with more than 5 orders

Calculate the average spending per order for customers who have placed more than 5 orders.

SELECT
C.Customer_Name,
AVG(O.Total_Amount) AS Average_Order_Value
FROM Customers C
JOIN Orders O ON C.Customer_ID = O.Customer_ID
GROUP BY C.Customer_Name
HAVING COUNT(O.Order_ID) > 5
ORDER BY Average_Order_Value DESC;
text

### Query 7: High-value customers

Identify customers who have spent more than $130 in total on orders.

SELECT
C.Customer_ID,
C.Customer_Name,
SUM(O.Total_Amount) AS Total_Spent
FROM Customers C
JOIN Orders O ON C.Customer_ID = O.Customer_ID
GROUP BY C.Customer_ID, C.Customer_Name
HAVING SUM(O.Total_Amount) > 130;
text

### Query 8: Orders without delivery

Identify restaurants with undelivered orders, showing restaurant name, city, and count of undelivered orders.

SELECT R.Restaurant_Name, R.City,
COUNT(CASE WHEN O.Order_Status != 'Delivered' THEN 1 END) AS undelivered_orders
FROM Restaurants R
JOIN Orders O ON R.Restaurant_ID = O.Restaurant_ID
GROUP BY R.Restaurant_Name, R.City
ORDER BY undelivered_orders DESC;
text

### Query 9: Restaurant Revenue Ranking

Rank restaurants by their revenue, showing the top restaurant by revenue in each city.

WITH RankedRestaurants AS (
SELECT R.City, R.Restaurant_Name,
SUM(O.Total_Amount) AS Total_Revenue,
RANK() OVER (PARTITION BY City ORDER BY SUM(O.Total_Amount) DESC) AS rev_rank
FROM Restaurants R
JOIN Orders O ON R.Restaurant_ID = O.Restaurant_ID
GROUP BY R.City, R.Restaurant_Name
)
SELECT * FROM RankedRestaurants WHERE rev_rank = 1;
text

### Query 10: Most Popular Dish in each City

Identify the most ordered dish in each city based on the number of orders.

WITH DishRanking AS (
SELECT R.City, O.Order_Item,
RANK() OVER (PARTITION BY R.City ORDER BY COUNT(Order_Item) DESC) AS dish_rank
FROM Orders O
JOIN Restaurants R ON O.Restaurant_ID = R.Restaurant_ID
GROUP BY R.City, O.Order_Item
)
SELECT * FROM DishRanking WHERE dish_rank = 1;
text

### Query 11: Customer Churn

Identify customers who placed orders in 2024 but not in 2025.

SELECT DISTINCT Customer_ID
FROM Orders
WHERE YEAR(Order_Date) = 2024
AND Customer_ID NOT IN (
SELECT DISTINCT Customer_ID
FROM Orders
WHERE YEAR(Order_Date) = 2025
);
text

### Query 12: Rider's Average Delivery Time

Calculate the average delivery time for each rider in minutes.

SELECT Rider_ID,
AVG(CASE
WHEN d.Delivery_Time >= o.Order_Time THEN
DATEDIFF(SECOND, CAST(o.Order_Time AS DATETIME), CAST(d.Delivery_Time AS DATETIME)) / 60.0
ELSE
DATEDIFF(SECOND, CAST(o.Order_Time AS DATETIME), DATEADD(DAY, 1, CAST(d.Delivery_Time AS DATETIME))) / 60.0
END) AS Avg_Delivery_Time_Minutes
FROM Orders o
JOIN Deliveries d ON o.Order_ID = d.Order_ID
WHERE Delivery_Status = 'delivered'
GROUP BY Rider_ID;
text

### Query 13: Monthly Restaurant Growth Ratio

Calculate the month-over-month growth ratio for each restaurant based on delivered orders.

WITH MonthlyOrders AS (
SELECT r.Restaurant_Name,
FORMAT(Order_Date, 'yyyy-MM') AS Order_Month,
COUNT(o.Order_ID) AS DeliveredOrders,
LAG(COUNT(o.Order_ID)) OVER (PARTITION BY Restaurant_Name ORDER BY FORMAT(Order_Date, 'yyyy-MM')) AS PrevMonthOrders
FROM Restaurants r
JOIN Orders o ON r.Restaurant_ID = o.Restaurant_ID
WHERE Order_Status = 'Delivered'
GROUP BY r.Restaurant_Name, FORMAT(Order_Date, 'yyyy-MM')
)
SELECT Restaurant_Name, Order_Month,
CASE
WHEN PrevMonthOrders > 0 THEN (DeliveredOrders - PrevMonthOrders) / CAST(PrevMonthOrders AS FLOAT) * 100
ELSE NULL
END AS monthly_growth_ratio
FROM MonthlyOrders;
