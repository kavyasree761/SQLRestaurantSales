-- Create Customers table
CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100) NOT NULL,
    Reg_Date DATE NOT NULL
);

-- Create Restaurants table
CREATE TABLE Restaurants (
    Restaurant_ID INT PRIMARY KEY,
    Restaurant_Name VARCHAR(100) NOT NULL,
    City VARCHAR(50) NOT NULL,
    Opening_Hours VARCHAR(50) NOT NULL
);

-- Create Orders table
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

-- Create Riders table
CREATE TABLE Riders (
    Rider_ID INT PRIMARY KEY,
    Rider_Name VARCHAR(100) NOT NULL,
    Signup_Date DATE NOT NULL
);

-- Create Deliveries table
CREATE TABLE Deliveries (
    Delivery_ID INT PRIMARY KEY,
    Order_ID INT NOT NULL FOREIGN KEY REFERENCES Orders(Order_ID),
    Delivery_Status VARCHAR(50) NOT NULL,
    Delivery_Time TIME,
    Rider_ID INT FOREIGN KEY REFERENCES Riders(Rider_ID)
);


INSERT INTO Customers (Customer_ID, Customer_Name, Reg_Date) 
VALUES 
    (1, 'Alice Johnson', '2025-01-01'),
    (2, 'Bob Smith', '2025-01-02'),
    (3, 'Clara Adams', '2025-01-03'),
    (4, 'David Brown', '2025-01-04'),
    (5, 'Emma Green', '2025-01-05'),
    (6, 'Hannah Walker', '2025-01-06'),
    (7, 'Ian Parker', '2025-01-07'),
    (8, 'Jane Evans', '2025-01-08'),
    (9, 'Kevin Lewis', '2025-01-09'),
    (10, 'Laura White', '2025-01-10'),
    (11, 'Mia Hall', '2025-01-11'),
    (12, 'Nathan Scott', '2025-01-12'),
    (13, 'Olivia Young', '2025-01-13'),
    (14, 'Paul Wright', '2025-01-14'),
    (15, 'Quincy Reed', '2025-01-15'),
    (16, 'Rachel Turner', '2025-01-16'),
    (17, 'Sam Carter', '2025-01-17'),
    (18, 'Tina Barnes', '2025-01-18'),
    (19, 'Umar Patel', '2025-01-19'),
    (20, 'Vera Collins', '2025-01-20'),
    (21, 'William Clark', '2025-01-21'),
    (22, 'Xander Brooks', '2025-01-22'),
    (23, 'Yvonne Gray', '2025-01-23'),
    (24, 'Zachary Hill', '2025-01-24'),
    (25, 'Amber Mitchell', '2025-01-25'),
    (26, 'Bryan Cooper', '2025-01-26'),
    (27, 'Cynthia Roberts', '2025-01-27'),
    (28, 'Derek Hughes', '2025-01-28'),
    (29, 'Eleanor Baker', '2025-01-29'),
    (30, 'Franklin Webb', '2025-01-30'),
    (31, 'Grace Kelly', '2025-01-31'),
    (32, 'Harry Edwards', '2025-02-01');

INSERT INTO Restaurants (Restaurant_ID, Restaurant_Name, City, Opening_Hours) 
VALUES 
    (1, 'Pizza Palace', 'New York', '10:00 AM - 10:00 PM'),
    (2, 'Burger Bistro', 'Los Angeles', '11:00 AM - 11:00 PM'),
    (3, 'Sushi Central', 'San Francisco', '12:00 PM - 10:00 PM'),
    (4, 'Taco Town', 'Austin', '10:30 AM - 9:30 PM'),
    (5, 'Curry Corner', 'Chicago', '11:00 AM - 10:30 PM'),
    (6, 'Pasta Paradise', 'Boston', '11:30 AM - 10:00 PM'),
    (7, 'BBQ Haven', 'Dallas', '12:00 PM - 11:30 PM'),
    (8, 'Dessert Dreams', 'Seattle', '10:00 AM - 9:00 PM'),
    (9, 'Noodle House', 'Miami', '11:00 AM - 10:30 PM'),
    (10, 'Grill Master', 'Atlanta', '12:00 PM - 10:00 PM'),
    (11, 'Bagel Bakery', 'San Diego', '6:00 AM - 2:00 PM'),
    (12, 'Seafood Shack', 'Portland', '12:00 PM - 10:00 PM'),
    (13, 'Greek Delights', 'Houston', '10:30 AM - 9:30 PM'),
    (14, 'Vegan Bistro', 'San Jose', '10:00 AM - 8:00 PM'),
    (15, 'Steakhouse 21', 'Las Vegas', '4:00 PM - 11:00 PM'),
    (16, 'Ramen Retreat', 'Denver', '11:00 AM - 9:00 PM'),
    (17, 'Tapas Tavern', 'Orlando', '12:00 PM - 10:00 PM'),
    (18, 'Dim Sum Delight', 'Philadelphia', '10:00 AM - 8:30 PM'),
    (19, 'Pho Paradise', 'Phoenix', '11:30 AM - 9:30 PM'),
    (20, 'Pancake House', 'San Antonio', '7:00 AM - 2:00 PM'),
    (21, 'Smoothie Spot', 'Nashville', '8:00 AM - 8:00 PM'),
    (22, 'Urban Eatery', 'Charlotte', '10:00 AM - 9:00 PM'),
    (23, 'Kabob Kitchen', 'Detroit', '11:00 AM - 10:00 PM'),
    (24, 'Fried Chicken Co.', 'Memphis', '11:30 AM - 9:30 PM'),
    (25, 'Crepe Corner', 'Salt Lake City', '8:00 AM - 6:00 PM'),
    (26, 'Mexican Fiesta', 'Albuquerque', '11:00 AM - 9:30 PM'),
    (27, 'Italian Table', 'Raleigh', '10:30 AM - 10:00 PM'),
    (28, 'Burger Joint', 'Fresno', '12:00 PM - 11:00 PM'),
    (29, 'BBQ Spot', 'Tulsa', '11:00 AM - 10:00 PM'),
    (30, 'Taco Fiesta', 'Omaha', '10:30 AM - 9:00 PM'),
    (31, 'Indian Aroma', 'Minneapolis', '11:00 AM - 10:00 PM'),
    (32, 'Bistro Bites', 'Wichita', '10:00 AM - 9:30 PM'),
    (33, 'Pizza Mania', 'Arlington', '11:30 AM - 10:00 PM'),
    (34, 'Sushi Delight', 'Tampa', '12:00 PM - 10:00 PM'),
    (35, 'Dumpling House', 'Aurora', '11:00 AM - 9:00 PM'),
    (36, 'Healthy Eats', 'Anaheim', '9:00 AM - 7:00 PM'),
    (37, 'Waffle Works', 'Santa Ana', '8:00 AM - 3:00 PM'),
    (38, 'Korean BBQ', 'St. Louis', '11:00 AM - 10:00 PM'),
    (39, 'Seafood Central', 'Cincinnati', '12:00 PM - 10:00 PM'),
    (40, 'Mediterranean Grill', 'Pittsburgh', '10:30 AM - 9:30 PM'),
    (41, 'Hot Dog Heaven', 'Greensboro', '11:00 AM - 9:00 PM'),
    (42, 'Bagel Bliss', 'Plano', '6:00 AM - 2:00 PM'),
    (43, 'Burrito Barn', 'Lincoln', '11:00 AM - 9:30 PM'),
    (44, 'Salad Station', 'Orlando', '10:00 AM - 8:00 PM'),
    (45, 'Tasty Tacos', 'Henderson', '10:30 AM - 9:30 PM'),
    (46, 'Soul Food Stop', 'Chandler', '11:00 AM - 10:00 PM'),
    (47, 'Cheesecake Corner', 'Chula Vista', '10:00 AM - 9:00 PM'),
    (48, 'Asian Fusion', 'Reno', '11:30 AM - 10:00 PM'),
    (49, 'Bistro Bliss', 'Spokane', '10:00 AM - 8:30 PM'),
    (50, 'Falafel Frenzy', 'Irvine', '11:00 AM - 9:30 PM'),
    (51, 'Café Charm', 'Scottsdale', '7:00 AM - 7:00 PM'),
    (52, 'Chicken Shack', 'Madison', '11:00 AM - 10:00 PM'),
    (53, 'Grill Delight', 'Boise', '12:00 PM - 10:00 PM'),
    (54, 'Doughnut Den', 'Buffalo', '6:30 AM - 3:30 PM'),
    (55, 'BBQ Smokehouse', 'Richmond', '12:00 PM - 11:00 PM'),
    (56, 'Pho House', 'Fort Worth', '11:30 AM - 10:00 PM'),
    (57, 'Tandoori Treats', 'Chesapeake', '11:00 AM - 10:00 PM'),
    (58, 'Mac & Cheese Bar', 'Irving', '12:00 PM - 8:00 PM'),
    (59, 'Burgers & More', 'Fort Lauderdale', '12:00 PM - 9:00 PM'),
    (60, 'BBQ Bistro', 'Hialeah', '11:00 AM - 10:30 PM'),
    (61, 'Pasta House', 'Baton Rouge', '11:30 AM - 9:30 PM'),
    (62, 'Smoothie Haven', 'Montgomery', '8:00 AM - 8:00 PM'),
    (63, 'Sushi Spot', 'Little Rock', '11:00 AM - 9:30 PM'),
    (64, 'Grill & Chill', 'Akron', '12:00 PM - 10:00 PM'),
    (65, 'Taco Temple', 'Fargo', '11:00 AM - 9:30 PM'),
    (66, 'Seafood Paradise', 'Des Moines', '12:00 PM - 10:00 PM'),
    (67, 'Bistro 101', 'Lexington', '10:00 AM - 8:30 PM'),
    (68, 'Wok & Roll', 'Anchorage', '11:30 AM - 10:00 PM'),
    (69, 'Hot Pot Spot', 'Rochester', '11:00 AM - 10:30 PM'),
    (70, 'Soup & Sandwich Co.', 'Tallahassee', '10:00 AM - 9:00 PM');

