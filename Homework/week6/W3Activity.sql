/*
	Eric Lomeli-Gil
    W7 Activity
*/

# Part 1

CREATE VIEW VWStaffSales AS
SELECT 
    s.StaffID,
    s.FirstName,
    s.LastName,
    YEAR(o.OrderDate) AS OrderYear,
    SUM(oi.Quantity * (oi.ListPrice - oi.Discount)) AS TotalSales
FROM 
    Staff s
JOIN 
    Orders o ON s.StaffID = o.StaffID
JOIN 
    OrderItems oi ON o.OrderID = oi.OrderID
GROUP BY 
    s.StaffID, s.FirstName, s.LastName, YEAR(o.OrderDate);

# Part 2

DELIMITER //

CREATE PROCEDURE SPFindAverageListPriceForCategory(
    IN categoryName VARCHAR(255),
    OUT averageListPrice DECIMAL(10, 2)
)
BEGIN
    SELECT AVG(p.ListPrice) INTO averageListPrice
    FROM Products p
    JOIN Categories c ON p.CategoryID = c.CategoryID
    WHERE c.CategoryName = categoryName;
END //

DELIMITER ;
