/*
--------------------------------------------------------------------
Name   : BikeStore
Version: 1.0
--------------------------------------------------------------------
*/

-- create database

DROP SCHEMA IF EXISTS bikestore;
CREATE SCHEMA bikestore;
USE bikestore;

-- create tables
CREATE TABLE Categories (
	CategoryID		INT 			NOT NULL	AUTO_INCREMENT,
	CategoryName 	VARCHAR (255) 	NOT NULL,
    PRIMARY KEY(CategoryID),
	UNIQUE(CategoryName)
);

CREATE TABLE Brands (
	BrandID 	INT  			NOT NULL	AUTO_INCREMENT,
	BrandName 	VARCHAR (255) 	NOT NULL,
    PRIMARY KEY(BrandID),
    UNIQUE(BrandName)
);

CREATE TABLE Products (
	ProductID 	INT  			NOT NULL	AUTO_INCREMENT,
	ProductName VARCHAR (255) 	NOT NULL,
	BrandID INT NOT NULL,
	CategoryID INT NOT NULL,
	ModelYear SMALLINT NOT NULL,
	ListPrice DECIMAL (10, 2) NOT NULL,
    PRIMARY KEY (ProductID),
	FOREIGN KEY (CategoryID) REFERENCES Categories (CategoryID) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (BrandID) REFERENCES Brands (BrandID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Customers (
	CustomerID 	INT  			NOT NULL	AUTO_INCREMENT,
	FirstName 	VARCHAR (255) 	NOT NULL,
	LastName 	VARCHAR (255) 	NOT NULL,
	Phone 		VARCHAR (25),
	Email 		VARCHAR (255) 	NOT NULL,
	Street 		VARCHAR (255),
	City 		VARCHAR (50),
	State 		VARCHAR (25),
	ZipCode 	VARCHAR (5),
    PRIMARY KEY(CustomerID)
);

CREATE TABLE Stores (
	StoreID 	INT  			NOT NULL	AUTO_INCREMENT,
	StoreName 	VARCHAR (255) 	NOT NULL,
	Phone 		VARCHAR (25),
	Email 		VARCHAR (255),
	Street 		VARCHAR (255),
	City 		VARCHAR (255),
	State 		VARCHAR (10),
	ZipCode 	VARCHAR (5),
    PRIMARY KEY(StoreID)
);

CREATE TABLE Staff (
	StaffID 	INT  			NOT NULL	AUTO_INCREMENT,
	FirstName 	VARCHAR (50) 	NOT NULL,
	LastName 	VARCHAR (50) 	NOT NULL,
	Email 		VARCHAR (255) 	NOT NULL,
	Phone 		VARCHAR (25),
	Active 		TINYINT 		NOT NULL,
	StoreID 	INT 			NOT NULL,
	ManagerID 	INT,
    PRIMARY KEY(StaffID),
    UNIQUE(Email),
	FOREIGN KEY (StoreID) REFERENCES Stores (StoreID) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (ManagerID) REFERENCES Staff (StaffID) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE Orders (
	OrderID		INT  			NOT NULL	AUTO_INCREMENT,
	CustomerID 	INT,
	OrderStatus TINYINT 		NOT NULL,
	-- Order status: 1 = Pending; 2 = Processing; 3 = Rejected; 4 = Completed
	OrderDate 	DATE			NOT NULL,
	RequiredDate DATE 			NOT NULL,
	ShippedDate DATE,
	StoreID 	INT 			NOT NULL,
	StaffID 	INT 			NOT NULL,
    PRIMARY KEY (OrderID),
	FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (StoreID) REFERENCES Stores (StoreID) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (StaffID) REFERENCES Staff (StaffID) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE OrderItems (
	OrderID 	INT,
	ItemID 		INT,
	ProductID 	INT 			NOT NULL,
	Quantity 	INT 			NOT NULL,
	ListPrice 	DECIMAL(10, 2) 	NOT NULL,
	Discount 	DECIMAL(4, 2) 	NOT NULL 	DEFAULT 0,
	PRIMARY KEY (OrderID, ItemID),
	FOREIGN KEY (OrderID) REFERENCES Orders (OrderID) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (ProductID) REFERENCES Products (ProductID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Stock (
	StoreID 	INT,
	ProductID 	INT,
	Quantity 	INT,
	PRIMARY KEY (StoreID, ProductID),
	FOREIGN KEY (StoreID) REFERENCES Stores (StoreID) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (ProductID) REFERENCES Products (ProductID) ON DELETE CASCADE ON UPDATE CASCADE
);