INSERT INTO Orders (Order_ID, Customer_ID, Restaurant_ID, Order_Item, Order_Date, Order_Time, Order_Status, Total_Amount)
VALUES 
    (101, 5, 23, 'Burger and Fries', '2025-01-02', '12:45:00', 'Delivered', 15.50),
    (102, 12, 41, 'Sushi Platter', '2025-01-03', '18:20:00', 'Preparing', 32.00),
    (103, 8, 35, 'BBQ Ribs', '2025-01-04', '19:30:00', 'Delivered', 25.99),
    (104, 15, 11, 'Bagel and Coffee', '2025-01-05', '09:15:00', 'Cancelled', 8.75),
    (105, 21, 56, 'Pho Soup', '2025-01-06', '13:10:00', 'Preparing', 12.50),
    (106, 3, 8, 'Chocolate Cake', '2025-01-07', '14:40:00', 'Delivered', 6.99),
    (107, 18, 29, 'Taco Combo', '2025-01-08', '20:05:00', 'Delivered', 18.20),
    (108, 10, 47, 'Cheesecake Slice', '2025-01-09', '15:50:00', 'Preparing', 7.99),
    (109, 7, 14, 'Vegan Wrap', '2025-01-10', '11:30:00', 'Delivered', 10.25),
    (110, 25, 61, 'Spaghetti', '2025-01-11', '19:00:00', 'Delivered', 14.75),
    (111, 16, 5, 'Curry and Rice', '2025-01-12', '12:15:00', 'Preparing', 13.90),
    (112, 22, 49, 'Falafel Sandwich', '2025-01-13', '17:25:00', 'Delivered', 9.99),
    (113, 31, 28, 'Double Cheeseburger', '2025-01-14', '19:45:00', 'Delivered', 14.50),
    (114, 9, 3, 'Sashimi Platter', '2025-01-15', '20:30:00', 'Cancelled', 26.40),
    (115, 27, 37, 'Waffles and Syrup', '2025-01-16', '09:20:00', 'Delivered', 11.50),
    (116, 19, 45, 'Burrito Bowl', '2025-01-17', '13:40:00', 'Preparing', 12.80),
    (117, 2, 67, 'Soup and Sandwich', '2025-01-18', '12:55:00', 'Delivered', 16.00),
    (118, 29, 32, 'Fried Chicken', '2025-01-19', '18:50:00', 'Delivered', 21.99),
    (119, 13, 24, 'Pizza Margherita', '2025-01-20', '20:15:00', 'Preparing', 17.50),
    (120, 1, 12, 'Seafood Platter', '2025-01-21', '19:25:00', 'Delivered', 29.95),
    (121, 20, 62, 'Smoothie', '2025-01-22', '08:30:00', 'Delivered', 5.75),
    (122, 6, 9, 'Grilled Steak', '2025-01-23', '19:10:00', 'Preparing', 22.99),
    (123, 17, 48, 'Dim Sum', '2025-01-24', '18:45:00', 'Delivered', 14.90),
    (124, 26, 36, 'Healthy Salad', '2025-01-25', '12:00:00', 'Delivered', 10.00),
    (125, 14, 19, 'Pho Noodles', '2025-01-26', '11:35:00', 'Preparing', 13.75),
    (126, 11, 68, 'Hot Pot Combo', '2025-01-27', '19:55:00', 'Cancelled', 28.50),
    (127, 4, 40, 'Gyro Plate', '2025-01-28', '18:30:00', 'Delivered', 15.99),
    (128, 32, 18, 'Tandoori Chicken', '2025-01-29', '19:15:00', 'Delivered', 17.85),
    (129, 23, 13, 'Greek Salad', '2025-01-30', '11:25:00', 'Preparing', 9.90),
    (130, 30, 69, 'Soup Combo', '2025-01-31', '12:10:00', 'Delivered', 12.00),
    (131, 24, 34, 'Tempura Roll', '2025-02-01', '18:00:00', 'Delivered', 16.99),
    (132, 10, 15, 'Steak Sandwich', '2025-02-02', '13:30:00', 'Delivered', 18.75),
    (133, 7, 28, 'BBQ Chicken Pizza', '2025-02-03', '19:45:00', 'Preparing', 20.50),
    (134, 3, 53, 'Grilled Salmon', '2025-02-04', '20:10:00', 'Delivered', 25.00),
    (135, 16, 17, 'Pad Thai', '2025-02-05', '12:20:00', 'Delivered', 14.95),
    (136, 21, 42, 'Bagel with Cream Cheese', '2025-02-06', '09:50:00', 'Cancelled', 4.99),
    (137, 12, 39, 'Shrimp Tacos', '2025-02-07', '18:15:00', 'Delivered', 15.00),
    (138, 27, 24, 'Cheese Enchiladas', '2025-02-08', '13:10:00', 'Preparing', 12.30),
    (139, 25, 33, 'Pasta Alfredo', '2025-02-09', '19:25:00', 'Delivered', 16.80),
    (140, 9, 6, 'Chicken Curry', '2025-02-10', '12:05:00', 'Delivered', 14.50),
    (141, 30, 12, 'Lobster Roll', '2025-02-11', '20:30:00', 'Preparing', 22.50),
    (142, 13, 22, 'Shawarma Wrap', '2025-02-12', '18:40:00', 'Delivered', 9.99),
    (143, 18, 64, 'Grilled Cheese Sandwich', '2025-02-13', '11:15:00', 'Delivered', 8.25),
    (144, 28, 59, 'Bacon Cheeseburger', '2025-02-14', '19:20:00', 'Preparing', 13.75),
    (145, 2, 44, 'Crispy Spring Rolls', '2025-02-15', '18:50:00', 'Delivered', 6.95),
    (146, 32, 31, 'Chicken Caesar Salad', '2025-02-16', '12:35:00', 'Delivered', 12.00),
    (147, 6, 20, 'Pancakes with Syrup', '2025-02-17', '08:45:00', 'Delivered', 9.50),
    (148, 4, 14, 'Vegan Tacos', '2025-02-18', '13:00:00', 'Preparing', 10.99),
    (149, 24, 57, 'Tandoori Paneer', '2025-02-19', '19:00:00', 'Cancelled', 12.75),
    (150, 8, 66, 'Chicken Noodle Soup', '2025-02-20', '11:50:00', 'Delivered', 8.99),
    (151, 29, 40, 'Beef Stroganoff', '2025-02-21', '19:30:00', 'Delivered', 18.99),
    (152, 22, 35, 'Egg Fried Rice', '2025-02-22', '13:20:00', 'Preparing', 12.40),
    (153, 15, 19, 'Pho Special', '2025-02-23', '12:45:00', 'Delivered', 14.50),
    (154, 20, 47, 'Fruit Smoothie', '2025-02-24', '09:10:00', 'Delivered', 6.75),
    (155, 26, 10, 'Ramen Bowl', '2025-02-25', '19:10:00', 'Preparing', 15.00),
    (156, 19, 2, 'Cheeseburger Combo', '2025-02-26', '12:15:00', 'Delivered', 13.25),
    (157, 1, 30, 'Pepperoni Pizza', '2025-02-27', '20:15:00', 'Delivered', 18.50),
    (158, 11, 48, 'Kung Pao Chicken', '2025-02-28', '13:30:00', 'Delivered', 14.99),
    (159, 5, 7, 'Chocolate Milkshake', '2025-03-01', '16:40:00', 'Preparing', 5.99),
    (160, 23, 50, 'Vegetarian Lasagna', '2025-03-02', '18:10:00', 'Delivered', 13.80),
    (161, 14, 38, 'Korean BBQ', '2025-03-03', '19:55:00', 'Delivered', 25.00),
    (162, 17, 55, 'Fish and Chips', '2025-03-04', '18:25:00', 'Preparing', 16.50),
    (163, 31, 67, 'Tomato Basil Soup', '2025-03-05', '12:00:00', 'Delivered', 8.20),
    (164, 7, 9, 'Pineapple Fried Rice', '2025-03-06', '11:40:00', 'Delivered', 13.30),
    (165, 21, 45, 'Burrito Bowl', '2025-03-07', '14:30:00', 'Cancelled', 12.75),
    (166, 10, 63, 'Pork Dumplings', '2025-03-08', '12:50:00', 'Preparing', 9.50),
    (167, 25, 4, 'Mango Lassi', '2025-03-09', '10:15:00', 'Delivered', 4.99),
    (168, 12, 23, 'Fettuccine Alfredo', '2025-03-10', '20:00:00', 'Delivered', 15.50),
    (169, 9, 11, 'Bagel and Lox', '2025-03-11', '09:10:00', 'Delivered', 8.99),
    (170, 3, 46, 'Shakshuka', '2025-03-12', '11:30:00', 'Delivered', 11.50),
    (171, 18, 13, 'Grilled Chicken Salad', '2025-03-13', '12:15:00', 'Delivered', 14.20),
    (172, 28, 60, 'Veggie Burger', '2025-03-14', '13:45:00', 'Preparing', 11.00),
    (173, 5, 34, 'Fried Rice and Spring Rolls', '2025-03-15', '18:00:00', 'Delivered', 15.50),
    (174, 8, 42, 'Taco Trio', '2025-03-16', '19:30:00', 'Delivered', 12.75),
    (175, 23, 16, 'Ham and Cheese Sandwich', '2025-03-17', '10:30:00', 'Delivered', 8.99),
    (176, 7, 54, 'Fish Tacos', '2025-03-18', '19:10:00', 'Cancelled', 13.50),
    (177, 14, 26, 'Butter Chicken with Naan', '2025-03-19', '13:20:00', 'Delivered', 16.99),
    (178, 9, 7, 'Vegan Sushi Roll', '2025-03-20', '18:45:00', 'Preparing', 11.50),
    (179, 15, 40, 'Steak Fajitas', '2025-03-21', '19:50:00', 'Delivered', 22.00),
    (180, 31, 64, 'Bagel with Peanut Butter', '2025-03-22', '08:40:00', 'Delivered', 5.75),
    (181, 20, 2, 'Mac and Cheese', '2025-03-23', '12:30:00', 'Preparing', 10.50),
    (182, 13, 49, 'Pineapple Pizza', '2025-03-24', '18:20:00', 'Delivered', 14.80),
    (183, 32, 36, 'Ratatouille', '2025-03-25', '19:10:00', 'Cancelled', 18.25),
    (184, 6, 15, 'Beef Noodle Soup', '2025-03-26', '11:35:00', 'Delivered', 13.40),
    (185, 19, 28, 'Pork Chops with Mash', '2025-03-27', '19:00:00', 'Delivered', 21.75),
    (186, 1, 43, 'Eggplant Parmesan', '2025-03-28', '12:25:00', 'Preparing', 14.95),
    (187, 22, 12, 'Chili Con Carne', '2025-03-29', '20:15:00', 'Delivered', 16.50),
    (188, 26, 29, 'Breakfast Platter', '2025-03-30', '09:10:00', 'Delivered', 12.30),
    (189, 4, 55, 'Crispy Chicken Wrap', '2025-03-31', '12:40:00', 'Preparing', 10.99),
    (190, 17, 21, 'Quinoa Salad', '2025-04-01', '13:00:00', 'Delivered', 9.50),
    (191, 30, 6, 'Fried Dumplings', '2025-04-02', '19:50:00', 'Preparing', 11.25),
    (192, 11, 10, 'Miso Soup', '2025-04-03', '18:35:00', 'Delivered', 7.80),
    (193, 24, 17, 'Clam Chowder', '2025-04-04', '13:45:00', 'Delivered', 12.00),
    (194, 3, 67, 'Avocado Toast', '2025-04-05', '10:20:00', 'Preparing', 8.75),
    (195, 27, 37, 'Vegetable Stir Fry', '2025-04-06', '12:50:00', 'Delivered', 14.30),
    (196, 2, 9, 'Coconut Curry', '2025-04-07', '19:20:00', 'Delivered', 15.00),
    (197, 25, 33, 'Mixed Grill Platter', '2025-04-08', '19:40:00', 'Preparing', 20.50),
    (198, 10, 53, 'Caesar Salad with Chicken', '2025-04-09', '12:10:00', 'Delivered', 13.00),
    (199, 21, 8, 'Breakfast Burrito', '2025-04-10', '08:50:00', 'Delivered', 9.75),
    (200, 12, 39, 'Spaghetti Carbonara', '2025-04-11', '19:30:00', 'Cancelled', 16.25),
    (201, 29, 44, 'Chicken Alfredo', '2025-04-12', '12:15:00', 'Delivered', 17.50),
    (202, 8, 25, 'Grilled Veggie Wrap', '2025-04-13', '13:45:00', 'Preparing', 12.00),
    (203, 14, 30, 'BBQ Ribs', '2025-04-14', '19:00:00', 'Delivered', 22.75),
    (204, 7, 18, 'Biryani with Raita', '2025-04-15', '20:20:00', 'Delivered', 14.99),
    (205, 18, 5, 'Margherita Pizza', '2025-04-16', '19:30:00', 'Preparing', 12.50),
    (206, 23, 11, 'Mediterranean Salad', '2025-04-17', '13:20:00', 'Delivered', 10.80),
    (207, 6, 47, 'Seafood Paella', '2025-04-18', '19:50:00', 'Delivered', 25.00),
    (208, 32, 50, 'Crepes with Nutella', '2025-04-19', '08:30:00', 'Preparing', 9.50),
    (209, 27, 35, 'Chicken Quesadilla', '2025-04-20', '18:40:00', 'Delivered', 14.99),
    (210, 20, 28, 'Margarita Cocktail', '2025-04-21', '19:10:00', 'Cancelled', 7.99),
    (211, 16, 60, 'Tofu Stir Fry', '2025-04-22', '13:30:00', 'Delivered', 13.50),
    (212, 3, 2, 'Stuffed Bell Peppers', '2025-04-23', '19:10:00', 'Delivered', 16.25),
    (213, 12, 66, 'Ice Cream Sundae', '2025-04-24', '14:15:00', 'Preparing', 8.00),
    (214, 30, 17, 'Bacon and Egg Sandwich', '2025-04-25', '09:50:00', 'Delivered', 10.50),
    (215, 19, 39, 'Pasta Primavera', '2025-04-26', '18:20:00', 'Delivered', 14.80),
    (216, 2, 48, 'Shrimp Cocktail', '2025-04-27', '12:25:00', 'Preparing', 12.75),
    (217, 21, 41, 'BBQ Chicken Wings', '2025-04-28', '19:40:00', 'Delivered', 15.00),
    (218, 1, 8, 'Veggie Sushi', '2025-04-29', '20:15:00', 'Cancelled', 12.50),
    (219, 11, 36, 'Thai Red Curry', '2025-04-30', '12:10:00', 'Delivered', 13.75),
    (220, 15, 22, 'Chocolate Cake', '2025-05-01', '19:30:00', 'Delivered', 7.99),
    (221, 26, 55, 'Lamb Gyro', '2025-05-02', '12:35:00', 'Preparing', 11.25),
    (222, 24, 9, 'Pineapple Juice', '2025-05-03', '11:50:00', 'Delivered', 5.50),
    (223, 5, 33, 'Vegetable Soup', '2025-05-04', '19:00:00', 'Delivered', 9.99),
    (224, 10, 14, 'Falafel Plate', '2025-05-05', '18:10:00', 'Preparing', 11.50),
    (225, 28, 4, 'Cobb Salad', '2025-05-06', '13:15:00', 'Delivered', 12.30),
    (226, 31, 53, 'Eggplant Stir Fry', '2025-05-07', '18:45:00', 'Delivered', 13.50),
    (227, 22, 10, 'Cheese Platter', '2025-05-08', '20:30:00', 'Preparing', 15.25),
    (228, 17, 19, 'Fruit Platter', '2025-05-09', '08:20:00', 'Delivered', 10.00),
    (229, 4, 50, 'Lasagna', '2025-05-10', '19:20:00', 'Cancelled', 14.75),
    (230, 7, 13, 'Beef Kebab', '2025-05-11', '18:30:00', 'Delivered', 18.50),
    (231, 8, 26, 'Tuna Sandwich', '2025-05-12', '11:30:00', 'Delivered', 9.25),
    (232, 9, 15, 'Tom Yum Soup', '2025-05-13', '19:50:00', 'Preparing', 11.40),
    (233, 13, 46, 'Garlic Bread', '2025-05-14', '13:40:00', 'Delivered', 5.00),
    (234, 16, 18, 'Cheesecake', '2025-05-15', '12:10:00', 'Delivered', 8.50),
    (235, 29, 32, 'Chicken Nuggets', '2025-05-16', '14:00:00', 'Preparing', 10.30),
    (236, 27, 60, 'Vegetable Curry', '2025-05-17', '18:20:00', 'Delivered', 14.00),
    (237, 23, 28, 'Churros with Chocolate', '2025-05-18', '19:10:00', 'Delivered', 7.75),
    (238, 12, 7, 'Fried Calamari', '2025-05-19', '12:20:00', 'Cancelled', 12.99),
    (239, 6, 12, 'Vegan Burger', '2025-05-20', '13:50:00', 'Delivered', 11.25),
    (240, 3, 5, 'Bacon Omelette', '2025-05-21', '08:45:00', 'Preparing', 8.00),
    (241, 9, 14, 'Grilled Cheese Sandwich', '2025-05-22', '11:15:00', 'Delivered', 6.75),
    (242, 15, 27, 'Chicken Caesar Salad', '2025-05-23', '12:30:00', 'Preparing', 12.50),
    (243, 24, 19, 'Fish Curry', '2025-05-24', '19:45:00', 'Delivered', 14.99),
    (244, 19, 11, 'Avocado Smoothie', '2025-05-25', '14:20:00', 'Delivered', 7.50),
    (245, 2, 35, 'Beef Tacos', '2025-05-26', '20:10:00', 'Preparing', 12.00),
    (246, 28, 43, 'Pasta Alfredo', '2025-05-27', '19:50:00', 'Delivered', 16.30),
    (247, 11, 25, 'Shrimp Tempura', '2025-05-28', '18:30:00', 'Delivered', 18.99),
    (248, 32, 38, 'Pancakes with Syrup', '2025-05-29', '08:40:00', 'Cancelled', 9.50),
    (249, 6, 52, 'Mutton Biryani', '2025-05-30', '13:15:00', 'Delivered', 15.25),
    (250, 1, 30, 'Egg Salad Sandwich', '2025-05-31', '10:20:00', 'Delivered', 8.75),
    (251, 10, 21, 'Veggie Stir Fry', '2025-06-01', '12:50:00', 'Preparing', 11.99),
    (252, 18, 49, 'Hot Dog', '2025-06-02', '14:10:00', 'Delivered', 7.50),
    (253, 8, 13, 'Cauliflower Soup', '2025-06-03', '18:30:00', 'Delivered', 9.25),
    (254, 25, 60, 'Mixed Vegetable Platter', '2025-06-04', '19:20:00', 'Delivered', 13.50),
    (255, 3, 16, 'Tomato Soup', '2025-06-05', '13:45:00', 'Delivered', 7.75),
    (256, 26, 12, 'Spinach Quiche', '2025-06-06', '11:50:00', 'Preparing', 10.00),
    (257, 4, 44, 'Greek Salad', '2025-06-07', '19:10:00', 'Delivered', 11.25),
    (258, 13, 48, 'Chicken Wings', '2025-06-08', '18:25:00', 'Delivered', 15.99),
    (259, 29, 10, 'Chocolate Milkshake', '2025-06-09', '12:40:00', 'Preparing', 6.50),
    (260, 5, 6, 'Fruit Salad', '2025-06-10', '08:15:00', 'Delivered', 8.50),
    (261, 14, 2, 'Pepperoni Pizza', '2025-06-11', '19:30:00', 'Delivered', 14.99),
    (262, 23, 7, 'BBQ Burger', '2025-06-12', '12:00:00', 'Preparing', 10.25),
    (263, 20, 4, 'Butter Naan', '2025-06-13', '13:20:00', 'Delivered', 5.99),
    (264, 31, 17, 'Sushi Platter', '2025-06-14', '19:50:00', 'Delivered', 25.50),
    (265, 9, 26, 'Rice and Beans', '2025-06-15', '12:25:00', 'Delivered', 8.99),
    (266, 22, 19, 'Vegetable Samosa', '2025-06-16', '14:30:00', 'Preparing', 6.75),
    (267, 16, 41, 'Tiramisu', '2025-06-17', '20:15:00', 'Delivered', 9.50),
    (268, 27, 15, 'Lentil Soup', '2025-06-18', '18:40:00', 'Delivered', 10.00),
    (269, 7, 39, 'Chicken Katsu Curry', '2025-06-19', '19:25:00', 'Cancelled', 13.75),
    (270, 24, 33, 'Cheese Omelette', '2025-06-20', '08:30:00', 'Delivered', 8.50),
    (271, 2, 55, 'Vegetable Lasagna', '2025-06-21', '18:15:00', 'Delivered', 14.25),
    (272, 19, 53, 'Ham Burger', '2025-06-22', '12:45:00', 'Preparing', 9.50),
    (273, 6, 35, 'Steamed Vegetables', '2025-06-23', '11:10:00', 'Delivered', 7.25),
    (274, 30, 9, 'Mashed Potatoes', '2025-06-24', '19:30:00', 'Preparing', 8.99),
    (275, 1, 18, 'Chicken Pot Pie', '2025-06-25', '13:20:00', 'Delivered', 11.75),
    (276, 28, 48, 'Fettuccine Alfredo', '2025-06-26', '19:45:00', 'Delivered', 16.50),
    (277, 17, 11, 'Roast Beef Sandwich', '2025-06-27', '12:35:00', 'Delivered', 10.50),
    (278, 3, 25, 'Pineapple Fried Rice', '2025-06-28', '13:50:00', 'Preparing', 12.75),
    (279, 11, 44, 'Stuffed Mushrooms', '2025-06-29', '19:20:00', 'Delivered', 11.00),
    (280, 26, 7, 'Pumpkin Soup', '2025-06-30', '18:50:00', 'Delivered', 8.75),
    (281, 8, 43, 'Chicken Burrito', '2025-07-01', '20:10:00', 'Cancelled', 10.50),
    (282, 5, 12, 'French Fries', '2025-07-02', '14:20:00', 'Delivered', 5.50),
    (283, 13, 29, 'Spaghetti Bolognese', '2025-07-03', '19:10:00', 'Preparing', 15.00),
    (284, 15, 6, 'Ice Cream Cake', '2025-07-04', '18:40:00', 'Delivered', 9.99),
    (285, 20, 60, 'Steak and Fries', '2025-07-05', '19:30:00', 'Delivered', 22.99),
    (286, 25, 32, 'Turkey Wrap', '2025-07-06', '13:45:00', 'Preparing', 11.00),
    (287, 32, 19, 'Vegan Pasta', '2025-07-07', '12:25:00', 'Delivered', 13.75),
    (288, 4, 10, 'Chocolate Brownie', '2025-07-08', '19:20:00', 'Cancelled', 7.50),
    (289, 18, 48, 'Mango Smoothie', '2025-07-09', '14:30:00', 'Delivered', 6.99),
    (290, 9, 45, 'Avocado Salad', '2025-07-10', '12:20:00', 'Delivered', 9.50),
    (291, 14, 20, 'Garlic Naan', '2025-07-11', '18:10:00', 'Preparing', 5.00),
    (292, 19, 34, 'Sweet Corn Soup', '2025-07-12', '19:45:00', 'Delivered', 8.25),
    (293, 27, 50, 'Coconut Shrimp', '2025-07-13', '13:40:00', 'Delivered', 15.50),
    (294, 7, 22, 'Onion Rings', '2025-07-14', '14:20:00', 'Delivered', 6.75),
    (295, 6, 5, 'BBQ Pork Ribs', '2025-07-15', '19:30:00', 'Preparing', 17.25),
    (296, 10, 15, 'Fried Plantains', '2025-07-16', '12:35:00', 'Delivered', 8.50),
    (297, 21, 27, 'Grilled Salmon', '2025-07-17', '18:20:00', 'Delivered', 20.75),
    (298, 16, 41, 'Peach Cobbler', '2025-07-18', '19:15:00', 'Delivered', 9.50),
    (299, 30, 13, 'Lamb Curry', '2025-07-19', '13:10:00', 'Cancelled', 14.99),
    (300, 28, 31, 'Vegetable Panini', '2025-07-20', '12:50:00', 'Delivered', 10.00),
    (301, 22, 24, 'Grilled Cheese Sandwich', '2025-07-21', '11:10:00', 'Delivered', 6.50),
    (302, 8, 48, 'Chicken Caesar Salad', '2025-07-22', '12:40:00', 'Preparing', 12.00),
    (303, 17, 19, 'Fish Curry', '2025-07-23', '18:30:00', 'Delivered', 15.50),
    (304, 4, 13, 'Avocado Smoothie', '2025-07-24', '14:15:00', 'Delivered', 7.00),
    (305, 11, 27, 'Beef Tacos', '2025-07-25', '20:20:00', 'Preparing', 12.50),
    (306, 5, 35, 'Pasta Alfredo', '2025-07-26', '19:40:00', 'Delivered', 16.75),
    (307, 19, 12, 'Shrimp Tempura', '2025-07-27', '18:45:00', 'Delivered', 19.25),
    (308, 29, 8, 'Pancakes with Syrup', '2025-07-28', '08:30:00', 'Cancelled', 9.00),
    (309, 24, 43, 'Mutton Biryani', '2025-07-29', '13:20:00', 'Delivered', 15.75),
    (310, 3, 36, 'Egg Salad Sandwich', '2025-07-30', '10:10:00', 'Delivered', 8.50),
    (311, 26, 44, 'Veggie Stir Fry', '2025-07-31', '12:50:00', 'Preparing', 11.50),
    (312, 9, 9, 'Hot Dog', '2025-08-01', '14:10:00', 'Delivered', 7.75),
    (313, 13, 55, 'Cauliflower Soup', '2025-08-02', '18:40:00', 'Delivered', 9.50),
    (314, 7, 11, 'Mixed Vegetable Platter', '2025-08-03', '19:10:00', 'Delivered', 13.00),
    (315, 32, 28, 'Tomato Soup', '2025-08-04', '13:15:00', 'Delivered', 7.25),
    (316, 1, 25, 'Spinach Quiche', '2025-08-05', '11:30:00', 'Preparing', 10.50),
    (317, 20, 15, 'Greek Salad', '2025-08-06', '19:00:00', 'Delivered', 11.50),
    (318, 10, 22, 'Chicken Wings', '2025-08-07', '18:15:00', 'Delivered', 15.25),
    (319, 30, 6, 'Chocolate Milkshake', '2025-08-08', '12:25:00', 'Preparing', 6.00),
    (320, 25, 47, 'Fruit Salad', '2025-08-09', '08:10:00', 'Delivered', 8.75),
    (321, 16, 3, 'Pepperoni Pizza', '2025-08-10', '19:50:00', 'Delivered', 14.25),
    (322, 2, 41, 'BBQ Burger', '2025-08-11', '12:15:00', 'Preparing', 10.75),
    (323, 12, 14, 'Butter Naan', '2025-08-12', '13:45:00', 'Delivered', 5.50),
    (324, 15, 27, 'Sushi Platter', '2025-08-13', '20:10:00', 'Delivered', 25.00),
    (325, 6, 30, 'Rice and Beans', '2025-08-14', '12:20:00', 'Delivered', 8.50),
    (326, 21, 9, 'Vegetable Samosa', '2025-08-15', '14:15:00', 'Preparing', 6.25),
    (327, 28, 29, 'Tiramisu', '2025-08-16', '19:30:00', 'Delivered', 9.75),
    (328, 31, 35, 'Lentil Soup', '2025-08-17', '18:50:00', 'Delivered', 10.75),
    (329, 14, 22, 'Chicken Katsu Curry', '2025-08-18', '20:00:00', 'Cancelled', 13.00),
    (330, 11, 31, 'Cheese Omelette', '2025-08-19', '08:40:00', 'Delivered', 8.25),
    (331, 18, 17, 'Vegetable Lasagna', '2025-08-20', '19:10:00', 'Delivered', 14.50),
    (332, 19, 4, 'Ham Burger', '2025-08-21', '12:50:00', 'Preparing', 9.25),
    (333, 8, 49, 'Steamed Vegetables', '2025-08-22', '11:00:00', 'Delivered', 7.50),
    (334, 23, 46, 'Mashed Potatoes', '2025-08-23', '19:45:00', 'Preparing', 9.00),
    (335, 5, 16, 'Chicken Pot Pie', '2025-08-24', '13:30:00', 'Delivered', 11.00),
    (336, 4, 36, 'Fettuccine Alfredo', '2025-08-25', '19:40:00', 'Delivered', 16.25),
    (337, 2, 12, 'Roast Beef Sandwich', '2025-08-26', '12:30:00', 'Delivered', 10.75),
    (338, 26, 55, 'Pineapple Fried Rice', '2025-08-27', '13:20:00', 'Preparing', 12.25),
    (339, 9, 43, 'Stuffed Mushrooms', '2025-08-28', '19:20:00', 'Delivered', 11.25),
    (340, 27, 47, 'Pumpkin Soup', '2025-08-29', '18:40:00', 'Delivered', 8.50),
    (341, 22, 41, 'Chicken Burrito', '2025-08-30', '20:00:00', 'Cancelled', 10.25),
    (342, 7, 25, 'French Fries', '2025-08-31', '14:20:00', 'Delivered', 5.25),
    (343, 24, 8, 'Spaghetti Bolognese', '2025-09-01', '19:30:00', 'Preparing', 15.50),
    (344, 1, 11, 'Ice Cream Cake', '2025-09-02', '18:30:00', 'Delivered', 9.50),
    (345, 15, 3, 'Steak and Fries', '2025-09-03', '19:10:00', 'Delivered', 22.00),
    (346, 10, 26, 'Turkey Wrap', '2025-09-04', '13:45:00', 'Preparing', 11.25),
    (347, 31, 33, 'Vegan Pasta', '2025-09-05', '12:20:00', 'Delivered', 13.50),
    (348, 3, 19, 'Chocolate Brownie', '2025-09-06', '19:00:00', 'Cancelled', 7.75),
    (349, 12, 6, 'Mango Smoothie', '2025-09-07', '14:15:00', 'Delivered', 6.75),
    (350, 17, 55, 'Avocado Salad', '2025-09-08', '12:40:00', 'Delivered', 9.25),
    (351, 13, 13, 'Garlic Naan', '2025-09-09', '18:20:00', 'Preparing', 5.25),
    (352, 29, 41, 'Sweet Corn Soup', '2025-09-10', '19:50:00', 'Delivered', 8.50),
    (353, 20, 15, 'Coconut Shrimp', '2025-09-11', '13:10:00', 'Delivered', 15.00),
    (354, 6, 17, 'Onion Rings', '2025-09-12', '14:40:00', 'Delivered', 6.50),
    (355, 18, 27, 'BBQ Pork Ribs', '2025-09-13', '19:20:00', 'Preparing', 17.75),
    (356, 9, 5, 'Fried Plantains', '2025-09-14', '12:10:00', 'Delivered', 8.25),
    (357, 11, 22, 'Grilled Salmon', '2025-09-15', '19:30:00', 'Delivered', 18.50),
    (358, 27, 44, 'Tandoori Chicken', '2025-09-16', '20:00:00', 'Preparing', 14.75),
    (359, 16, 33, 'Vegetable Stir Fry', '2025-09-17', '12:50:00', 'Delivered', 13.25),
    (360, 24, 25, 'Lemon Tart', '2025-09-18', '18:30:00', 'Delivered', 7.50),
    (361, 2, 7, 'Paneer Tikka', '2025-09-19', '14:20:00', 'Delivered', 11.50),
    (362, 8, 12, 'Greek Yogurt Bowl', '2025-09-20', '08:30:00', 'Preparing', 6.75),
    (363, 30, 41, 'Szechuan Chicken', '2025-09-21', '19:10:00', 'Delivered', 16.00),
    (364, 12, 49, 'Spinach Pasta', '2025-09-22', '13:40:00', 'Delivered', 12.00),
    (365, 6, 34, 'Chicken Nuggets', '2025-09-23', '20:15:00', 'Preparing', 7.75),
    (366, 1, 5, 'Macaroni Salad', '2025-09-24', '14:45:00', 'Delivered', 8.50),
    (367, 14, 11, 'Raspberry Cheesecake', '2025-09-25', '18:50:00', 'Cancelled', 9.25),
    (368, 22, 26, 'Chicken Alfredo', '2025-09-26', '19:20:00', 'Delivered', 14.50),
    (369, 29, 19, 'Seafood Platter', '2025-09-27', '20:40:00', 'Preparing', 23.00),
    (370, 15, 8, 'Banana Split', '2025-09-28', '12:30:00', 'Delivered', 8.75),
    (371, 25, 30, 'Turkey Club Sandwich', '2025-09-29', '14:25:00', 'Delivered', 9.50),
    (372, 18, 15, 'Vegetarian Pizza', '2025-09-30', '19:50:00', 'Preparing', 13.50),
    (373, 3, 47, 'Chicken Shawarma', '2025-10-01', '12:15:00', 'Delivered', 10.00),
    (374, 19, 43, 'Stuffed Peppers', '2025-10-02', '18:10:00', 'Delivered', 11.75),
    (375, 10, 9, 'Tomato Basil Soup', '2025-10-03', '14:30:00', 'Preparing', 7.25),
    (376, 20, 4, 'Chocolate Lava Cake', '2025-10-04', '20:00:00', 'Delivered', 8.50),
    (377, 26, 29, 'Beef Burger', '2025-10-05', '13:45:00', 'Delivered', 10.50),
    (378, 9, 22, 'Chicken Dumplings', '2025-10-06', '19:10:00', 'Delivered', 12.75),
    (379, 4, 16, 'French Onion Soup', '2025-10-07', '18:50:00', 'Preparing', 8.25),
    (380, 17, 31, 'Egg Curry', '2025-10-08', '19:30:00', 'Delivered', 9.75),
    (381, 31, 40, 'Miso Soup', '2025-10-09', '18:20:00', 'Delivered', 7.25),
    (382, 5, 10, 'Vegetable Curry', '2025-10-10', '12:40:00', 'Preparing', 13.50),
    (383, 7, 45, 'Chocolate Chip Cookies', '2025-10-11', '20:15:00', 'Delivered', 6.50),
    (384, 13, 6, 'Teriyaki Chicken', '2025-10-12', '19:10:00', 'Delivered', 14.25),
    (385, 28, 37, 'Caesar Salad', '2025-10-13', '12:30:00', 'Preparing', 9.00),
    (386, 23, 13, 'Pumpkin Pie', '2025-10-14', '13:50:00', 'Delivered', 7.75),
    (387, 27, 20, 'Fried Rice', '2025-10-15', '14:25:00', 'Preparing', 8.00),
    (388, 32, 18, 'Beef Steak', '2025-10-16', '20:40:00', 'Delivered', 21.50),
    (389, 21, 3, 'Spring Rolls', '2025-10-17', '19:30:00', 'Delivered', 9.25),
    (390, 30, 15, 'Blueberry Muffin', '2025-10-18', '08:15:00', 'Preparing', 4.50),
    (391, 6, 46, 'Cucumber Salad', '2025-10-19', '12:50:00', 'Delivered', 6.00),
    (392, 8, 50, 'Ginger Tea', '2025-10-20', '19:10:00', 'Delivered', 5.50),
    (393, 11, 28, 'Zucchini Noodles', '2025-10-21', '18:50:00', 'Preparing', 9.75),
    (394, 2, 14, 'Grilled Vegetables', '2025-10-22', '13:30:00', 'Delivered', 10.50),
    (395, 22, 35, 'Chicken Pad Thai', '2025-10-23', '20:15:00', 'Delivered', 14.75),
    (396, 18, 44, 'Spicy Ramen', '2025-10-24', '14:20:00', 'Delivered', 12.50),
    (397, 9, 23, 'Bacon Sandwich', '2025-10-25', '12:45:00', 'Preparing', 9.00),
    (398, 17, 19, 'Apple Pie', '2025-10-26', '13:10:00', 'Delivered', 8.75),
    (399, 4, 33, 'Pineapple Smoothie', '2025-10-27', '19:30:00', 'Delivered', 6.75),
    (400, 20, 6, 'Tuna Melt', '2025-10-28', '18:15:00', 'Preparing', 11.50),
    (401, 15, 31, 'Baked Potato', '2025-10-29', '19:10:00', 'Delivered', 8.25),
    (402, 29, 10, 'Pasta Carbonara', '2025-10-30', '13:30:00', 'Preparing', 14.25),
    (403, 24, 9, 'Crispy Chicken Wrap', '2025-10-31', '12:40:00', 'Delivered', 10.75),
    (404, 7, 22, 'Garlic Bread', '2025-11-01', '20:10:00', 'Delivered', 4.50),
    (405, 13, 12, 'Salmon Sushi', '2025-11-02', '19:20:00', 'Preparing', 18.00),
    (406, 26, 3, 'Quinoa Bowl', '2025-11-03', '14:25:00', 'Delivered', 11.75),
    (407, 27, 16, 'Mango Sorbet', '2025-11-04', '13:45:00', 'Delivered', 7.50),
    (408, 9, 47, 'Chocolate Pudding', '2025-11-05', '18:40:00', 'Preparing', 6.25),
    (409, 2, 18, 'Lamb Kebab', '2025-11-06', '19:30:00', 'Delivered', 15.25),
    (410, 8, 22, 'Falafel Plate', '2025-11-07', '12:15:00', 'Preparing', 9.75),
    (411, 11, 15, 'Grilled Chicken Sandwich', '2025-11-08', '18:20:00', 'Delivered', 10.50),
    (412, 21, 7, 'Vegan Burger', '2025-11-09', '12:40:00', 'Preparing', 13.00),
    (413, 5, 29, 'Vegetable Sushi', '2025-11-10', '19:30:00', 'Delivered', 14.00),
    (414, 14, 40, 'Shrimp Fried Rice', '2025-11-11', '20:40:00', 'Delivered', 16.75),
    (415, 32, 23, 'Mango Milkshake', '2025-11-12', '12:20:00', 'Preparing', 6.75),
    (416, 31, 50, 'Pineapple Cake', '2025-11-13', '19:10:00', 'Delivered', 8.50),
    (417, 3, 43, 'Chicken Soup', '2025-11-14', '14:45:00', 'Preparing', 7.25),
    (418, 17, 35, 'Ice Cream Sundae', '2025-11-15', '19:50:00', 'Delivered', 9.75),
    (419, 6, 8, 'Cheese Pizza', '2025-11-16', '13:10:00', 'Preparing', 11.50),
    (420, 22, 18, 'Brownie Sundae', '2025-11-17', '18:25:00', 'Delivered', 8.75);

