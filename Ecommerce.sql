CREATE DATABASE ecommerce;
USE ecommerce;

-- Users table
CREATE TABLE Users (
    user_id CHAR(36) PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    date_of_birth DATE,
    created_at DATETIME
);

-- Categories table
CREATE TABLE Categories (
    category_id CHAR(36) PRIMARY KEY,
    category_name VARCHAR(255)
);

-- Products table
CREATE TABLE Products (
    product_id CHAR(36) PRIMARY KEY,
    product_name VARCHAR(255),
    price DECIMAL(10, 2),
    category_id CHAR(36),
    created_at DATETIME,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

-- Orders table
CREATE TABLE Orders (
    order_id CHAR(36) PRIMARY KEY,
    user_id CHAR(36),
    order_date DATETIME,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- OrderItems table
CREATE TABLE OrderItems (
    order_item_id CHAR(36) PRIMARY KEY,
    order_id CHAR(36),
    product_id CHAR(36),
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Reviews table
CREATE TABLE Reviews (
    review_id CHAR(36) PRIMARY KEY,
    user_id CHAR(36),
    product_id CHAR(36),
    rating INT,
    comment TEXT,
    review_date DATETIME,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Address table
CREATE TABLE Addresses (
	address_id CHAR(36) PRIMARY KEY,
    user_id CHAR(36),
    adress TEXT,
    city VARCHAR(255),
    state VARCHAR(255),
    zipcode VARCHAR(20),
    country VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Payments table
CREATE TABLE Payments (
	payment_id CHAR(36) PRIMARY KEY,
    order_id CHAR(36),
    payment_date DATETIME,
    payment_method VARCHAR(50),
    amount DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

SHOW VARIABLES LIKE "secure_file_priv"; 
-- Your MySQL server has been started with --secure-file-priv option 
-- which limits from which directories you can load files using LOAD DATA INFILE.

-- Load CSV data into tables
-- Users
BULK INSERT Users
FROM 'C:/ProgramData/MySQL/MySQL Server 8.2/Uploads/users.csv'
WITH (
  FIELDTERMINATOR = ',',
  ROWTERMINATOR = '\n',
  FIRSTROW = 2 -- Skip the first row (assuming it's a header)
)


SELECT TOP 10 * FROM Users;

-- Categories
BULK INSERT Categories
FROM 'C:/ProgramData/MySQL/MySQL Server 8.2/Uploads/categories.csv'
WITH (
  FIELDTERMINATOR = ',',
  ROWTERMINATOR = '\n',
  FIRSTROW = 2 -- Skip the first row (assuming it's a header)
)

SELECT TOP 10 * FROM Categories;

-- Products
BULK INSERT Products
FROM 'C:/ProgramData/MySQL/MySQL Server 8.2/Uploads/products.csv'
WITH (
  FIELDTERMINATOR = ',',
  ROWTERMINATOR = '\n',
  FIRSTROW = 2 -- Skip the first row (assuming it's a header)
)

SELECT TOP 10 * FROM Products;

-- Orders
BULK INSERT Orders
FROM 'C:\ProgramData\MySQL\MySQL Server 8.2\Uploads\orders_fixed.csv'
WITH (
  FIELDTERMINATOR = ',',
  ROWTERMINATOR = '\n',
  FIRSTROW = 2 -- Skip the first row (assuming it's a header)
)


SELECT * FROM Orders LIMIT ;

-- OrderItems
BULK INSERT OrderItems
FROM 'C:/ProgramData/MySQL/MySQL Server 8.2/Uploads/order_items.csv'
WITH (
  FIELDTERMINATOR = ',',
  ROWTERMINATOR = '\n',
  FIRSTROW = 2 -- Skip the first row (assuming it's a header)
)

SELECT TOP 10 * FROM OrderItems;

-- Reviews
BULK INSERT Reviews
FROM 'C:/ProgramData/MySQL/MySQL Server 8.2/Uploads/reviews.csv'
WITH (
  FIELDTERMINATOR = ',',
  ROWTERMINATOR = '\n',
  FIRSTROW = 2 -- Skip the first row (assuming it's a header)
)


SELECT TOP 10 * FROM Reviews;

-- Addresses
BULK INSERT Addresses
FROM 'C:/ProgramData/MySQL/MySQL Server 8.2/Uploads/addresses.csv'
WITH (
  FIELDTERMINATOR = ',',
  ROWTERMINATOR = '\n',
  FIRSTROW = 2 -- Skip the first row (assuming it's a header)
)

SELECT TOP 10 * FROM Addresses;

-- Payments
BULK INSERT Payments
FROM 'C:/ProgramData/MySQL/MySQL Server 8.2/Uploads/payments.csv'
WITH (
  FIELDTERMINATOR = ',',
  ROWTERMINATOR = '\n',
  FIRSTROW = 2 -- Skip the first row (assuming it's a header)
)


SELECT TOP 10 * FROM Payments;

    