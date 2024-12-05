/* AUTHOR: Eric Lomeli-Gil */

-- Part 1 --

SELECT ProductCode, ProductName,ListPrice, DiscountPercent
FROM guitarshop.Products
ORDER BY ListPrice;

-- Part 2 --

SELECT Concat(LastName,',',FirstName) AS "Full Name"
FROM Customers
ORDER BY LastName ASC;

-- Part 3 --

SELECT ProductName, ListPrice, DateAdded
FROM Products
WHERE ListPrice > 500
	AND ListPrice < 2000
ORDER BY ListPrice DESC;

-- Part 4 --

SELECT ProductName, ListPrice, DiscountPercent, ROUND(ListPrice * (DiscountPercent / 100), 2) AS "Discount Amount", ROUND(ListPrice - (ListPrice * DiscountPercent / 100), 2) AS "Discounted Price"
FROM Products
ORDER BY "Discounted Price" DESC;

-- Part 5 --

SELECT 
    ItemID, 
    ItemPrice, 
    DiscountAmount, 
    Quantity, 
    ROUND((ItemPrice * Quantity), 2) AS "PriceTotal", 
    ROUND((Quantity * DiscountAmount), 2) AS "DiscountTotal", 
    ROUND(((ItemPrice - DiscountAmount) * Quantity), 2) AS "ItemTotal"
FROM 
    OrderItems    
WHERE
    ROUND(((ItemPrice - DiscountAmount) * Quantity), 2) > 500
ORDER BY 
    "ItemTotal" DESC;
    
-- Part 6 --

SELECT OrderID, OrderDate, ShipDate
FROM Orders
Where ShipDate IS NULL;

-- Part 7 --

SELECT 
    100.00 AS Price, 
    0.07 AS TaxRate, 
    (100.00 * 0.07) AS TaxAmount, 
    ROUND((100.00 + (100.00 * 0.07)),2) AS Total;