INSERT INTO Riders (Rider_ID, Rider_Name, Signup_Date)
VALUES
    (1, 'John Carter', '2025-01-01'),
    (2, 'Alice Johnson', '2025-01-03'),
    (3, 'Michael Smith', '2025-01-05'),
    (4, 'Emily Brown', '2025-01-07'),
    (5, 'David Wilson', '2025-01-09'),
    (6, 'Sophia Davis', '2025-01-11'),
    (7, 'James Miller', '2025-01-13'),
    (8, 'Olivia Martinez', '2025-01-15'),
    (9, 'William Garcia', '2025-01-17'),
    (10, 'Mia Rodriguez', '2025-01-19'),
    (11, 'Alexander Hernandez', '2025-01-21'),
    (12, 'Isabella Lopez', '2025-01-23'),
    (13, 'Benjamin Gonzalez', '2025-01-25'),
    (14, 'Ava Perez', '2025-01-27'),
    (15, 'Lucas White', '2025-01-29'),
    (16, 'Charlotte Moore', '2025-01-31'),
    (17, 'Henry Thompson', '2025-02-02'),
    (18, 'Amelia Anderson', '2025-02-04'),
    (19, 'Jack Harris', '2025-02-06'),
    (20, 'Evelyn Clark', '2025-02-08'),
    (21, 'Daniel Lewis', '2025-02-10'),
    (22, 'Harper Walker', '2025-02-12'),
    (23, 'Matthew Hall', '2025-02-14'),
    (24, 'Ella Young', '2025-02-16'),
    (25, 'Sebastian Allen', '2025-02-18'),
    (26, 'Abigail King', '2025-02-20'),
    (27, 'Ethan Wright', '2025-02-22'),
    (28, 'Scarlett Scott', '2025-02-24'),
    (29, 'Noah Green', '2025-02-26'),
    (30, 'Liam Adams', '2025-02-28'),
    (31, 'Emma Baker', '2025-03-01'),
    (32, 'Mason Hill', '2025-03-03'),
    (33, 'Sofia Nelson', '2025-03-05'),
    (34, 'Logan Carter', '2025-03-07');
	INSERT INTO Deliveries (Delivery_ID, Order_ID, Delivery_Status, Delivery_Time, Rider_ID)
