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


**Project Overview:**
This project involves a comprehensive analysis of restaurant sales data using SQL queries. The analysis covers various aspects of a food delivery service, including customer behavior, restaurant performance, order patterns, and delivery metrics.$$
**Database Structure**$$
The database consists of five main tables:$$
**Customers:** Contains customer information$$
**Restaurants:** Stores details about restaurants$$
**Orders:** Records all order information$$
**Riders:** Contains data about delivery riders$$
**Deliveries:** Tracks delivery information for each order$$
**Database Schema**
-- Customers table
```CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100) NOT NULL,
    Reg_Date DATE NOT NULL
);```

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
