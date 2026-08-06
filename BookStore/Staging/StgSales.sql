CREATE TABLE dbo.StgSales
(
    OrderID INT,
    CustomerID INT,
    BookID INT,
    OrderDate DATETIME,
    Quantity INT,
    Amount DECIMAL(10,2),
    LoadDate DATETIME DEFAULT GETDATE()
);
GO