VALUES
    (1, 101, 'Delivered', '12:30:00', 5),
    (2, 102, 'Delivered', '13:15:00', 12),
    (3, 103, 'Cancelled', '14:00:00', 8),
    (4, 104, 'Preparing', '15:45:00', 3),
    (5, 105, 'Delivered', '18:30:00', 21),
    (6, 106, 'Cancelled', '12:20:00', 17),
    (7, 107, 'Delivered', '19:50:00', 11),
    (8, 108, 'Delivered', '20:30:00', 9),
    (9, 109, 'Preparing', '14:25:00', 6),
    (10, 110, 'Delivered', '18:10:00', 14),
    (11, 111, 'Delivered', '13:50:00', 22),
    (12, 112, 'Preparing', '12:45:00', 7),
    (13, 113, 'Delivered', '16:30:00', 2),
    (14, 114, 'Cancelled', '17:50:00', 20),
    (15, 115, 'Delivered', '14:40:00', 1),
    (16, 116, 'Preparing', '15:30:00', 23),
    (17, 117, 'Delivered', '13:15:00', 18),
    (18, 118, 'Delivered', '12:25:00', 10),
    (19, 119, 'Cancelled', '14:50:00', 25),
    (20, 120, 'Preparing', '18:20:00', 30),
    (21, 121, 'Delivered', '19:30:00', 34),
    (22, 122, 'Delivered', '20:00:00', 19),
    (23, 123, 'Preparing', '16:10:00', 4),
    (24, 124, 'Delivered', '17:15:00', 27),
    (25, 125, 'Delivered', '18:00:00', 32),
    (26, 126, 'Preparing', '19:20:00', 13),
    (27, 127, 'Cancelled', '20:50:00', 28),
    (28, 128, 'Delivered', '14:30:00', 29),
    (29, 129, 'Preparing', '15:40:00', 15),
    (30, 130, 'Delivered', '13:50:00', 24),
    (31, 131, 'Delivered', '18:25:00', 31),
    (32, 132, 'Preparing', '12:15:00', 33),
    (33, 133, 'Delivered', '14:00:00', 26),
    (34, 134, 'Cancelled', '20:40:00', 16),
    (35, 135, 'Delivered', '19:10:00', 22),
    (36, 136, 'Preparing', '13:00:00', 20),
    (37, 137, 'Delivered', '15:30:00', 8),
    (38, 138, 'Delivered', '17:40:00', 19),
    (39, 139, 'Preparing', '19:50:00', 2),
    (40, 140, 'Delivered', '12:40:00', 21);


