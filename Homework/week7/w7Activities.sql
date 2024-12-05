/* Eric Lomeli-Gil
Week 7 Activities
*/

/* ---- Part 1 ------------ */

# Exercise 1.1

CREATE VIEW CustomerAddresses AS
SELECT 
    c.CustomerID,
    c.EmailAddress,
    c.LastName,
    c.FirstName,
    ba.AddressLine1 AS BillLine1,
    ba.AddressLine2 AS BillLine2,
    ba.City AS BillCity,
    ba.State AS BillState,
    ba.Zip AS BillZip,
    sa.AddressLine1 AS ShipLine1,
    sa.AddressLine2 AS ShipLine2,
    sa.City AS ShipCity,
    sa.State AS ShipState,
    sa.Zip AS ShipZip
FROM 
    Customers c
JOIN 
    Addresses ba ON c.BillingAddressID = ba.AddressID
JOIN 
    Addresses sa ON c.ShippingAddressID = sa.AddressID;

# Exercise 1.2

SELECT 
    CustomerID, 
    LastName, 
    FirstName, 
    BillLine1 
FROM 
    CustomerAddresses;

# Exercise 1.3

UPDATE Addresses
SET AddressLine1 = '1990 Westwood Blvd.'
WHERE AddressID = (SELECT ShippingAddressID FROM Customers WHERE CustomerID = 8);

# Exercise 1.4
CREATE VIEW OrderItemProducts AS
SELECT 
    o.OrderID,
    o.OrderDate,
    o.TaxAmount,
    o.ShipDate,
    oi.ItemPrice,
    oi.DiscountAmount,
    (oi.ItemPrice - oi.DiscountAmount) AS FinalPrice,
    oi.Quantity,
    (oi.ItemPrice - oi.DiscountAmount) * oi.Quantity AS ItemTotal,
    p.ProductName
FROM 
    Orders o
JOIN 
    OrderItems oi ON o.OrderID = oi.OrderID
JOIN 
    Products p ON oi.ProductID = p.ProductID;

# Exercise 1.4

CREATE VIEW OrderItemProducts AS
SELECT 
    o.OrderID,
    o.OrderDate,
    o.TaxAmount,
    o.ShipDate,
    oi.ItemPrice,
    oi.DiscountAmount,
    (oi.ItemPrice - oi.DiscountAmount) AS FinalPrice,
    oi.Quantity,
    (oi.ItemPrice - oi.DiscountAmount) * oi.Quantity AS ItemTotal,
    p.ProductName
FROM 
    Orders o
JOIN 
    OrderItems oi ON o.OrderID = oi.OrderID
JOIN 
    Products p ON oi.ProductID = p.ProductID;

# Exercise 1.5

CREATE VIEW ProductSummary AS
SELECT 
    ProductName,
    COUNT(OrderID) AS OrderCount,
    SUM(ItemTotal) AS OrderTotal
FROM 
    OrderItemProducts
GROUP BY 
    ProductName;

# Exercise 1.6

SELECT 
    ProductName, 
    OrderTotal 
FROM 
    ProductSummary
ORDER BY 
    OrderTotal DESC
LIMIT 5;

/* ------- PART 2 ---------------- */

# Exercise 2.1

CREATE FUNCTION fnDiscountPrice (ItemID INT)
RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE discount_price DECIMAL(10, 2);
    SELECT (ItemPrice - DiscountAmount)
    INTO discount_price
    FROM OrderItems
    WHERE OrderItemID = ItemID;
    RETURN discount_price;
END;

# Exercise 2.2

CREATE FUNCTION fnItemTotal (ItemID INT)
RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE item_total DECIMAL(10, 2);
    SELECT fnDiscountPrice(ItemID) * Quantity
    INTO item_total
    FROM OrderItems
    WHERE OrderItemID = ItemID;
    RETURN item_total;
END;

/* PART 3 */

# Ecxercise 3.1
CREATE PROCEDURE spInsertCategory(IN CategoryName VARCHAR(255))
BEGIN
    INSERT INTO Categories (CategoryName)
    VALUES (CategoryName);
END;

# Exercise 3.2

CREATE PROCEDURE spInsertProduct(IN CategoryID INT, IN ProductCode VARCHAR(10), IN ProductName VARCHAR(255), IN ListPrice DECIMAL(10, 2), IN DiscountPercent DECIMAL(5, 2))
BEGIN
    IF ListPrice < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'ListPrice cannot be negative';
    END IF;
    IF DiscountPercent < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'DiscountPercent cannot be negative';
    END IF;

    INSERT INTO Products (CategoryID, ProductCode, ProductName, ListPrice, DiscountPercent, Description, DateAdded)
    VALUES (CategoryID, ProductCode, ProductName, ListPrice, DiscountPercent, '', CURRENT_DATE);
END;

# Exercise 3.3

CREATE PROCEDURE spUpdateProductDiscount(IN ProductID INT, IN NewDiscountPercent DECIMAL(5, 2))
BEGIN
    IF NewDiscountPercent < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'DiscountPercent must be a positive number';
    END IF;

    UPDATE Products
    SET DiscountPercent = NewDiscountPercent
    WHERE ProductID = ProductID;
END;

/* PART 4 */

# Exercise 4.1

CREATE TRIGGER Products_UPDATE
BEFORE UPDATE ON Products
FOR EACH ROW
BEGIN
    IF NEW.DiscountPercent < 0 OR NEW.DiscountPercent > 100 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'DiscountPercent must be between 0 and 100';
    ELSEIF NEW.DiscountPercent BETWEEN 0 AND 1 THEN
        SET NEW.DiscountPercent = NEW.DiscountPercent * 100;
    END IF;
END;

# Exercise 4.2

CREATE TRIGGER Products_INSERT
BEFORE INSERT ON Products
FOR EACH ROW
BEGIN
    IF NEW.DateAdded IS NULL THEN
        SET NEW.DateAdded = CURRENT_DATE;
    END IF;
END;

# Exercise 4.3

CREATE TABLE ProductsAudit (
    AuditID INT AUTO_INCREMENT PRIMARY KEY,
    /* Other columns similar to Products table, excluding Description */
    DateUpdated DATETIME
);

CREATE TRIGGER Products_UPDATE
AFTER UPDATE ON Products
FOR EACH ROW
BEGIN
    INSERT INTO ProductsAudit (/* columns */, DateUpdated)
    VALUES (OLD./* columns */, CURRENT_TIMESTAMP);
END;

