-- Homework 6 Eric Lomeli-Gil --

-- Exercise 1 --
INSERT INTO Categories (CategoryName) VALUES ('Brass');

-- Exercise 2 --

UPDATE Categories SET CategoryName = 'Woodwinds' WHERE CategoryName = 'Brass';

-- Exercise 3 --

DELETE FROM Categories WHERE CategoryName = 'Woodwinds';

-- Exercise 4 --

INSERT INTO Products (CategoryID, ProductCode, ProductName, Description, ListPrice, DateAdded)
VALUES (4, 'dgx_640', 'Yamaha DGX 640 88-Key Digital Piano', 'Long description to come.', 799.99, NOW());

-- Exercise 5 --
UPDATE Products SET DiscountPercent = 35 WHERE ProductCode = 'dgx_640';

-- Exercise 6 --
DELETE FROM Products WHERE CategoryID = 4;
DELETE FROM Categories WHERE CategoryID = 4;

-- Exercise 7 --
UPDATE Customers SET Password = 'secret' WHERE EmailAddress = 'rick@raven.com';

-- Exercise 8 --
UPDATE Customers SET Password = 'secret' WHERE EmailAddress = 'rick@raven.com';

-- Exercise 9 --
UPDATE Customers SET Password = 'reset';