SELECT * FROM Customers;
SELECT * FROM Restaurants;
SELECT * FROM Orders;
SELECT * FROM Riders;
SELECT * FROM Deliveries;

-- Query 1: Top 3 customers who spent the most money on orders
-- Fetch the top 3 customers based on their total spending across all orders.
SELECT TOP 3 
    Customer_ID, 
    SUM(Total_Amount) AS Total_Spent
FROM Orders
GROUP BY Customer_ID
ORDER BY Total_Spent DESC;

-- Query 2: Most popular item across all restaurants
-- Identify the most frequently ordered item.
SELECT TOP 1 
    Order_Item, 
    COUNT(Order_Item) AS Order_Count
FROM Orders
GROUP BY Order_Item
ORDER BY Order_Count DESC;

-- Query 3: Restaurant with the highest number of orders
-- Find the restaurant that received the maximum number of orders.
SELECT 
    Restaurant_ID, 
    COUNT(Restaurant_ID) AS Order_Count
FROM Orders
GROUP BY Restaurant_ID
ORDER BY Order_Count DESC;

-- Query 4: Top 5 most frequently ordered dishes by a specific customer
-- Fetch the top 5 dishes ordered by a customer named "Nathan Scott."
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

-- Query 5: Time slot with the most orders placed
-- Analyze which time slot has the highest number of orders.
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

