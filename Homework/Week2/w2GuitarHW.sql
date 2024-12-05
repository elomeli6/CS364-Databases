/* @Author Eric Lomeli-Gil HW 2 due 1/21/23 */

-- Exercise 1 --

SELECT * FROM guitarshop.Products
INNER JOIN Categories
ON Products.CategoryID = Categories.CategoryID;

-- Exercise 2 --

SELECT CONCAT(Customers.FirstName,' ',Customers.LastName) AS "Full Name",
		Orders.OrderDate,
        Orders.ShipDate,
        Orders.ShipAmount
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE Orders.ShipDate IS NOT NULL
ORDER BY Orders.OrderDate DESC;

-- Exercise 3 --

SELECT  Customers.FirstName,
		Customers.LastName,
		Addresses.Line1,
        Addresses.Line2,
        Addresses.City,
        Addresses.State,
        Addresses.ZipCode
FROM Addresses
INNER JOIN Customers ON Customers.CustomerID = Addresses.AddressID;

-- Exercise 4 --

SELECT Products.ProductName,
	   Products.Description,
       Products.ListPrice,
       Products.DiscountPercent,
       OrderItems.OrderID,
       OrderItems.DiscountAmount,
       OrderItems.Quantity
       
FROM Products
LEFT JOIN OrderItems ON OrderItems.ProductID = Products.ProductID;

-- Exercise 5 --

SELECT Products.ProductName,
	   Products.Description, 
       Products.ListPrice, 
       Products.DiscountPercent,
       SUM(OrderItems.quantity)

FROM Products
LEFT JOIN OrderItems ON OrderItems.ProductID = Products.ProductID
GROUP BY
	   Products.ProductName,
	   Products.Description, 
       Products.ListPrice, 
       Products.DiscountPercent;
       
-- Exercise 6 --

SELECT OrderDate,
	   SUM(ItemPrice) AS ItemTotal,
       SUM(DiscountAmount) AS Discount,
       SUM(ItemPrice + DiscountAmount) AS OrderTotal,
       SUM(ItemPrice + DiscountAmount + ShipAmount + TaxAmount) AS Total,
       Orders.ShipAmount,
       Orders.TaxAmount
       
From Orders

INNER JOIN OrderItems ON Orders.OrderID = OrderItems.OrderID

GROUP BY
	  # Orders.OrderID,
       Orders.OrderDate,
       Orders.ShipAmount,
       Orders.TaxAmount;
       


-- Exercise 7 --

SELECT CONCAT(Customers.FirstName, " ", Customers.LastName) AS "Full Name",
	   Customers.EmailAddress
       
FROM Customers

UNION

SELECT CONCAT(Administrators.FirstName," ",Administrators.LastName) AS "Full Name",
       Administrators.EmailAddress
FROM Administrators;


