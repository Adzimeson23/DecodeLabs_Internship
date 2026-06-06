CREATE DATABASE internship_project;
USE internship_project;
CREATE TABLE orders (
    Order_ID VARCHAR(20),
    Date DATE,
    Customer_ID VARCHAR(20),
    Product VARCHAR(50),
    Quantity INT,
    Unit_Price DECIMAL(10,2),
    Shipping_Address VARCHAR(100),
    Payment_Method VARCHAR(50),
    Order_Status VARCHAR(50),
    Tracking_Number VARCHAR(50),
    Items_In_Cart INT,
    Coupon_Code VARCHAR(50),
    Referral_Source VARCHAR(50),
    Total_Price DECIMAL(10,2)
);
select * from orders;
SELECT COUNT(*) AS Total_Orders
FROM orders;
SELECT SUM(Total_Price) AS Total_Revenue
FROM orders;
SELECT AVG(Total_Price) AS Average_Order_Value
FROM orders;
SELECT Product,
       SUM(Quantity) AS Total_Sold
FROM orders
GROUP BY Product
ORDER BY Total_Sold DESC;
SELECT Product,
       SUM(Total_Price) AS Revenue
FROM orders
GROUP BY Product
ORDER BY Revenue DESC;
SELECT Payment_Method,
       COUNT(*) AS Number_of_Orders
FROM orders
GROUP BY Payment_Method
ORDER BY Number_of_Orders DESC;
SELECT Order_Status,
       COUNT(*) AS Total
FROM orders
GROUP BY Order_Status;
SELECT Referral_Source,
       SUM(Total_Price) AS Revenue
FROM orders
GROUP BY Referral_Source
ORDER BY Revenue DESC;
SELECT Referral_Source,
       SUM(Total_Price) AS Revenue
FROM orders
GROUP BY Referral_Source
ORDER BY Revenue DESC;
SELECT Coupon_Code,
       COUNT(*) AS Orders_Used
FROM orders
GROUP BY Coupon_Code
ORDER BY Orders_Used DESC;
SELECT MONTH(Date) AS Month,
       SUM(Total_Price) AS Revenue
FROM orders
GROUP BY MONTH(Date)
ORDER BY Month;
SELECT Customer_ID,
       SUM(Total_Price) AS Total_Spent
FROM orders
GROUP BY Customer_ID
ORDER BY Total_Spent DESC
LIMIT 10;
SELECT AVG(Items_In_Cart) AS Average_Cart_Size
FROM orders;
SELECT *
FROM orders
WHERE Order_Status = 'Delivered';
SELECT Product,
       COUNT(*) AS Orders
FROM orders
WHERE Referral_Source = 'Instagram'
GROUP BY Product;
SELECT *
FROM orders
ORDER BY Total_Price DESC
LIMIT 5; 