-- Query 6: Average order value per customer with more than 5 orders
-- Calculate the average spending per order for customers who have placed more than 5 orders.
SELECT 
    C.Customer_Name, 
    AVG(O.Total_Amount) AS Average_Order_Value
FROM Customers C
JOIN Orders O ON C.Customer_ID = O.Customer_ID
GROUP BY C.Customer_Name
HAVING COUNT(O.Order_ID) > 5
ORDER BY Average_Order_Value DESC;

-- Query 7: High-value customers
-- Identify customers who have spent more than $130 in total on orders.
SELECT 
    C.Customer_ID, 
    C.Customer_Name, 
    SUM(O.Total_Amount) AS Total_Spent
FROM Customers C
JOIN Orders O ON C.Customer_ID = O.Customer_ID
GROUP BY C.Customer_ID, C.Customer_Name
HAVING SUM(O.Total_Amount) > 130;

-- Query 8: Orders without delivery
-- Identify restaurants with undelivered orders, showing restaurant name, city, and count of undelivered orders.
SELECT R.Restaurant_Name, R.City, 
       COUNT(CASE WHEN O.Order_Status != 'Delivered' THEN 1 END) AS undelivered_orders
FROM Restaurants R 
JOIN Orders O ON R.Restaurant_ID = O.Restaurant_ID 
GROUP BY R.Restaurant_Name, R.City
ORDER BY undelivered_orders DESC;

