-- Question 1 — Achieving 1NF (First Normal Form) 

-- Transform ProductDetail table into 1NF by splitting comma-separated products into individual rows

-- Assuming we have a table named ProductDetail with columns: OrderID, CustomerName, Products
-- We'll use UNION ALL or a string splitting function (depending on the SQL dialect)

-- Example using UNION ALL (static version)
SELECT 101 AS OrderID, 'John Doe' AS CustomerName, 'Laptop' AS Product
UNION ALL
SELECT 101, 'John Doe', 'Mouse'
UNION ALL
SELECT 102, 'Jane Smith', 'Tablet'
UNION ALL
SELECT 102, 'Jane Smith', 'Keyboard'
UNION ALL
SELECT 102, 'Jane Smith', 'Mouse'
UNION ALL
SELECT 103, 'Emily Clark', 'Phone';


 --- Question 2 — Achieving 2NF (Second Normal Form)
-- Create the Orders table with OrderID and CustomerName (remove partial dependency)
-- This is the parent table
SELECT DISTINCT
    OrderID,
    CustomerName
FROM
    OrderDetails;

-- Create the OrderItems table where each product is linked to the order
-- This is the child table
SELECT 
    OrderID,
    Product,
    Quantity
FROM 
    OrderDetails;