-- Query 9: Restaurant Revenue Ranking
-- Rank restaurants by their revenue, showing the top restaurant by revenue in each city.
WITH RankedRestaurants AS (
    SELECT R.City, R.Restaurant_Name, 
           SUM(O.Total_Amount) AS Total_Revenue,
           RANK() OVER (PARTITION BY City ORDER BY SUM(O.Total_Amount) DESC) AS rev_rank 
    FROM Restaurants R
    JOIN Orders O ON R.Restaurant_ID = O.Restaurant_ID
    GROUP BY R.City, R.Restaurant_Name
)
SELECT * FROM RankedRestaurants WHERE rev_rank = 1;

-- Query 10: Most Popular Dish in each City
-- Identify the most ordered dish in each city based on the number of orders.
WITH DishRanking AS (
    SELECT R.City, O.Order_Item,
           RANK() OVER (PARTITION BY R.City ORDER BY COUNT(Order_Item) DESC) AS dish_rank
    FROM Orders O 
    JOIN Restaurants R ON O.Restaurant_ID = R.Restaurant_ID 
    GROUP BY R.City, O.Order_Item
) 
SELECT * FROM DishRanking WHERE dish_rank = 1;

-- Query 11: Customer Churn
-- Identify customers who placed orders in 2024 but not in 2025.
SELECT DISTINCT Customer_ID 
FROM Orders 
WHERE YEAR(Order_Date) = 2024
  AND Customer_ID NOT IN (
      SELECT DISTINCT Customer_ID 
      FROM Orders 
      WHERE YEAR(Order_Date) = 2025
  );

-- Query 12: Rider's Average Delivery Time
-- Calculate the average delivery time for each rider in minutes.
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

-- Query 13: Monthly Restaurant Growth Ratio
-- Calculate the month-over-month growth ratio for each restaurant based on delivered orders.
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

-- Query 14: Customer Segmentation
-- Segment customers into 'Gold' and 'Silver' based on their total spending compared to the average order value.
WITH CustomerSpending AS (
    SELECT C.Customer_Name, SUM(Total_Amount) AS TotalSpent,
           CASE 
               WHEN SUM(Total_Amount) > (SELECT AVG(Total_Amount) FROM Orders) THEN 'Gold' 
               ELSE 'Silver' 
           END AS Segment
    FROM Customers C
    JOIN Orders O ON C.Customer_ID = O.Customer_ID 
    GROUP BY C.Customer_Name
)
SELECT Segment, COUNT(*) AS SegmentCount, SUM(TotalSpent) AS TotalSpent
FROM CustomerSpending
GROUP BY Segment;

-- Query 15: Rider's Monthly Earnings
-- Calculate rider's total monthly earnings, assuming they earn 8% of the total order value.
SELECT d.rider_id, FORMAT(o.Order_Date, 'yyyy-MM') AS Month,
       SUM(Total_Amount) * 0.08 AS rider_earning 
FROM Orders o 
JOIN Deliveries d ON o.Order_ID = d.Order_ID 
GROUP BY d.Rider_ID, FORMAT(o.Order_Date, 'yyyy-MM')
ORDER BY d.Rider_ID, Month;

-- Query 16: Rider Rating Analysis
-- Analyze rider ratings based on delivery time: <15 mins (5 stars), 15-20 mins (4 stars), >20 mins (3 stars).
WITH DeliveryTimes AS (
    SELECT d.Rider_ID, o.Order_ID,
           CASE 
               WHEN d.Delivery_Time >= o.Order_Time THEN 
                   DATEDIFF(SECOND, CAST(o.Order_Time AS DATETIME), CAST(d.Delivery_Time AS DATETIME)) / 60.0
               ELSE 
                   DATEDIFF(SECOND, CAST(o.Order_Time AS DATETIME), DATEADD(DAY, 1, CAST(d.Delivery_Time AS DATETIME))) / 60.0
           END AS Time_Difference_Minutes
    FROM Orders o
    JOIN Deliveries d ON o.Order_ID = d.Order_ID
)
SELECT Rider_ID,
       AVG(CASE
           WHEN Time_Difference_Minutes < 15 THEN 5
           WHEN Time_Difference_Minutes BETWEEN 15 AND 20 THEN 4
           ELSE 3
       END) AS Avg_Rider_Rating
FROM DeliveryTimes
GROUP BY Rider_ID;

-- Query 17: Order Frequency by Day
-- Identify the busiest day of the week for each restaurant based on order count.
WITH DailyOrders AS (
    SELECT r.Restaurant_Name,
           DATENAME(WEEKDAY, o.Order_Date) AS Order_Day,
           COUNT(o.Order_ID) AS Order_Count,
           RANK() OVER (PARTITION BY r.Restaurant_Name ORDER BY COUNT(o.Order_ID) DESC) AS RankByDay
    FROM Restaurants r
    JOIN Orders o ON r.Restaurant_ID = o.Restaurant_ID
    GROUP BY r.Restaurant_Name, DATENAME(WEEKDAY, o.Order_Date)
)
SELECT Restaurant_Name, Order_Day, Order_Count
FROM DailyOrders
WHERE RankByDay = 1
ORDER BY Order_Count DESC;

-- Query 18: Customer Lifetime Value
-- Calculate the total revenue generated by each customer over all their orders.
SELECT o.Customer_ID, c.Customer_Name, SUM(o.Total_Amount) AS CLV 
FROM Orders o 
JOIN Customers c ON o.Customer_ID = c.Customer_ID
GROUP BY o.Customer_ID, c.Customer_Name;











